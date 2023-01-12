import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

export const getAdminAssetsRepairOne = (params) => {
    return getRequest('/adminAssetsRepair/getOne', params)
}
export const getAdminAssetsRepairList = (params) => {
    return getRequest('/adminAssetsRepair/getByPage', params)
}
export const getAdminAssetsRepairCount = (params) => {
    return getRequest('/adminAssetsRepair/count', params)
}
export const addAdminAssetsRepair = (params) => {
    return postRequest('/adminAssetsRepair/insert', params)
}
export const editAdminAssetsRepair = (params) => {
    return postRequest('/adminAssetsRepair/update', params)
}
export const addOrEditAdminAssetsRepair = (params) => {
    return postRequest('/adminAssetsRepair/insertOrUpdate', params)
}
export const deleteAdminAssetsRepair = (params) => {
    return postRequest('/adminAssetsRepair/delByIds', params)
}