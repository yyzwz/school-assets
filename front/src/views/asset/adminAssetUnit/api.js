import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

// 分页获取数据
export const getAdminAssetUnitList = (params) => {
    return getRequest('/adminAssetUnit/getByPage', params)
}
// 添加
export const addAdminAssetUnit = (params) => {
    return postRequest('/adminAssetUnit/insert', params)
}
// 编辑
export const editAdminAssetUnit = (params) => {
    return postRequest('/adminAssetUnit/update', params)
}
// 删除
export const deleteAdminAssetUnit = (params) => {
    return postRequest('/adminAssetUnit/delByIds', params)
}