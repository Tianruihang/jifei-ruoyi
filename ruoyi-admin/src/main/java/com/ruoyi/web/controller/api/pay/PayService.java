package com.ruoyi.web.controller.api.pay;


import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruoyi.common.core.redis.RedisCache;
import org.springframework.web.client.RestTemplate;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/**
 * 支付服务类
 * 参考接口文档实现
 */
@Service
public class PayService {
    
    @Autowired
    private PayConfig payConfig;

    @Autowired
    private RestTemplate restTemplate;
    
    @Autowired
    private RedisCache redisCache;
    
    /**
     * 支付宝扫码支付
     * @param outTradeNo 商户订单号
     * @param totalAmount 订单金额
     * @param subject 订单标题
     * @param body 订单描述
     * @return 支付二维码
     * @throws Exception
     */
    public String alipayScanPay(String outTradeNo, String totalAmount, String subject, String body) throws Exception {
        // 构建请求参数
        Map<String, String> params = new HashMap<>();
        params.put("out_trade_no", outTradeNo);
        params.put("total_amount", totalAmount);
        params.put("subject", subject);
        params.put("body", body);
        
        // 构建请求URL
        StringBuilder urlBuilder = new StringBuilder(payConfig.getAlipay().getDomain());
        urlBuilder.append("/aliPay/tradePreCreatePay");
        
        // 添加请求参数
        boolean firstParam = true;
        for (Map.Entry<String, String> entry : params.entrySet()) {
            if (firstParam) {
                urlBuilder.append("?");
                firstParam = false;
            } else {
                urlBuilder.append("&");
            }
            urlBuilder.append(entry.getKey()).append("=").append(java.net.URLEncoder.encode(entry.getValue(), "UTF-8"));
        }
        
        // 调用接口
        String url = urlBuilder.toString();
        String response = restTemplate.getForObject(url, String.class);
        
        // 解析响应
        JSONObject jsonObject = JSON.parseObject(response);
        if (jsonObject.getInteger("code") == 0) {
            // 缓存支付二维码到Redis
            String cacheKey = "pay:alipay:scan:" + outTradeNo;
            redisCache.setCacheObject(cacheKey, jsonObject.getString("data"), 30, TimeUnit.MINUTES);
            return jsonObject.getString("data");
        } else {
            throw new Exception(jsonObject.getString("message"));
        }
    }
    
    /**
     * 支付宝H5支付
     * @param outTradeNo 商户订单号
     * @param totalAmount 订单金额
     * @param subject 订单标题
     * @param body 订单描述
     * @param response HttpServletResponse
     * @throws Exception
     */
    public void alipayH5Pay(String outTradeNo, String totalAmount, String subject, String body, HttpServletResponse response) throws Exception {
        // 构建请求参数
        Map<String, String> params = new HashMap<>();
        params.put("out_trade_no", outTradeNo);
        params.put("total_amount", totalAmount);
        params.put("subject", subject);
        params.put("body", body);
        
        // 构建请求URL
        StringBuilder urlBuilder = new StringBuilder(payConfig.getAlipay().getDomain());
        urlBuilder.append("/aliPay/tradeWapPay");
        
        // 添加请求参数
        boolean firstParam = true;
        for (Map.Entry<String, String> entry : params.entrySet()) {
            if (firstParam) {
                urlBuilder.append("?");
                firstParam = false;
            } else {
                urlBuilder.append("&");
            }
            urlBuilder.append(entry.getKey()).append("=").append(java.net.URLEncoder.encode(entry.getValue(), "UTF-8"));
        }
        
        // 重定向到支付页面
        response.sendRedirect(urlBuilder.toString());
    }
    
    /**
     * 微信扫码支付
     * @param outTradeNo 商户订单号
     * @param totalFee 订单金额（分）
     * @param body 订单描述
     * @param spbillCreateIp 终端IP
     * @return 支付二维码
     * @throws Exception
     */
    public String wechatScanPay(String outTradeNo, int totalFee, String body, String spbillCreateIp) throws Exception {
        // 构建请求参数
        Map<String, String> params = new HashMap<>();
        params.put("out_trade_no", outTradeNo);
        params.put("total", String.valueOf(totalFee));
        params.put("description", body);
        params.put("attach", "支付测试");
        
        // 构建请求URL
        StringBuilder urlBuilder = new StringBuilder(payConfig.getWechat().getDomain());
        urlBuilder.append("/v3/nativePay");
        
        // 添加请求参数
        boolean firstParam = true;
        for (Map.Entry<String, String> entry : params.entrySet()) {
            if (firstParam) {
                urlBuilder.append("?");
                firstParam = false;
            } else {
                urlBuilder.append("&");
            }
            urlBuilder.append(entry.getKey()).append("=").append(java.net.URLEncoder.encode(entry.getValue(), "UTF-8"));
        }
        
        // 调用接口
        String url = urlBuilder.toString();
        String response = restTemplate.getForObject(url, String.class);
        
        // 解析响应
        JSONObject jsonObject = JSON.parseObject(response);
        if (jsonObject.getInteger("code") == 0) {
            // 缓存支付二维码到Redis
            String cacheKey = "pay:wechat:scan:" + outTradeNo;
            redisCache.setCacheObject(cacheKey, jsonObject.getString("data"), 30, TimeUnit.MINUTES);
            return jsonObject.getString("data");
        } else {
            throw new Exception(jsonObject.getString("message"));
        }
    }
    
    /**
     * 微信H5支付
     * @param outTradeNo 商户订单号
     * @param totalFee 订单金额（分）
     * @param body 订单描述
     * @param spbillCreateIp 终端IP
     * @param sceneInfo 场景信息
     * @return 支付链接
     * @throws Exception
     */
    public String wechatH5Pay(String outTradeNo, int totalFee, String body, String spbillCreateIp, String sceneInfo) throws Exception {
        // 构建请求参数
        Map<String, String> params = new HashMap<>();
        params.put("out_trade_no", outTradeNo);
        params.put("total", String.valueOf(totalFee));
        params.put("description", body);
        params.put("scene_info", sceneInfo);
        
        // 构建请求URL
        StringBuilder urlBuilder = new StringBuilder(payConfig.getWechat().getDomain());
        urlBuilder.append("/v3/h5Pay");
        
        // 添加请求参数
        boolean firstParam = true;
        for (Map.Entry<String, String> entry : params.entrySet()) {
            if (firstParam) {
                urlBuilder.append("?");
                firstParam = false;
            } else {
                urlBuilder.append("&");
            }
            urlBuilder.append(entry.getKey()).append("=").append(java.net.URLEncoder.encode(entry.getValue(), "UTF-8"));
        }
        
        // 调用接口
        String url = urlBuilder.toString();
        String response = restTemplate.getForObject(url, String.class);
        
        // 解析响应
        JSONObject jsonObject = JSON.parseObject(response);
        if (jsonObject.getInteger("code") == 0) {
            // 缓存支付链接到Redis
            String cacheKey = "pay:wechat:h5:" + outTradeNo;
            redisCache.setCacheObject(cacheKey, jsonObject.getString("data"), 30, TimeUnit.MINUTES);
            return jsonObject.getString("data");
        } else {
            throw new Exception(jsonObject.getString("message"));
        }
    }
    
    /**
     * 支付宝查询支付结果
     * @param outTradeNo 商户订单号
     * @return 支付结果
     * @throws Exception
     */
    public Map<String, String> alipayQuery(String outTradeNo) throws Exception {
        // 构建请求URL
        String url = payConfig.getAlipay().getDomain() + "/aliPay/tradeQuery?outTradeNo=" + java.net.URLEncoder.encode(outTradeNo, "UTF-8");
        
        // 调用接口
        String response = restTemplate.getForObject(url, String.class);
        
        // 解析响应
        JSONObject jsonObject = JSON.parseObject(response);
        Map<String, String> result = new HashMap<>();
        
        if (jsonObject.containsKey("alipay_trade_query_response")) {
            JSONObject responseObj = jsonObject.getJSONObject("alipay_trade_query_response");
            if ("10000".equals(responseObj.getString("code"))) {
                result.put("tradeStatus", responseObj.getString("trade_status"));
                result.put("outTradeNo", responseObj.getString("out_trade_no"));
                result.put("tradeNo", responseObj.getString("trade_no"));
                result.put("totalAmount", responseObj.getString("total_amount"));
                result.put("buyerId", responseObj.getString("buyer_user_id"));
                
                // 缓存支付查询结果到Redis
                String cacheKey = "pay:alipay:query:" + outTradeNo;
                redisCache.setCacheObject(cacheKey, result, 10, TimeUnit.MINUTES);
            } else {
                result.put("error", responseObj.getString("msg"));
            }
        } else {
            result.put("error", "Invalid response format");
        }
        
        return result;
    }
    
    /**
     * 微信查询支付结果
     * @param outTradeNo 商户订单号
     * @return 支付结果
     * @throws Exception
     */
    public Map<String, String> wechatQuery(String outTradeNo) throws Exception {
        // 构建请求URL
        String url = payConfig.getWechat().getDomain() + "/v3/query?outTradeNo=" + java.net.URLEncoder.encode(outTradeNo, "UTF-8");
        
        // 调用接口
        String response = restTemplate.getForObject(url, String.class);
        
        // 解析响应
        JSONObject jsonObject = JSON.parseObject(response);
        Map<String, String> result = new HashMap<>();
        
        if (jsonObject.containsKey("transaction")) {
            JSONObject transactionObj = jsonObject.getJSONObject("transaction");
            result.put("tradeState", transactionObj.getString("trade_state"));
            result.put("outTradeNo", transactionObj.getString("out_trade_no"));
            result.put("transactionId", transactionObj.getString("transaction_id"));
            result.put("totalFee", String.valueOf(transactionObj.getJSONObject("amount").getInteger("total")));
            result.put("timeEnd", transactionObj.getString("success_time"));
            
            // 缓存支付查询结果到Redis
            String cacheKey = "pay:wechat:query:" + outTradeNo;
            redisCache.setCacheObject(cacheKey, result, 10, TimeUnit.MINUTES);
        } else {
            result.put("error", "Invalid response format");
        }
        
        return result;
    }
    
    /**
     * 支付宝异步通知处理
     * @param request HttpServletRequest
     * @return 处理结果
     * @throws Exception
     */
    public boolean alipayNotify(HttpServletRequest request) throws Exception {
        // 构建请求参数
        Map<String, String> params = new HashMap<>();
        Map<String, String[]> requestParams = request.getParameterMap();
        
        for (String name : requestParams.keySet()) {
            String[] values = requestParams.get(name);
            String valueStr = "";
            
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
            }
            
            params.put(name, valueStr);
        }
        
        // 构建请求URL
        String url = payConfig.getAlipay().getDomain() + "/aliPay/notify"; 
        
        // 调用接口
        String response = restTemplate.postForObject(url, params, String.class);
        
        // 解析响应
        JSONObject jsonObject = JSON.parseObject(response);
        boolean success = jsonObject.getBoolean("success");
        
        // 缓存异步通知处理结果到Redis
        if (params.containsKey("out_trade_no")) {
            String outTradeNo = params.get("out_trade_no");
            String cacheKey = "pay:alipay:notify:" + outTradeNo;
            redisCache.setCacheObject(cacheKey, success, 60, TimeUnit.MINUTES);
        }
        
        return success;
    }
    
    /**
     * 微信支付异步通知处理
     * @param request HttpServletRequest
     * @return 处理结果
     * @throws Exception
     */
    public boolean wechatNotify(HttpServletRequest request) throws Exception {
        // 读取请求体
        StringBuilder sb = new StringBuilder();
        String line;
        java.io.BufferedReader reader = request.getReader();
        while ((line = reader.readLine()) != null) {
            sb.append(line);
        }
        String xmlMsg = sb.toString();
        
        // 构建请求参数
        Map<String, String> params = new HashMap<>();
        params.put("xml", xmlMsg);
        
        // 构建请求URL
        String url = payConfig.getWechat().getDomain() + "/v3/payNotify"; 
        
        // 调用接口
        String response = restTemplate.postForObject(url, params, String.class);
        
        // 解析响应
        JSONObject jsonObject = JSON.parseObject(response);
        boolean success = jsonObject.getBoolean("success");
        
        // 缓存异步通知处理结果到Redis
        // 从xmlMsg中提取out_trade_no
        String outTradeNo = "";
        if (xmlMsg.contains("out_trade_no")) {
            int start = xmlMsg.indexOf("<out_trade_no>") + 14;
            int end = xmlMsg.indexOf("</out_trade_no>");
            if (start < end) {
                outTradeNo = xmlMsg.substring(start, end);
            }
        }
        
        if (!outTradeNo.isEmpty()) {
            String cacheKey = "pay:wechat:notify:" + outTradeNo;
            redisCache.setCacheObject(cacheKey, success, 60, TimeUnit.MINUTES);
        }
        
        return success;
    }
}