import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

// 分页获取数据
export const getAdminAssetSupplierList = (params) => {
    return getRequest('/adminAssetSupplier/getByPage', params)
}
// 添加
export const addAdminAssetSupplier = (params) => {
    return postRequest('/adminAssetSupplier/insertOrUpdate', params)
}
// 编辑
export const editAdminAssetSupplier = (params) => {
    return postRequest('/adminAssetSupplier/insertOrUpdate', params)
}
// 删除
export const deleteAdminAssetSupplier = (params) => {
    return postRequest('/adminAssetSupplier/delByIds', params)
}