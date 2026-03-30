package com.ruoyi.system.service;

import com.ruoyi.system.domain.ChargeOnlineProduct;

import java.util.List;

/**
 * 线上充值产品配置Service接口
 */
public interface IChargeOnlineProductService {
    ChargeOnlineProduct selectChargeOnlineProductById(Long id);

    ChargeOnlineProduct selectChargeOnlineProductByProductId(String productId);

    List<ChargeOnlineProduct> selectChargeOnlineProductList(ChargeOnlineProduct chargeOnlineProduct);

    int insertChargeOnlineProduct(ChargeOnlineProduct chargeOnlineProduct);

    int updateChargeOnlineProduct(ChargeOnlineProduct chargeOnlineProduct);

    int deleteChargeOnlineProductByIds(Long[] ids);

    int deleteChargeOnlineProductById(Long id);
}
