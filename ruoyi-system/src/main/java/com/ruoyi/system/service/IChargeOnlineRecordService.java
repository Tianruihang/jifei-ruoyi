package com.ruoyi.system.service;

import com.ruoyi.system.domain.ChargeOnlineRecord;

import java.util.List;

/**
 * 线上充值记录Service接口
 */
public interface IChargeOnlineRecordService {
    ChargeOnlineRecord selectChargeOnlineRecordById(Long id);

    ChargeOnlineRecord selectChargeOnlineRecordByOutTradeNo(String outTradeNo);

    ChargeOnlineRecord selectChargeOnlineRecordByOutTradeNoAndUserId(String outTradeNo, Long userId);

    List<ChargeOnlineRecord> selectChargeOnlineRecordList(ChargeOnlineRecord chargeOnlineRecord);

    int insertChargeOnlineRecord(ChargeOnlineRecord chargeOnlineRecord);

    int updateChargeOnlineRecord(ChargeOnlineRecord chargeOnlineRecord);

    int deleteChargeOnlineRecordByIds(Long[] ids);

    int deleteChargeOnlineRecordById(Long id);
}
