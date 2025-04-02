package com.ruoyi.web.controller.system;
import java.math.BigDecimal;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.system.domain.ChargeExchange;
import com.ruoyi.system.service.IChargeExchangeService;
import com.ruoyi.system.service.ISysUserService;
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
import com.ruoyi.system.domain.UserBalance;
import com.ruoyi.system.service.IUserBalanceService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 用户余额Controller
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
@RestController
@RequestMapping("/system/balance")
public class UserBalanceController extends BaseController
{
    @Autowired
    private IUserBalanceService userBalanceService;
    @Autowired
    private ISysUserService sysUserService;
    @Autowired
    private IChargeExchangeService chargeExchangeService;
    /**
     * 查询用户余额列表
     */
    @PreAuthorize("@ss.hasPermi('system:balance:list')")
    @GetMapping("/list")
    public TableDataInfo list(UserBalance userBalance)
    {
        startPage();
        List<UserBalance> list = userBalanceService.selectUserBalanceList(userBalance);
        //遍历用户余额列表，根据ChargeExchange表中的兑换比例计算余额
        ChargeExchange chargeExchange = chargeExchangeService.selectChargeExchangeById(1L);
        for (UserBalance balance : list) {
            if (chargeExchange != null) {
                // 计算余额
                BigDecimal balanceB = new BigDecimal(balance.getBalance());
                BigDecimal balanceAmount =balanceB.divide(new BigDecimal(chargeExchange.getLimitAmount()), 2, BigDecimal.ROUND_HALF_UP);
                balance.setAmount(balanceAmount);
            }
        }
        return getDataTable(list);
    }

    /**
     * 导出用户余额列表
     */
    @PreAuthorize("@ss.hasPermi('system:balance:export')")
    @Log(title = "用户余额", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, UserBalance userBalance)
    {
        List<UserBalance> list = userBalanceService.selectUserBalanceList(userBalance);
        ExcelUtil<UserBalance> util = new ExcelUtil<UserBalance>(UserBalance.class);
        util.exportExcel(response, list, "用户余额数据");
    }

    /**
     * 获取用户余额详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:balance:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(userBalanceService.selectUserBalanceById(id));
    }

    /**
     * 新增用户余额
     */
    @PreAuthorize("@ss.hasPermi('system:balance:add')")
    @Log(title = "用户余额", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody UserBalance userBalance)
    {
        SysUser sysUser = sysUserService.selectUserByUserName(userBalance.getUserName());
        if (sysUser == null) {
            return AjaxResult.error("用户不存在");
        }
        return toAjax(userBalanceService.insertUserBalance(userBalance));
    }

    /**
     * 修改用户余额
     */
    @PreAuthorize("@ss.hasPermi('system:balance:edit')")
    @Log(title = "用户余额", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody UserBalance userBalance)
    {
        return toAjax(userBalanceService.updateUserBalance(userBalance));
    }

    /**
     * 删除用户余额
     */
    @PreAuthorize("@ss.hasPermi('system:balance:remove')")
    @Log(title = "用户余额", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(userBalanceService.deleteUserBalanceByIds(ids));
    }
}
