package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.ChargeOnlineProduct;

import java.util.List;

/**
 * 线上充值产品配置Mapper接口
 */
public interface ChargeOnlineProductMapper {
    ChargeOnlineProduct selectChargeOnlineProductById(Long id);

    ChargeOnlineProduct selectChargeOnlineProductByProductId(String productId);

    List<ChargeOnlineProduct> selectChargeOnlineProductList(ChargeOnlineProduct chargeOnlineProduct);

    int insertChargeOnlineProduct(ChargeOnlineProduct chargeOnlineProduct);

    int updateChargeOnlineProduct(ChargeOnlineProduct chargeOnlineProduct);

    int deleteChargeOnlineProductById(Long id);

    int deleteChargeOnlineProductByIds(Long[] ids);
}
