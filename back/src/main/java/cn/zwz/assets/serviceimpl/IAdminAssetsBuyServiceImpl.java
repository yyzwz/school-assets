package cn.zwz.assets.serviceimpl;

import cn.zwz.assets.mapper.AdminAssetsBuyMapper;
import cn.zwz.assets.entity.AdminAssetsBuy;
import cn.zwz.assets.service.IAdminAssetsBuyService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 行政资产采购接口实现
 * @author 开发者
 */
@Slf4j
@Service
@Transactional
public class IAdminAssetsBuyServiceImpl extends ServiceImpl<AdminAssetsBuyMapper, AdminAssetsBuy> implements IAdminAssetsBuyService {

    @Autowired
    private AdminAssetsBuyMapper adminAssetsBuyMapper;
}