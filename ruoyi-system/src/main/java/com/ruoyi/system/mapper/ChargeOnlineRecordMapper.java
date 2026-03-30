package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.ChargeOnlineRecord;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 线上充值记录Mapper接口
 */
public interface ChargeOnlineRecordMapper {
    ChargeOnlineRecord selectChargeOnlineRecordById(Long id);

    ChargeOnlineRecord selectChargeOnlineRecordByOutTradeNo(String outTradeNo);

    ChargeOnlineRecord selectChargeOnlineRecordByOutTradeNoAndUserId(@Param("outTradeNo") String outTradeNo, @Param("userId") Long userId);

    List<ChargeOnlineRecord> selectChargeOnlineRecordList(ChargeOnlineRecord chargeOnlineRecord);

    int insertChargeOnlineRecord(ChargeOnlineRecord chargeOnlineRecord);

    int updateChargeOnlineRecord(ChargeOnlineRecord chargeOnlineRecord);

    int deleteChargeOnlineRecordById(Long id);

    int deleteChargeOnlineRecordByIds(Long[] ids);
}
