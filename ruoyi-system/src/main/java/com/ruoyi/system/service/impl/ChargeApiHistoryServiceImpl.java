package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.ChargeApiHistoryMapper;
import com.ruoyi.system.domain.ChargeApiHistory;
import com.ruoyi.system.service.IChargeApiHistoryService;

/**
 * 计费接口记录Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
@Service
public class ChargeApiHistoryServiceImpl implements IChargeApiHistoryService 
{
    @Autowired
    private ChargeApiHistoryMapper chargeApiHistoryMapper;

    /**
     * 查询计费接口记录
     * 
     * @param id 计费接口记录主键
     * @return 计费接口记录
     */
    @Override
    public ChargeApiHistory selectChargeApiHistoryById(Long id)
    {
        return chargeApiHistoryMapper.selectChargeApiHistoryById(id);
    }

    /**
     * 查询计费接口记录列表
     * 
     * @param chargeApiHistory 计费接口记录
     * @return 计费接口记录
     */
    @Override
    public List<ChargeApiHistory> selectChargeApiHistoryList(ChargeApiHistory chargeApiHistory)
    {
        return chargeApiHistoryMapper.selectChargeApiHistoryList(chargeApiHistory);
    }

    /**
     * 新增计费接口记录
     * 
     * @param chargeApiHistory 计费接口记录
     * @return 结果
     */
    @Override
    public int insertChargeApiHistory(ChargeApiHistory chargeApiHistory)
    {
        return chargeApiHistoryMapper.insertChargeApiHistory(chargeApiHistory);
    }

    /**
     * 修改计费接口记录
     * 
     * @param chargeApiHistory 计费接口记录
     * @return 结果
     */
    @Override
    public int updateChargeApiHistory(ChargeApiHistory chargeApiHistory)
    {
        return chargeApiHistoryMapper.updateChargeApiHistory(chargeApiHistory);
    }

    /**
     * 批量删除计费接口记录
     * 
     * @param ids 需要删除的计费接口记录主键
     * @return 结果
     */
    @Override
    public int deleteChargeApiHistoryByIds(Long[] ids)
    {
        return chargeApiHistoryMapper.deleteChargeApiHistoryByIds(ids);
    }

    /**
     * 删除计费接口记录信息
     * 
     * @param id 计费接口记录主键
     * @return 结果
     */
    @Override
    public int deleteChargeApiHistoryById(Long id)
    {
        return chargeApiHistoryMapper.deleteChargeApiHistoryById(id);
    }
}
