package com.ruoyi.web.controller.system;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.domain.ChargeInfo;
import com.ruoyi.system.domain.ChargeRule;
import com.ruoyi.system.domain.UserBalance;
import com.ruoyi.system.service.*;
import lombok.extern.slf4j.Slf4j;
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
import com.ruoyi.system.domain.ChargeApiHistory;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 计费接口记录Controller
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
@Slf4j
@RestController
@RequestMapping("/system/history")
public class ChargeApiHistoryController extends BaseController
{
    @Autowired
    private IChargeApiHistoryService chargeApiHistoryService;
    @Autowired
    private IUserBalanceService userBalanceService;
    @Autowired
    private IChargeRuleService chargeRuleService;
    @Autowired
    private IChargeInfoService chargeInfoService;
    @Autowired
    private ISysUserService sysUserService;
    /**
     * 查询计费接口记录列表
     */
    @GetMapping("/list")
    public TableDataInfo list(ChargeApiHistory chargeApiHistory)
    {
        //判断如果不是管理员，则只能查询自己的数据
        if (!SecurityUtils.isAdmin(SecurityUtils.getUserId())) {
            chargeApiHistory.setUserId(SecurityUtils.getUserId());
        }
        startPage();
        List<ChargeApiHistory> list = chargeApiHistoryService.selectChargeApiHistoryList(chargeApiHistory);
        return getDataTable(list);
    }

    /**
     * 导出计费接口记录列表
     */
    @PreAuthorize("@ss.hasPermi('system:history:export')")
    @Log(title = "计费接口记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ChargeApiHistory chargeApiHistory)
    {
        List<ChargeApiHistory> list = chargeApiHistoryService.selectChargeApiHistoryList(chargeApiHistory);
        ExcelUtil<ChargeApiHistory> util = new ExcelUtil<ChargeApiHistory>(ChargeApiHistory.class);
        util.exportExcel(response, list, "计费接口记录数据");
    }

    /**
     * 获取计费接口记录详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(chargeApiHistoryService.selectChargeApiHistoryById(id));
    }

    /**
     * 新增计费接口记录
     */
    @PreAuthorize("@ss.hasPermi('system:history:add')")
    @Log(title = "计费接口记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ChargeApiHistory chargeApiHistory)
    {
        Map  result = new HashMap();
        //根据userName查询用户ID
//        String userName = chargeApiHistory.getUserId();
        SysUser  sysUser = sysUserService.selectUserById(chargeApiHistory.getUserId());
        if (sysUser == null) {
            result.put("status",false);
            result.put("msg","用户不存在");
            return AjaxResult.success(result);
        }
        chargeApiHistory.setUserId(sysUser.getUserId());
        int row = 0;
        chargeApiHistory.setCreateDate(new Date());
        chargeApiHistory.setUpdateDate(new Date());
        // 扣除用户余额
        //根据用户ID查询用户余额
        //获取token中的用户ID
        UserBalance userBalance = userBalanceService.selectUserBalanceByUserId(chargeApiHistory.getUserId());
        //根据产品ID查询产品规则
        ChargeRule chargeRule = chargeRuleService.selectChargeRuleById(chargeApiHistory.getProjectId());
        if (userBalance == null) {
            result.put("status",false);
            result.put("msg","用户余额不足");
            return AjaxResult.success(result);
        }
        if (userBalance.getBalance() < chargeRule.getLimitAmount()) {
            result.put("status",false);
            result.put("msg","用户余额不足");
            return AjaxResult.success(result);
        }
        if (chargeRule == null) {
            result.put("status",false);
            result.put("msg","未配置产品规则");
            return AjaxResult.success(result);
        }
        //新增ChargeInfo信息
        ChargeInfo chargeInfo = new ChargeInfo();
        chargeInfo.setUserId(chargeApiHistory.getUserId());
        chargeInfo.setProjectId(chargeApiHistory.getProjectId());
        chargeInfo.setLimitAmount(chargeRule.getLimitAmount());
        chargeInfo.setCreateDate(new Date());
        chargeInfo.setProjectName(chargeRule.getProjectName());
        chargeInfo.setUpdateDate(new Date());
        //扣除用户余额
        userBalance.setUpdateDate(new Date());
        userBalance.setBalance(userBalance.getBalance() - chargeRule.getLimitAmount());
        //更新用户余额
        try {
            userBalanceService.updateUserBalance(userBalance);
            //新增ChargeInfo信息
            chargeInfoService.insertChargeInfo(chargeInfo);
            chargeApiHistory.setProjectName(chargeRule.getProjectName());
            row   = chargeApiHistoryService.insertChargeApiHistory(chargeApiHistory);
        } catch (Exception e) {
            log.error("扣除用户余额失败 userId {}", SecurityUtils.getUserId() );
            result.put("status",false);
            result.put("msg","扣除用户余额失败");
            return AjaxResult.success(result);
        }
        if (row >0 ) {{
            result.put("status",true);}
            result.put("msg","操作成功");
        }else {
            result.put("status",false);
            result.put("msg","操作失败");
        }
        return AjaxResult.success(result);
    }

    /**
     * 修改计费接口记录
     */
    @PreAuthorize("@ss.hasPermi('system:history:edit')")
    @Log(title = "计费接口记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ChargeApiHistory chargeApiHistory)
    {
        return toAjax(chargeApiHistoryService.updateChargeApiHistory(chargeApiHistory));
    }

    /**
     * 删除计费接口记录
     */
    @PreAuthorize("@ss.hasPermi('system:history:remove')")
    @Log(title = "计费接口记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(chargeApiHistoryService.deleteChargeApiHistoryByIds(ids));
    }
}
