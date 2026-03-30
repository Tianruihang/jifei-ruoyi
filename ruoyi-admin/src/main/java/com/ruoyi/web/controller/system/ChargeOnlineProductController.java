package com.ruoyi.web.controller.system;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.ChargeOnlineProduct;
import com.ruoyi.system.service.IChargeOnlineProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 线上充值产品配置Controller
 */
@RestController
@RequestMapping("/system/onlineProduct")
public class ChargeOnlineProductController extends BaseController {
    @Autowired
    private IChargeOnlineProductService chargeOnlineProductService;

    @PreAuthorize("@ss.hasPermi('system:onlineProduct:list')")
    @GetMapping("/list")
    public TableDataInfo list(ChargeOnlineProduct chargeOnlineProduct) {
        startPage();
        List<ChargeOnlineProduct> list = chargeOnlineProductService.selectChargeOnlineProductList(chargeOnlineProduct);
        return getDataTable(list);
    }

    @PreAuthorize("@ss.hasPermi('system:onlineProduct:export')")
    @Log(title = "线上充值产品配置", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ChargeOnlineProduct chargeOnlineProduct) {
        List<ChargeOnlineProduct> list = chargeOnlineProductService.selectChargeOnlineProductList(chargeOnlineProduct);
        ExcelUtil<ChargeOnlineProduct> util = new ExcelUtil<>(ChargeOnlineProduct.class);
        util.exportExcel(response, list, "线上充值产品配置数据");
    }

    @PreAuthorize("@ss.hasPermi('system:onlineProduct:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(chargeOnlineProductService.selectChargeOnlineProductById(id));
    }

    @PreAuthorize("@ss.hasPermi('system:onlineProduct:add')")
    @Log(title = "线上充值产品配置", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ChargeOnlineProduct chargeOnlineProduct) {
        ChargeOnlineProduct exists = chargeOnlineProductService.selectChargeOnlineProductByProductId(chargeOnlineProduct.getProductId());
        if (exists != null) {
            return AjaxResult.error("产品编码已存在");
        }
        return toAjax(chargeOnlineProductService.insertChargeOnlineProduct(chargeOnlineProduct));
    }

    @PreAuthorize("@ss.hasPermi('system:onlineProduct:edit')")
    @Log(title = "线上充值产品配置", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ChargeOnlineProduct chargeOnlineProduct) {
        ChargeOnlineProduct exists = chargeOnlineProductService.selectChargeOnlineProductByProductId(chargeOnlineProduct.getProductId());
        if (exists != null && !exists.getId().equals(chargeOnlineProduct.getId())) {
            return AjaxResult.error("产品编码已存在");
        }
        return toAjax(chargeOnlineProductService.updateChargeOnlineProduct(chargeOnlineProduct));
    }

    @PreAuthorize("@ss.hasPermi('system:onlineProduct:remove')")
    @Log(title = "线上充值产品配置", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(chargeOnlineProductService.deleteChargeOnlineProductByIds(ids));
    }
}
