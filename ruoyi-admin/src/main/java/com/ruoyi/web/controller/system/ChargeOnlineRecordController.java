package com.ruoyi.web.controller.system;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.ChargeOnlineRecord;
import com.ruoyi.system.service.IChargeOnlineRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 线上充值记录Controller
 */
@RestController
@RequestMapping("/system/onlineRecord")
public class ChargeOnlineRecordController extends BaseController {
    @Autowired
    private IChargeOnlineRecordService chargeOnlineRecordService;

    @PreAuthorize("@ss.hasPermi('system:onlineRecord:list')")
    @GetMapping("/list")
    public TableDataInfo list(ChargeOnlineRecord chargeOnlineRecord) {
        startPage();
        List<ChargeOnlineRecord> list = chargeOnlineRecordService.selectChargeOnlineRecordList(chargeOnlineRecord);
        return getDataTable(list);
    }

    @PreAuthorize("@ss.hasPermi('system:onlineRecord:export')")
    @Log(title = "线上充值记录", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ChargeOnlineRecord chargeOnlineRecord) {
        List<ChargeOnlineRecord> list = chargeOnlineRecordService.selectChargeOnlineRecordList(chargeOnlineRecord);
        ExcelUtil<ChargeOnlineRecord> util = new ExcelUtil<>(ChargeOnlineRecord.class);
        util.exportExcel(response, list, "线上充值记录数据");
    }

    @PreAuthorize("@ss.hasPermi('system:onlineRecord:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(chargeOnlineRecordService.selectChargeOnlineRecordById(id));
    }
}
