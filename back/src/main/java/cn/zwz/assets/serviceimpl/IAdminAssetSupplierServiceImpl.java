package cn.zwz.assets.serviceimpl;

import cn.zwz.assets.mapper.AdminAssetSupplierMapper;
import cn.zwz.assets.entity.AdminAssetSupplier;
import cn.zwz.assets.service.IAdminAssetSupplierService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 行政资产供应商接口实现
 * @author 开发者
 */
@Slf4j
@Service
@Transactional
public class IAdminAssetSupplierServiceImpl extends ServiceImpl<AdminAssetSupplierMapper, AdminAssetSupplier> implements IAdminAssetSupplierService {

    @Autowired
    private AdminAssetSupplierMapper adminAssetSupplierMapper;
}