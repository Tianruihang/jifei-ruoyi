package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.ChargeApiHistory;

/**
 * 计费接口记录Mapper接口
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
public interface ChargeApiHistoryMapper 
{
    /**
     * 查询计费接口记录
     * 
     * @param id 计费接口记录主键
     * @return 计费接口记录
     */
    public ChargeApiHistory selectChargeApiHistoryById(Long id);

    /**
     * 查询计费接口记录列表
     * 
     * @param chargeApiHistory 计费接口记录
     * @return 计费接口记录集合
     */
    public List<ChargeApiHistory> selectChargeApiHistoryList(ChargeApiHistory chargeApiHistory);

    /**
     * 新增计费接口记录
     * 
     * @param chargeApiHistory 计费接口记录
     * @return 结果
     */
    public int insertChargeApiHistory(ChargeApiHistory chargeApiHistory);

    /**
     * 修改计费接口记录
     * 
     * @param chargeApiHistory 计费接口记录
     * @return 结果
     */
    public int updateChargeApiHistory(ChargeApiHistory chargeApiHistory);

    /**
     * 删除计费接口记录
     * 
     * @param id 计费接口记录主键
     * @return 结果
     */
    public int deleteChargeApiHistoryById(Long id);

    /**
     * 批量删除计费接口记录
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteChargeApiHistoryByIds(Long[] ids);
}
