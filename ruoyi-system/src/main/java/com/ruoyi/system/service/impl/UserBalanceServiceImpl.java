package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.UserBalanceMapper;
import com.ruoyi.system.domain.UserBalance;
import com.ruoyi.system.service.IUserBalanceService;

/**
 * 用户余额Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
@Service
public class UserBalanceServiceImpl implements IUserBalanceService 
{
    @Autowired
    private UserBalanceMapper userBalanceMapper;

    /**
     * 查询用户余额
     * 
     * @param id 用户余额主键
     * @return 用户余额
     */
    @Override
    public UserBalance selectUserBalanceById(Long id)
    {
        return userBalanceMapper.selectUserBalanceById(id);
    }

    /**
     * 根据用户 userId查询
     */
    @Override
    public UserBalance selectUserBalanceByUserId(Long userId)
    {
        return userBalanceMapper.selectUserBalanceByUserId(userId);
    }

    /**
     * 查询用户余额列表
     * 
     * @param userBalance 用户余额
     * @return 用户余额
     */
    @Override
    public List<UserBalance> selectUserBalanceList(UserBalance userBalance)
    {
        return userBalanceMapper.selectUserBalanceList(userBalance);
    }

    /**
     * 新增用户余额
     * 
     * @param userBalance 用户余额
     * @return 结果
     */
    @Override
    public int insertUserBalance(UserBalance userBalance)
    {
        return userBalanceMapper.insertUserBalance(userBalance);
    }

    /**
     * 修改用户余额
     * 
     * @param userBalance 用户余额
     * @return 结果
     */
    @Override
    public int updateUserBalance(UserBalance userBalance)
    {
        return userBalanceMapper.updateUserBalance(userBalance);
    }

    @Override
    public int increaseUserBalance(Long userId, Long delta)
    {
        return userBalanceMapper.increaseUserBalance(userId, delta);
    }

    /**
     * 批量删除用户余额
     * 
     * @param ids 需要删除的用户余额主键
     * @return 结果
     */
    @Override
    public int deleteUserBalanceByIds(Long[] ids)
    {
        return userBalanceMapper.deleteUserBalanceByIds(ids);
    }

    /**
     * 删除用户余额信息
     * 
     * @param id 用户余额主键
     * @return 结果
     */
    @Override
    public int deleteUserBalanceById(Long id)
    {
        return userBalanceMapper.deleteUserBalanceById(id);
    }
}
