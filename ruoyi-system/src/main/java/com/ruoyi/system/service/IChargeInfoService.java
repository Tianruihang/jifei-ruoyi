package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.ChargeInfo;

/**
 * 计费管理业务Service接口
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
public interface IChargeInfoService 
{
    /**
     * 查询计费管理业务
     * 
     * @param id 计费管理业务主键
     * @return 计费管理业务
     */
    public ChargeInfo selectChargeInfoById(Long id);

    /**
     * 查询计费管理业务列表
     * 
     * @param chargeInfo 计费管理业务
     * @return 计费管理业务集合
     */
    public List<ChargeInfo> selectChargeInfoList(ChargeInfo chargeInfo);

    /**
     * 新增计费管理业务
     * 
     * @param chargeInfo 计费管理业务
     * @return 结果
     */
    public int insertChargeInfo(ChargeInfo chargeInfo);

    /**
     * 修改计费管理业务
     * 
     * @param chargeInfo 计费管理业务
     * @return 结果
     */
    public int updateChargeInfo(ChargeInfo chargeInfo);

    /**
     * 批量删除计费管理业务
     * 
     * @param ids 需要删除的计费管理业务主键集合
     * @return 结果
     */
    public int deleteChargeInfoByIds(Long[] ids);

    /**
     * 删除计费管理业务信息
     * 
     * @param id 计费管理业务主键
     * @return 结果
     */
    public int deleteChargeInfoById(Long id);
}
