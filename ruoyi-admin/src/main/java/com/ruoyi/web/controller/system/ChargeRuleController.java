package com.ruoyi.web.controller.system;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
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
import com.ruoyi.system.domain.ChargeRule;
import com.ruoyi.system.service.IChargeRuleService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 积分消费规则Controller
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
@RestController
@RequestMapping("/system/rule")
public class ChargeRuleController extends BaseController
{
    @Autowired
    private IChargeRuleService chargeRuleService;

    /**
     * 查询积分消费规则列表
     */
    @PreAuthorize("@ss.hasPermi('system:rule:list')")
    @GetMapping("/list")
    public TableDataInfo list(ChargeRule chargeRule)
    {
        startPage();
        List<ChargeRule> list = chargeRuleService.selectChargeRuleList(chargeRule);
        return getDataTable(list);
    }

    /**
     * 导出积分消费规则列表
     */
    @PreAuthorize("@ss.hasPermi('system:rule:export')")
    @Log(title = "积分消费规则", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ChargeRule chargeRule)
    {
        List<ChargeRule> list = chargeRuleService.selectChargeRuleList(chargeRule);
        ExcelUtil<ChargeRule> util = new ExcelUtil<ChargeRule>(ChargeRule.class);
        util.exportExcel(response, list, "积分消费规则数据");
    }

    /**
     * 获取积分消费规则详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:rule:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(chargeRuleService.selectChargeRuleById(id));
    }

    /**
     * 新增积分消费规则
     */
    @PreAuthorize("@ss.hasPermi('system:rule:add')")
    @Log(title = "积分消费规则", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ChargeRule chargeRule)
    {
        return toAjax(chargeRuleService.insertChargeRule(chargeRule));
    }

    /**
     * 修改积分消费规则
     */
    @PreAuthorize("@ss.hasPermi('system:rule:edit')")
    @Log(title = "积分消费规则", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ChargeRule chargeRule)
    {
        return toAjax(chargeRuleService.updateChargeRule(chargeRule));
    }

    /**
     * 删除积分消费规则
     */
    @PreAuthorize("@ss.hasPermi('system:rule:remove')")
    @Log(title = "积分消费规则", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(chargeRuleService.deleteChargeRuleByIds(ids));
    }
}
