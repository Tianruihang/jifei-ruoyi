package com.ruoyi.system.service.impl;

import com.ruoyi.system.domain.ChargeOnlineProduct;
import com.ruoyi.system.mapper.ChargeOnlineProductMapper;
import com.ruoyi.system.service.IChargeOnlineProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 线上充值产品配置Service业务层处理
 */
@Service
public class ChargeOnlineProductServiceImpl implements IChargeOnlineProductService {
    @Autowired
    private ChargeOnlineProductMapper chargeOnlineProductMapper;

    @Override
    public ChargeOnlineProduct selectChargeOnlineProductById(Long id) {
        return chargeOnlineProductMapper.selectChargeOnlineProductById(id);
    }

    @Override
    public ChargeOnlineProduct selectChargeOnlineProductByProductId(String productId) {
        return chargeOnlineProductMapper.selectChargeOnlineProductByProductId(productId);
    }

    @Override
    public List<ChargeOnlineProduct> selectChargeOnlineProductList(ChargeOnlineProduct chargeOnlineProduct) {
        return chargeOnlineProductMapper.selectChargeOnlineProductList(chargeOnlineProduct);
    }

    @Override
    public int insertChargeOnlineProduct(ChargeOnlineProduct chargeOnlineProduct) {
        return chargeOnlineProductMapper.insertChargeOnlineProduct(chargeOnlineProduct);
    }

    @Override
    public int updateChargeOnlineProduct(ChargeOnlineProduct chargeOnlineProduct) {
        return chargeOnlineProductMapper.updateChargeOnlineProduct(chargeOnlineProduct);
    }

    @Override
    public int deleteChargeOnlineProductByIds(Long[] ids) {
        return chargeOnlineProductMapper.deleteChargeOnlineProductByIds(ids);
    }

    @Override
    public int deleteChargeOnlineProductById(Long id) {
        return chargeOnlineProductMapper.deleteChargeOnlineProductById(id);
    }
}
