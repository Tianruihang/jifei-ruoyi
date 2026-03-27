package com.ruoyi.web.controller.system;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.utils.SecurityUtils;
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
import com.ruoyi.system.domain.ChargeInfo;
import com.ruoyi.system.service.IChargeInfoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 计费管理业务Controller
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
@RestController
@RequestMapping("/system/info")
public class ChargeInfoController extends BaseController
{
    @Autowired
    private IChargeInfoService chargeInfoService;
    @Autowired
    private ISysUserService sysUserService;

    /**
     * 查询计费管理业务列表
     */
    @GetMapping("/list")
    public TableDataInfo list(ChargeInfo chargeInfo)
    {
        //判断如果不是管理员，则只能查询自己的数据
        if (!SecurityUtils.isAdmin(SecurityUtils.getUserId())) {
            SysUser sysUser = sysUserService.selectUserById(SecurityUtils.getUserId());
            chargeInfo.setUserName(sysUser.getUserName());
        }
        startPage();
        List<ChargeInfo> list = chargeInfoService.selectChargeInfoList(chargeInfo);
        return getDataTable(list);
    }

    /**
     * 导出计费管理业务列表
     */
    @Log(title = "计费管理业务", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ChargeInfo chargeInfo)
    {
        //判断如果不是管理员，则只能查询自己的数据
        if (!SecurityUtils.isAdmin(SecurityUtils.getUserId())) {
            SysUser sysUser = sysUserService.selectUserById(SecurityUtils.getUserId());
            chargeInfo.setUserName(sysUser.getUserName());
        }
        List<ChargeInfo> list = chargeInfoService.selectChargeInfoList(chargeInfo);
        ExcelUtil<ChargeInfo> util = new ExcelUtil<ChargeInfo>(ChargeInfo.class);
        util.exportExcel(response, list, "计费管理业务数据");
    }

    /**
     * 获取计费管理业务详细信息
     */
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(chargeInfoService.selectChargeInfoById(id));
    }

    /**
     * 新增计费管理业务
     */
    @PreAuthorize("@ss.hasPermi('system:info:add')")
    @Log(title = "计费管理业务", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ChargeInfo chargeInfo)
    {
        SysUser sysUser = sysUserService.selectUserByUserName(chargeInfo.getUserName());
        if (sysUser == null) {
            return AjaxResult.error("用户不存在");
        }
        return toAjax(chargeInfoService.insertChargeInfo(chargeInfo));
    }

    /**
     * 修改计费管理业务
     */
    @PreAuthorize("@ss.hasPermi('system:info:edit')")
    @Log(title = "计费管理业务", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ChargeInfo chargeInfo)
    {
        return toAjax(chargeInfoService.updateChargeInfo(chargeInfo));
    }

    /**
     * 删除计费管理业务
     */
    @PreAuthorize("@ss.hasPermi('system:info:remove')")
    @Log(title = "计费管理业务", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(chargeInfoService.deleteChargeInfoByIds(ids));
    }
}
