import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

// 分页获取数据
export const getAdminAssetsList = (params) => {
    return getRequest('/adminAssets/getByPage', params)
}
// 添加
export const addAdminAssets = (params) => {
    return postRequest('/adminAssets/insertOrUpdate', params)
}
// 编辑
export const editAdminAssets = (params) => {
    return postRequest('/adminAssets/insertOrUpdate', params)
}
// 删除
export const deleteAdminAssets = (params) => {
    return postRequest('/adminAssets/delByIds', params)
}
export const getRosterUserByPage = (params) => {
    return getRequest('/user/getUserList', params)
}
export const outWage = (params) => {
    return postRequest('/adminAssets/outWage', params)
}

export const addRepair = (params) => {
    return getRequest('/adminAssetsRepair/add', params)
}