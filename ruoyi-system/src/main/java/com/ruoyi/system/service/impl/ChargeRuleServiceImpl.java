package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.ChargeRuleMapper;
import com.ruoyi.system.domain.ChargeRule;
import com.ruoyi.system.service.IChargeRuleService;

/**
 * 积分消费规则Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
@Service
public class ChargeRuleServiceImpl implements IChargeRuleService 
{
    @Autowired
    private ChargeRuleMapper chargeRuleMapper;

    /**
     * 查询积分消费规则
     * 
     * @param id 积分消费规则主键
     * @return 积分消费规则
     */
    @Override
    public ChargeRule selectChargeRuleById(Long id)
    {
        return chargeRuleMapper.selectChargeRuleById(id);
    }

    /**
     * 查询积分消费规则列表
     * 
     * @param chargeRule 积分消费规则
     * @return 积分消费规则
     */
    @Override
    public List<ChargeRule> selectChargeRuleList(ChargeRule chargeRule)
    {
        return chargeRuleMapper.selectChargeRuleList(chargeRule);
    }

    /**
     * 新增积分消费规则
     * 
     * @param chargeRule 积分消费规则
     * @return 结果
     */
    @Override
    public int insertChargeRule(ChargeRule chargeRule)
    {
        return chargeRuleMapper.insertChargeRule(chargeRule);
    }

    /**
     * 修改积分消费规则
     * 
     * @param chargeRule 积分消费规则
     * @return 结果
     */
    @Override
    public int updateChargeRule(ChargeRule chargeRule)
    {
        return chargeRuleMapper.updateChargeRule(chargeRule);
    }

    /**
     * 批量删除积分消费规则
     * 
     * @param ids 需要删除的积分消费规则主键
     * @return 结果
     */
    @Override
    public int deleteChargeRuleByIds(Long[] ids)
    {
        return chargeRuleMapper.deleteChargeRuleByIds(ids);
    }

    /**
     * 删除积分消费规则信息
     * 
     * @param id 积分消费规则主键
     * @return 结果
     */
    @Override
    public int deleteChargeRuleById(Long id)
    {
        return chargeRuleMapper.deleteChargeRuleById(id);
    }
}
