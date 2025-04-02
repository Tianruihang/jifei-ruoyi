package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.ChargeOfflineRecord;

/**
 * 线下用户充值记录Mapper接口
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
public interface ChargeOfflineRecordMapper 
{
    /**
     * 查询线下用户充值记录
     * 
     * @param id 线下用户充值记录主键
     * @return 线下用户充值记录
     */
    public ChargeOfflineRecord selectChargeOfflineRecordById(Long id);

    /**
     * 查询线下用户充值记录列表
     * 
     * @param chargeOfflineRecord 线下用户充值记录
     * @return 线下用户充值记录集合
     */
    public List<ChargeOfflineRecord> selectChargeOfflineRecordList(ChargeOfflineRecord chargeOfflineRecord);

    /**
     * 新增线下用户充值记录
     * 
     * @param chargeOfflineRecord 线下用户充值记录
     * @return 结果
     */
    public int insertChargeOfflineRecord(ChargeOfflineRecord chargeOfflineRecord);

    /**
     * 修改线下用户充值记录
     * 
     * @param chargeOfflineRecord 线下用户充值记录
     * @return 结果
     */
    public int updateChargeOfflineRecord(ChargeOfflineRecord chargeOfflineRecord);

    /**
     * 删除线下用户充值记录
     * 
     * @param id 线下用户充值记录主键
     * @return 结果
     */
    public int deleteChargeOfflineRecordById(Long id);

    /**
     * 批量删除线下用户充值记录
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteChargeOfflineRecordByIds(Long[] ids);
}
