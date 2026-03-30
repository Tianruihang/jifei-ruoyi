package com.ruoyi.system.service.impl;

import com.ruoyi.system.domain.ChargeOnlineRecord;
import com.ruoyi.system.mapper.ChargeOnlineRecordMapper;
import com.ruoyi.system.service.IChargeOnlineRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 线上充值记录Service业务层处理
 */
@Service
public class ChargeOnlineRecordServiceImpl implements IChargeOnlineRecordService {
    @Autowired
    private ChargeOnlineRecordMapper chargeOnlineRecordMapper;

    @Override
    public ChargeOnlineRecord selectChargeOnlineRecordById(Long id) {
        return chargeOnlineRecordMapper.selectChargeOnlineRecordById(id);
    }

    @Override
    public ChargeOnlineRecord selectChargeOnlineRecordByOutTradeNo(String outTradeNo) {
        return chargeOnlineRecordMapper.selectChargeOnlineRecordByOutTradeNo(outTradeNo);
    }

    @Override
    public ChargeOnlineRecord selectChargeOnlineRecordByOutTradeNoAndUserId(String outTradeNo, Long userId) {
        return chargeOnlineRecordMapper.selectChargeOnlineRecordByOutTradeNoAndUserId(outTradeNo, userId);
    }

    @Override
    public List<ChargeOnlineRecord> selectChargeOnlineRecordList(ChargeOnlineRecord chargeOnlineRecord) {
        return chargeOnlineRecordMapper.selectChargeOnlineRecordList(chargeOnlineRecord);
    }

    @Override
    public int insertChargeOnlineRecord(ChargeOnlineRecord chargeOnlineRecord) {
        return chargeOnlineRecordMapper.insertChargeOnlineRecord(chargeOnlineRecord);
    }

    @Override
    public int updateChargeOnlineRecord(ChargeOnlineRecord chargeOnlineRecord) {
        return chargeOnlineRecordMapper.updateChargeOnlineRecord(chargeOnlineRecord);
    }

    @Override
    public int deleteChargeOnlineRecordByIds(Long[] ids) {
        return chargeOnlineRecordMapper.deleteChargeOnlineRecordByIds(ids);
    }

    @Override
    public int deleteChargeOnlineRecordById(Long id) {
        return chargeOnlineRecordMapper.deleteChargeOnlineRecordById(id);
    }
}
