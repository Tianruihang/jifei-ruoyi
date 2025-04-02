package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.ChargeInfo;

/**
 * 计费管理业务Mapper接口
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
public interface ChargeInfoMapper 
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
     * 删除计费管理业务
     * 
     * @param id 计费管理业务主键
     * @return 结果
     */
    public int deleteChargeInfoById(Long id);

    /**
     * 批量删除计费管理业务
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteChargeInfoByIds(Long[] ids);
}
