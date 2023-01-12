package cn.zwz.assets.serviceimpl;

import cn.zwz.assets.mapper.AdminAssetMapper;
import cn.zwz.assets.entity.AdminAsset;
import cn.zwz.assets.service.IAdminAssetService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 行政资产类型接口实现
 * @author 开发者
 */
@Slf4j
@Service
@Transactional
public class IAdminAssetServiceImpl extends ServiceImpl<AdminAssetMapper, AdminAsset> implements IAdminAssetService {

    @Autowired
    private AdminAssetMapper adminAssetMapper;
}