package cn.zwz.assets.serviceimpl;

import cn.zwz.assets.mapper.AdminAssetsMapper;
import cn.zwz.assets.entity.AdminAssets;
import cn.zwz.assets.service.IAdminAssetsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 行政资产库存接口实现
 * @author 开发者
 */
@Slf4j
@Service
@Transactional
public class IAdminAssetsServiceImpl extends ServiceImpl<AdminAssetsMapper, AdminAssets> implements IAdminAssetsService {

    @Autowired
    private AdminAssetsMapper adminAssetsMapper;
}