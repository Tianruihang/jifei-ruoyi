import request from '@/utils/request'

export function listOnlineRecord(query) {
  return request({
    url: '/system/onlineRecord/list',
    method: 'get',
    params: query
  })
}

export function getOnlineRecord(id) {
  return request({
    url: '/system/onlineRecord/' + id,
    method: 'get'
  })
}
