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
import com.ruoyi.system.domain.ChargeExchange;
import com.ruoyi.system.service.IChargeExchangeService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 积分与余额兑换公式Controller
 * 
 * @author ruoyi
 * @date 2025-04-02
 */
@RestController
@RequestMapping("/system/exchange")
public class ChargeExchangeController extends BaseController
{
    @Autowired
    private IChargeExchangeService chargeExchangeService;

    /**
     * 查询积分与余额兑换公式列表
     */
    @PreAuthorize("@ss.hasPermi('system:exchange:list')")
    @GetMapping("/list")
    public TableDataInfo list(ChargeExchange chargeExchange)
    {
        startPage();
        List<ChargeExchange> list = chargeExchangeService.selectChargeExchangeList(chargeExchange);
        return getDataTable(list);
    }

    /**
     * 导出积分与余额兑换公式列表
     */
    @PreAuthorize("@ss.hasPermi('system:exchange:export')")
    @Log(title = "积分与余额兑换公式", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ChargeExchange chargeExchange)
    {
        List<ChargeExchange> list = chargeExchangeService.selectChargeExchangeList(chargeExchange);
        ExcelUtil<ChargeExchange> util = new ExcelUtil<ChargeExchange>(ChargeExchange.class);
        util.exportExcel(response, list, "积分与余额兑换公式数据");
    }

    /**
     * 获取积分与余额兑换公式详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:exchange:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(chargeExchangeService.selectChargeExchangeById(id));
    }

    /**
     * 新增积分与余额兑换公式
     */
    @PreAuthorize("@ss.hasPermi('system:exchange:add')")
    @Log(title = "积分与余额兑换公式", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ChargeExchange chargeExchange)
    {
        return toAjax(chargeExchangeService.insertChargeExchange(chargeExchange));
    }

    /**
     * 修改积分与余额兑换公式
     */
    @PreAuthorize("@ss.hasPermi('system:exchange:edit')")
    @Log(title = "积分与余额兑换公式", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ChargeExchange chargeExchange)
    {
        return toAjax(chargeExchangeService.updateChargeExchange(chargeExchange));
    }

    /**
     * 删除积分与余额兑换公式
     */
    @PreAuthorize("@ss.hasPermi('system:exchange:remove')")
    @Log(title = "积分与余额兑换公式", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(chargeExchangeService.deleteChargeExchangeByIds(ids));
    }
}
