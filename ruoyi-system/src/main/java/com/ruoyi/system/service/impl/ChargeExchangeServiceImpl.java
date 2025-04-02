package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.ChargeExchangeMapper;
import com.ruoyi.system.domain.ChargeExchange;
import com.ruoyi.system.service.IChargeExchangeService;

/**
 * 积分与余额兑换公式Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-04-02
 */
@Service
public class ChargeExchangeServiceImpl implements IChargeExchangeService 
{
    @Autowired
    private ChargeExchangeMapper chargeExchangeMapper;

    /**
     * 查询积分与余额兑换公式
     * 
     * @param id 积分与余额兑换公式主键
     * @return 积分与余额兑换公式
     */
    @Override
    public ChargeExchange selectChargeExchangeById(Long id)
    {
        return chargeExchangeMapper.selectChargeExchangeById(id);
    }

    /**
     * 查询积分与余额兑换公式列表
     * 
     * @param chargeExchange 积分与余额兑换公式
     * @return 积分与余额兑换公式
     */
    @Override
    public List<ChargeExchange> selectChargeExchangeList(ChargeExchange chargeExchange)
    {
        return chargeExchangeMapper.selectChargeExchangeList(chargeExchange);
    }

    /**
     * 新增积分与余额兑换公式
     * 
     * @param chargeExchange 积分与余额兑换公式
     * @return 结果
     */
    @Override
    public int insertChargeExchange(ChargeExchange chargeExchange)
    {
        return chargeExchangeMapper.insertChargeExchange(chargeExchange);
    }

    /**
     * 修改积分与余额兑换公式
     * 
     * @param chargeExchange 积分与余额兑换公式
     * @return 结果
     */
    @Override
    public int updateChargeExchange(ChargeExchange chargeExchange)
    {
        return chargeExchangeMapper.updateChargeExchange(chargeExchange);
    }

    /**
     * 批量删除积分与余额兑换公式
     * 
     * @param ids 需要删除的积分与余额兑换公式主键
     * @return 结果
     */
    @Override
    public int deleteChargeExchangeByIds(Long[] ids)
    {
        return chargeExchangeMapper.deleteChargeExchangeByIds(ids);
    }

    /**
     * 删除积分与余额兑换公式信息
     * 
     * @param id 积分与余额兑换公式主键
     * @return 结果
     */
    @Override
    public int deleteChargeExchangeById(Long id)
    {
        return chargeExchangeMapper.deleteChargeExchangeById(id);
    }
}
