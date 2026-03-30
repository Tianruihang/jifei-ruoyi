package com.ruoyi.web.controller.api.pay;

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.domain.ChargeOnlineProduct;
import com.ruoyi.system.domain.ChargeOnlineRecord;
import com.ruoyi.system.domain.UserBalance;
import com.ruoyi.system.service.IChargeOnlineProductService;
import com.ruoyi.system.service.IChargeOnlineRecordService;
import com.ruoyi.system.service.IUserBalanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

/**
 * 用户线上支付Controller
 */
@RestController
@RequestMapping("/api/pay")
public class PayController extends BaseController {
    private static final String CHANNEL_ALIPAY = "ALIPAY";
    private static final String CHANNEL_WECHAT = "WECHAT";

    private static final String STATUS_WAIT_PAY = "WAIT_PAY";
    private static final String STATUS_SUCCESS = "SUCCESS";
    private static final String STATUS_CLOSED = "CLOSED";
    @Autowired
    private PayService payService;

    @Autowired
    private IChargeOnlineProductService chargeOnlineProductService;

    @Autowired
    private IChargeOnlineRecordService chargeOnlineRecordService;

    @Autowired
    private IUserBalanceService userBalanceService;

    @GetMapping("/products")
    public AjaxResult products() {
        ChargeOnlineProduct query = new ChargeOnlineProduct();
        query.setStatus("0");
        List<ChargeOnlineProduct> list = chargeOnlineProductService.selectChargeOnlineProductList(query);
        return success(list);
    }

    @PostMapping("/order/create")
    @Transactional(rollbackFor = Exception.class)
    public AjaxResult createOrder(@RequestBody CreateOrderReq req) throws Exception {
        Long userId = SecurityUtils.getUserId();
        if (userId == null) {
            return AjaxResult.error("用户未登录");
        }
        if (req == null || req.getProductId() == null || req.getProductId().trim().isEmpty()) {
            return AjaxResult.error("产品编码不能为空");
        }
        if (!CHANNEL_ALIPAY.equalsIgnoreCase(req.getPayChannel()) && !CHANNEL_WECHAT.equalsIgnoreCase(req.getPayChannel())) {
            return AjaxResult.error("仅支持支付宝或微信扫码");
        }

        ChargeOnlineProduct product = chargeOnlineProductService.selectChargeOnlineProductByProductId(req.getProductId());
        if (product == null || !"0".equals(product.getStatus())) {
            return AjaxResult.error("充值产品不存在或已停用");
        }

        String outTradeNo = buildOutTradeNo(userId);
        String payChannel = req.getPayChannel().toUpperCase();
        String qrCode;

        if (CHANNEL_ALIPAY.equals(payChannel)) {
            qrCode = payService.alipayScanPay(outTradeNo, product.getPrice().toPlainString(), product.getProductName(), "线上积分充值");
        } else {
            int totalFee = product.getPrice().multiply(new BigDecimal("100")).intValue();
            qrCode = payService.wechatScanPay(outTradeNo, totalFee, product.getProductName(), req.getClientIp());
        }

        ChargeOnlineRecord record = new ChargeOnlineRecord();
        record.setOutTradeNo(outTradeNo);
        record.setUserId(userId);
        record.setProductId(product.getProductId());
        record.setProductName(product.getProductName());
        record.setPayChannel(payChannel);
        record.setPayAmount(product.getPrice());
        record.setPoints(product.getPoints());
        record.setTradeStatus(STATUS_WAIT_PAY);
        record.setQrCode(qrCode);
        record.setCreateDate(new Date());
        record.setUpdateDate(new Date());
        chargeOnlineRecordService.insertChargeOnlineRecord(record);

        Map<String, Object> data = new HashMap<>();
        data.put("outTradeNo", outTradeNo);
        data.put("qrCode", qrCode);
        data.put("payChannel", payChannel);
        data.put("amount", product.getPrice());
        data.put("points", product.getPoints());
        return AjaxResult.success(data);
    }

    @GetMapping("/order/query/{outTradeNo}")
    @Transactional(rollbackFor = Exception.class)
    public AjaxResult queryOrder(@PathVariable String outTradeNo) throws Exception {
        Long userId = SecurityUtils.getUserId();
        if (userId == null) {
            return AjaxResult.error("用户未登录");
        }
        ChargeOnlineRecord record = chargeOnlineRecordService.selectChargeOnlineRecordByOutTradeNoAndUserId(outTradeNo, userId);
        if (record == null) {
            return AjaxResult.error("订单不存在");
        }

        if (STATUS_SUCCESS.equals(record.getTradeStatus())) {
            return AjaxResult.success(record);
        }

        if (CHANNEL_ALIPAY.equals(record.getPayChannel())) {
            Map<String, String> queryResult = payService.alipayQuery(outTradeNo);
            String tradeStatus = queryResult.get("tradeStatus");
            if ("TRADE_SUCCESS".equals(tradeStatus) || "TRADE_FINISHED".equals(tradeStatus)) {
                applyRechargeSuccess(record, queryResult.get("tradeNo"));
            } else if ("TRADE_CLOSED".equals(tradeStatus)) {
                markClosed(record);
            }
        } else if (CHANNEL_WECHAT.equals(record.getPayChannel())) {
            Map<String, String> queryResult = payService.wechatQuery(outTradeNo);
            String tradeState = queryResult.get("tradeState");
            if ("SUCCESS".equals(tradeState)) {
                applyRechargeSuccess(record, queryResult.get("transactionId"));
            } else if ("CLOSED".equals(tradeState) || "PAYERROR".equals(tradeState)) {
                markClosed(record);
            }
        }

        ChargeOnlineRecord latest = chargeOnlineRecordService.selectChargeOnlineRecordByOutTradeNoAndUserId(outTradeNo, userId);
        return AjaxResult.success(latest);
    }

    @GetMapping("/order/myList")
    public TableDataInfo myList(ChargeOnlineRecord query) {
        Long userId = SecurityUtils.getUserId();
        query.setUserId(userId);
        startPage();
        List<ChargeOnlineRecord> list = chargeOnlineRecordService.selectChargeOnlineRecordList(query);
        return getDataTable(list);
    }

    private void markClosed(ChargeOnlineRecord record) {
        record.setTradeStatus(STATUS_CLOSED);
        record.setUpdateDate(new Date());
        chargeOnlineRecordService.updateChargeOnlineRecord(record);
    }

    private void applyRechargeSuccess(ChargeOnlineRecord record, String thirdTradeNo) {
        if (STATUS_SUCCESS.equals(record.getTradeStatus())) {
            return;
        }
        record.setTradeStatus(STATUS_SUCCESS);
        record.setThirdTradeNo(thirdTradeNo);
        record.setPaidTime(new Date());
        record.setUpdateDate(new Date());
        chargeOnlineRecordService.updateChargeOnlineRecord(record);

        UserBalance userBalance = userBalanceService.selectUserBalanceByUserId(record.getUserId());
        if (userBalance == null) {
            UserBalance newBalance = new UserBalance();
            newBalance.setUserId(record.getUserId());
            newBalance.setBalance(record.getPoints());
            newBalance.setCreateDate(new Date());
            newBalance.setUpdateDate(new Date());
            userBalanceService.insertUserBalance(newBalance);
            return;
        }

        int row = userBalanceService.increaseUserBalance(record.getUserId(), record.getPoints());
        if (row == 0) {
            userBalance.setBalance(userBalance.getBalance() + record.getPoints());
            userBalance.setUpdateDate(new Date());
            userBalanceService.updateUserBalance(userBalance);
        }
    }

    private String buildOutTradeNo(Long userId) {
        int random = 1000 + new Random().nextInt(9000);
        return "RC" + userId + System.currentTimeMillis() + random;
    }

    public static class CreateOrderReq {
        private String productId;
        private String payChannel;
        private String clientIp;

        public String getProductId() {
            return productId;
        }

        public void setProductId(String productId) {
            this.productId = productId;
        }

        public String getPayChannel() {
            return payChannel;
        }

        public void setPayChannel(String payChannel) {
            this.payChannel = payChannel;
        }

        public String getClientIp() {
            return clientIp;
        }

        public void setClientIp(String clientIp) {
            this.clientIp = clientIp;
        }
    }
}
