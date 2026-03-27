package com.ruoyi.web.controller.system;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.domain.ChargeExchange;
import com.ruoyi.system.domain.UserBalance;
import com.ruoyi.system.service.IChargeExchangeService;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.system.service.IUserBalanceService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.ChargeOfflineRecord;
import com.ruoyi.system.service.IChargeOfflineRecordService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 线下用户充值记录Controller
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
@RestController
@RequestMapping("/system/record")
public class ChargeOfflineRecordController extends BaseController
{
    @Autowired
    private IChargeOfflineRecordService chargeOfflineRecordService;
    @Autowired
    private IUserBalanceService userBalanceService;
    @Autowired
    private IChargeExchangeService chargeExchangeService;
    @Autowired
    private ISysUserService sysUserService;
    /**
     * 查询线下用户充值记录列表
     */
    @GetMapping("/list")
    public TableDataInfo list(ChargeOfflineRecord chargeOfflineRecord)
    {
        //判断如果不是管理员，则只能查询自己的数据
        if (!SecurityUtils.isAdmin(SecurityUtils.getUserId())) {
            SysUser sysUser = sysUserService.selectUserById(SecurityUtils.getUserId());
            chargeOfflineRecord.setUserName(sysUser.getUserName());
        }
        startPage();
        List<ChargeOfflineRecord> list = chargeOfflineRecordService.selectChargeOfflineRecordList(chargeOfflineRecord);
        return getDataTable(list);
    }

    /**
     * 导出线下用户充值记录列表
     */
    @Log(title = "线下用户充值记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ChargeOfflineRecord chargeOfflineRecord)
    {
        List<ChargeOfflineRecord> list = chargeOfflineRecordService.selectChargeOfflineRecordList(chargeOfflineRecord);
        ExcelUtil<ChargeOfflineRecord> util = new ExcelUtil<ChargeOfflineRecord>(ChargeOfflineRecord.class);
        util.exportExcel(response, list, "线下用户充值记录数据");
    }

    /**
     * 获取线下用户充值记录详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(chargeOfflineRecordService.selectChargeOfflineRecordById(id));
    }

    /**
     * 新增线下用户充值记录
     */
    @PreAuthorize("@ss.hasPermi('system:record:add')")
    @Log(title = "线下用户充值记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ChargeOfflineRecord chargeOfflineRecord)
    {
        SysUser sysUser = sysUserService.selectUserByUserName(chargeOfflineRecord.getUserName());
        if (sysUser == null) {
            return AjaxResult.error("用户不存在");
        }
        //遍历用户余额列表，根据ChargeExchange表中的兑换比例计算余额
        ChargeExchange chargeExchange = chargeExchangeService.selectChargeExchangeById(1L);
        if (chargeExchange == null)
        {
            return AjaxResult.error("兑换比例不存在,请先配置兑换比例");
        }
        chargeOfflineRecord.setUserId(sysUser.getUserId());
        int row = chargeOfflineRecordService.insertChargeOfflineRecord(chargeOfflineRecord);
        if (row > 0) {
            //增加用户余额
            UserBalance userBalance = userBalanceService.selectUserBalanceByUserId(chargeOfflineRecord.getUserId());
            if (userBalance == null) {
                return AjaxResult.error("用户不存在");
            }
            userBalance.setBalance(userBalance.getBalance() + (chargeOfflineRecord.getAmount() * chargeExchange.getLimitAmount()));
            userBalanceService.updateUserBalance(userBalance);
        }
        return toAjax(row);
    }

    /**
     * 修改线下用户充值记录
     */
    @PreAuthorize("@ss.hasPermi('system:record:edit')")
    @Log(title = "线下用户充值记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ChargeOfflineRecord chargeOfflineRecord)
    {
        return toAjax(chargeOfflineRecordService.updateChargeOfflineRecord(chargeOfflineRecord));
    }

    /**
     * 删除线下用户充值记录
     */
    @PreAuthorize("@ss.hasPermi('system:record:remove')")
    @Log(title = "线下用户充值记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(chargeOfflineRecordService.deleteChargeOfflineRecordByIds(ids));
    }
}
