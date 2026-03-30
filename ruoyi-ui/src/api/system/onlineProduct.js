import request from '@/utils/request'

export function listOnlineProduct(query) {
  return request({
    url: '/system/onlineProduct/list',
    method: 'get',
    params: query
  })
}

export function getOnlineProduct(id) {
  return request({
    url: '/system/onlineProduct/' + id,
    method: 'get'
  })
}

export function addOnlineProduct(data) {
  return request({
    url: '/system/onlineProduct',
    method: 'post',
    data: data
  })
}

export function updateOnlineProduct(data) {
  return request({
    url: '/system/onlineProduct',
    method: 'put',
    data: data
  })
}

export function delOnlineProduct(id) {
  return request({
    url: '/system/onlineProduct/' + id,
    method: 'delete'
  })
}
