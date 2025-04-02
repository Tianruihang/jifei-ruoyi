package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.ChargeExchange;

/**
 * 积分与余额兑换公式Service接口
 * 
 * @author ruoyi
 * @date 2025-04-02
 */
public interface IChargeExchangeService 
{
    /**
     * 查询积分与余额兑换公式
     * 
     * @param id 积分与余额兑换公式主键
     * @return 积分与余额兑换公式
     */
    public ChargeExchange selectChargeExchangeById(Long id);

    /**
     * 查询积分与余额兑换公式列表
     * 
     * @param chargeExchange 积分与余额兑换公式
     * @return 积分与余额兑换公式集合
     */
    public List<ChargeExchange> selectChargeExchangeList(ChargeExchange chargeExchange);

    /**
     * 新增积分与余额兑换公式
     * 
     * @param chargeExchange 积分与余额兑换公式
     * @return 结果
     */
    public int insertChargeExchange(ChargeExchange chargeExchange);

    /**
     * 修改积分与余额兑换公式
     * 
     * @param chargeExchange 积分与余额兑换公式
     * @return 结果
     */
    public int updateChargeExchange(ChargeExchange chargeExchange);

    /**
     * 批量删除积分与余额兑换公式
     * 
     * @param ids 需要删除的积分与余额兑换公式主键集合
     * @return 结果
     */
    public int deleteChargeExchangeByIds(Long[] ids);

    /**
     * 删除积分与余额兑换公式信息
     * 
     * @param id 积分与余额兑换公式主键
     * @return 结果
     */
    public int deleteChargeExchangeById(Long id);
}
