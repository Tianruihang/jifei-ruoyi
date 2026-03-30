import request from '@/utils/request'

export function listPayProducts() {
  return request({
    url: '/api/pay/products',
    method: 'get'
  })
}

export function createPayOrder(data) {
  return request({
    url: '/api/pay/order/create',
    method: 'post',
    data: data
  })
}

export function queryPayOrder(outTradeNo) {
  return request({
    url: '/api/pay/order/query/' + outTradeNo,
    method: 'get'
  })
}

export function listMyPayOrders(query) {
  return request({
    url: '/api/pay/order/myList',
    method: 'get',
    params: query
  })
}
