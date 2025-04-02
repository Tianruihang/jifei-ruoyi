package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.ChargeExchange;

/**
 * 积分与余额兑换公式Mapper接口
 * 
 * @author ruoyi
 * @date 2025-04-02
 */
public interface ChargeExchangeMapper 
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
     * 删除积分与余额兑换公式
     * 
     * @param id 积分与余额兑换公式主键
     * @return 结果
     */
    public int deleteChargeExchangeById(Long id);

    /**
     * 批量删除积分与余额兑换公式
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteChargeExchangeByIds(Long[] ids);
}
