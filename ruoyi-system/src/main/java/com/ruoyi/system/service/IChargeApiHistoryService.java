package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.ChargeApiHistory;

/**
 * 计费接口记录Service接口
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
public interface IChargeApiHistoryService 
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
     * 批量删除计费接口记录
     * 
     * @param ids 需要删除的计费接口记录主键集合
     * @return 结果
     */
    public int deleteChargeApiHistoryByIds(Long[] ids);

    /**
     * 删除计费接口记录信息
     * 
     * @param id 计费接口记录主键
     * @return 结果
     */
    public int deleteChargeApiHistoryById(Long id);
}
