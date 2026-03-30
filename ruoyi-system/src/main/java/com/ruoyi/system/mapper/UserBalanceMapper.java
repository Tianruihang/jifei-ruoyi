package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.UserBalance;
import org.apache.ibatis.annotations.Param;

/**
 * 用户余额Mapper接口
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
public interface UserBalanceMapper 
{
    /**
     * 查询用户余额
     * 
     * @param id 用户余额主键
     * @return 用户余额
     */
    public UserBalance selectUserBalanceById(Long id);
    /**
     * 根据userId查询用户余额
     */
    public UserBalance selectUserBalanceByUserId(Long userId);

    /**
     * 查询用户余额列表
     * 
     * @param userBalance 用户余额
     * @return 用户余额集合
     */
    public List<UserBalance> selectUserBalanceList(UserBalance userBalance);

    /**
     * 新增用户余额
     * 
     * @param userBalance 用户余额
     * @return 结果
     */
    public int insertUserBalance(UserBalance userBalance);

    /**
     * 修改用户余额
     * 
     * @param userBalance 用户余额
     * @return 结果
     */
    public int updateUserBalance(UserBalance userBalance);

    /**
     * 按用户ID增加余额
     *
     * @param userId 用户ID
     * @param delta 增加值
     * @return 结果
     */
    public int increaseUserBalance(@Param("userId") Long userId, @Param("delta") Long delta);

    /**
     * 删除用户余额
     * 
     * @param id 用户余额主键
     * @return 结果
     */
    public int deleteUserBalanceById(Long id);

    /**
     * 批量删除用户余额
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteUserBalanceByIds(Long[] ids);
}
