package cn.zwz.assets.serviceimpl;

import cn.zwz.assets.mapper.AdminAssetWareMapper;
import cn.zwz.assets.entity.AdminAssetWare;
import cn.zwz.assets.service.IAdminAssetWareService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 行政资产仓库档案接口实现
 * @author 开发者
 */
@Slf4j
@Service
@Transactional
public class IAdminAssetWareServiceImpl extends ServiceImpl<AdminAssetWareMapper, AdminAssetWare> implements IAdminAssetWareService {

    @Autowired
    private AdminAssetWareMapper adminAssetWareMapper;
}