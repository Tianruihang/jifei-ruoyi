-- 线上支付模块初始化SQL

DROP TABLE IF EXISTS `charge_online_product`;
CREATE TABLE `charge_online_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `product_id` varchar(64) NOT NULL COMMENT '产品编码',
  `product_name` varchar(128) NOT NULL COMMENT '产品名称',
  `price` decimal(10,2) NOT NULL COMMENT '产品价格(元)',
  `points` bigint(20) NOT NULL COMMENT '充值积分',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态（0启用 1停用）',
  `sort_num` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_charge_online_product_pid` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='线上充值产品配置表';

DROP TABLE IF EXISTS `charge_online_record`;
CREATE TABLE `charge_online_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `out_trade_no` varchar(64) NOT NULL COMMENT '商户订单号',
  `third_trade_no` varchar(128) DEFAULT NULL COMMENT '第三方交易号',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `product_id` varchar(64) NOT NULL COMMENT '产品编码',
  `product_name` varchar(128) NOT NULL COMMENT '产品名称',
  `pay_channel` varchar(20) NOT NULL COMMENT '支付渠道(ALIPAY/WECHAT)',
  `pay_amount` decimal(10,2) NOT NULL COMMENT '支付金额',
  `points` bigint(20) NOT NULL COMMENT '充值积分',
  `trade_status` varchar(20) NOT NULL COMMENT '交易状态(WAIT_PAY/SUCCESS/CLOSED/FAILED)',
  `qr_code` text COMMENT '扫码链接',
  `paid_time` datetime DEFAULT NULL COMMENT '支付成功时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_charge_online_record_out_trade_no` (`out_trade_no`),
  KEY `idx_charge_online_record_user_id` (`user_id`),
  KEY `idx_charge_online_record_status` (`trade_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='线上充值记录表';

INSERT INTO `charge_online_product` (`product_id`, `product_name`, `price`, `points`, `status`, `sort_num`, `remark`, `create_by`, `create_date`, `update_by`, `update_date`)
VALUES
('P100', '100积分', 10.00, 100, '0', 1, '默认产品', 'admin', NOW(), 'admin', NOW()),
('P300', '300积分', 30.00, 300, '0', 2, '默认产品', 'admin', NOW(), 'admin', NOW()),
('P500', '500积分', 50.00, 500, '0', 3, '默认产品', 'admin', NOW(), 'admin', NOW());

-- 线上支付模块菜单（挂在“计费管理系统”，父菜单ID=2000）
-- 如你的父菜单ID不是2000，请将下面SQL中的 parent_id 改为实际值
DELETE FROM `sys_menu` WHERE `menu_id` IN (2100, 2101, 2102);

INSERT INTO `sys_menu`
(`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `route_name`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`)
VALUES
(2100, '线上产品配置', 2000, 7, 'onlineProduct', 'charge/onlineProduct/index', NULL, '', 1, 0, 'C', '0', '0', 'system:onlineProduct:list', 'money', 'admin', NOW(), 'admin', NOW(), '线上支付产品配置'),
(2101, '线上充值记录', 2000, 8, 'onlineRecord', 'charge/onlineRecord/index', NULL, '', 1, 0, 'C', '0', '0', 'system:onlineRecord:list', 'date', 'admin', NOW(), 'admin', NOW(), '线上支付充值记录'),
(2102, '线上扫码充值', 2000, 9, 'onlinePay', 'charge/onlinePay/index', NULL, '', 1, 0, 'C', '0', '0', '', 'wechat', 'admin', NOW(), 'admin', NOW(), '用户线上扫码充值');
