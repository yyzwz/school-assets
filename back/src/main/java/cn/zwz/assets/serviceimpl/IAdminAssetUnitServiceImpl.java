package cn.zwz.assets.serviceimpl;

import cn.zwz.assets.mapper.AdminAssetUnitMapper;
import cn.zwz.assets.entity.AdminAssetUnit;
import cn.zwz.assets.service.IAdminAssetUnitService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 行政资产计量单位接口实现
 * @author 开发者
 */
@Slf4j
@Service
@Transactional
public class IAdminAssetUnitServiceImpl extends ServiceImpl<AdminAssetUnitMapper, AdminAssetUnit> implements IAdminAssetUnitService {

    @Autowired
    private AdminAssetUnitMapper adminAssetUnitMapper;
}