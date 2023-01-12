import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

// 分页获取数据
export const getAdminAssetWareList = (params) => {
    return getRequest('/adminAssetWare/getByPage', params)
}
// 添加
export const addAdminAssetWare = (params) => {
    return postRequest('/adminAssetWare/insertOrUpdate', params)
}
// 编辑
export const editAdminAssetWare = (params) => {
    return postRequest('/adminAssetWare/insertOrUpdate', params)
}
// 删除
export const deleteAdminAssetWare = (params) => {
    return postRequest('/adminAssetWare/delByIds', params)
}
export const getRosterUserByPage = (params) => {
    return getRequest('/user/getUserList', params)
}