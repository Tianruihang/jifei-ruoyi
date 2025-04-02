package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.ChargeOfflineRecordMapper;
import com.ruoyi.system.domain.ChargeOfflineRecord;
import com.ruoyi.system.service.IChargeOfflineRecordService;

/**
 * 线下用户充值记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
@Service
public class ChargeOfflineRecordServiceImpl implements IChargeOfflineRecordService 
{
    @Autowired
    private ChargeOfflineRecordMapper chargeOfflineRecordMapper;

    /**
     * 查询线下用户充值记录
     * 
     * @param id 线下用户充值记录主键
     * @return 线下用户充值记录
     */
    @Override
    public ChargeOfflineRecord selectChargeOfflineRecordById(Long id)
    {
        return chargeOfflineRecordMapper.selectChargeOfflineRecordById(id);
    }

    /**
     * 查询线下用户充值记录列表
     * 
     * @param chargeOfflineRecord 线下用户充值记录
     * @return 线下用户充值记录
     */
    @Override
    public List<ChargeOfflineRecord> selectChargeOfflineRecordList(ChargeOfflineRecord chargeOfflineRecord)
    {
        return chargeOfflineRecordMapper.selectChargeOfflineRecordList(chargeOfflineRecord);
    }

    /**
     * 新增线下用户充值记录
     * 
     * @param chargeOfflineRecord 线下用户充值记录
     * @return 结果
     */
    @Override
    public int insertChargeOfflineRecord(ChargeOfflineRecord chargeOfflineRecord)
    {
        return chargeOfflineRecordMapper.insertChargeOfflineRecord(chargeOfflineRecord);
    }

    /**
     * 修改线下用户充值记录
     * 
     * @param chargeOfflineRecord 线下用户充值记录
     * @return 结果
     */
    @Override
    public int updateChargeOfflineRecord(ChargeOfflineRecord chargeOfflineRecord)
    {
        return chargeOfflineRecordMapper.updateChargeOfflineRecord(chargeOfflineRecord);
    }

    /**
     * 批量删除线下用户充值记录
     * 
     * @param ids 需要删除的线下用户充值记录主键
     * @return 结果
     */
    @Override
    public int deleteChargeOfflineRecordByIds(Long[] ids)
    {
        return chargeOfflineRecordMapper.deleteChargeOfflineRecordByIds(ids);
    }

    /**
     * 删除线下用户充值记录信息
     * 
     * @param id 线下用户充值记录主键
     * @return 结果
     */
    @Override
    public int deleteChargeOfflineRecordById(Long id)
    {
        return chargeOfflineRecordMapper.deleteChargeOfflineRecordById(id);
    }
}
