import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

// 分页获取数据
export const getAdminAssetsBuyList = (params) => {
    return getRequest('/adminAssetsBuy/getByPage', params)
}
// 添加
export const addAdminAssetsBuy = (params) => {
    return postRequest('/adminAssetsBuy/insert', params)
}
// 编辑
export const editAdminAssetsBuy = (params) => {
    return postRequest('/adminAssetsBuy/update', params)
}
// 删除
export const deleteAdminAssetsBuy = (params) => {
    return postRequest('/adminAssetsBuy/delByIds', params)
}
export const submitData = (params) => {
    return postRequest('/adminAssetsBuy/submitData', params)
}
export const auditData = (params) => {
    return postRequest('/adminAssetsBuy/auditData', params)
}
export const inWare = (params) => {
    return postRequest('/adminAssetsBuy/inWare', params)
}
export const getAdminAssetList = (params) => {
    return getRequest('/adminAsset/getByPage', params)
}
// 获取所有仓库档案
export const getAllWareList = (params) => {
    return getRequest('/adminAssetWare/getAll', params)
}