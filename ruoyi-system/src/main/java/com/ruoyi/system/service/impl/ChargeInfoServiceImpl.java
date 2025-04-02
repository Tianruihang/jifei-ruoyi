package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.ChargeInfoMapper;
import com.ruoyi.system.domain.ChargeInfo;
import com.ruoyi.system.service.IChargeInfoService;

/**
 * 计费管理业务Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-03-31
 */
@Service
public class ChargeInfoServiceImpl implements IChargeInfoService 
{
    @Autowired
    private ChargeInfoMapper chargeInfoMapper;

    /**
     * 查询计费管理业务
     * 
     * @param id 计费管理业务主键
     * @return 计费管理业务
     */
    @Override
    public ChargeInfo selectChargeInfoById(Long id)
    {
        return chargeInfoMapper.selectChargeInfoById(id);
    }

    /**
     * 查询计费管理业务列表
     * 
     * @param chargeInfo 计费管理业务
     * @return 计费管理业务
     */
    @Override
    public List<ChargeInfo> selectChargeInfoList(ChargeInfo chargeInfo)
    {
        return chargeInfoMapper.selectChargeInfoList(chargeInfo);
    }

    /**
     * 新增计费管理业务
     * 
     * @param chargeInfo 计费管理业务
     * @return 结果
     */
    @Override
    public int insertChargeInfo(ChargeInfo chargeInfo)
    {
        return chargeInfoMapper.insertChargeInfo(chargeInfo);
    }

    /**
     * 修改计费管理业务
     * 
     * @param chargeInfo 计费管理业务
     * @return 结果
     */
    @Override
    public int updateChargeInfo(ChargeInfo chargeInfo)
    {
        return chargeInfoMapper.updateChargeInfo(chargeInfo);
    }

    /**
     * 批量删除计费管理业务
     * 
     * @param ids 需要删除的计费管理业务主键
     * @return 结果
     */
    @Override
    public int deleteChargeInfoByIds(Long[] ids)
    {
        return chargeInfoMapper.deleteChargeInfoByIds(ids);
    }

    /**
     * 删除计费管理业务信息
     * 
     * @param id 计费管理业务主键
     * @return 结果
     */
    @Override
    public int deleteChargeInfoById(Long id)
    {
        return chargeInfoMapper.deleteChargeInfoById(id);
    }
}
