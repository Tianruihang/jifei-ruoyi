package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.ChargeRule;

/**
 * 积分消费规则Mapper接口
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
public interface ChargeRuleMapper 
{
    /**
     * 查询积分消费规则
     * 
     * @param id 积分消费规则主键
     * @return 积分消费规则
     */
    public ChargeRule selectChargeRuleById(Long id);

    /**
     * 查询积分消费规则列表
     * 
     * @param chargeRule 积分消费规则
     * @return 积分消费规则集合
     */
    public List<ChargeRule> selectChargeRuleList(ChargeRule chargeRule);

    /**
     * 新增积分消费规则
     * 
     * @param chargeRule 积分消费规则
     * @return 结果
     */
    public int insertChargeRule(ChargeRule chargeRule);

    /**
     * 修改积分消费规则
     * 
     * @param chargeRule 积分消费规则
     * @return 结果
     */
    public int updateChargeRule(ChargeRule chargeRule);

    /**
     * 删除积分消费规则
     * 
     * @param id 积分消费规则主键
     * @return 结果
     */
    public int deleteChargeRuleById(Long id);

    /**
     * 批量删除积分消费规则
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteChargeRuleByIds(Long[] ids);
}
