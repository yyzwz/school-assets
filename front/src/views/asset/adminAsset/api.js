import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

// 分页获取数据
export const getAdminAssetList = (params) => {
    return getRequest('/adminAsset/getByPage', params)
}
// 添加
export const addAdminAsset = (params) => {
    return postRequest('/adminAsset/insert', params)
}
// 编辑
export const editAdminAsset = (params) => {
    return postRequest('/adminAsset/update', params)
}
// 删除
export const deleteAdminAsset = (params) => {
    return postRequest('/adminAsset/delByIds', params)
}
// 获取所有仓库档案
export const getAllWareList = (params) => {
    return getRequest('/adminAssetWare/getAll', params)
}
// 获取所有计量单位档案
export const getAllUnitList = (params) => {
    return getRequest('/adminAssetUnit/getAll', params)
}
// 获取供应商档案
export const getAllSupplierList = (params) => {
    return getRequest('/adminAssetSupplier/getByPage', params)
}