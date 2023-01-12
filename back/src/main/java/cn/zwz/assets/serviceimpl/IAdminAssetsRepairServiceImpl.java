package cn.zwz.assets.serviceimpl;

import cn.zwz.assets.mapper.AdminAssetsRepairMapper;
import cn.zwz.assets.entity.AdminAssetsRepair;
import cn.zwz.assets.service.IAdminAssetsRepairService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 固定资产报修 服务层接口实现
 * @author 开发者
 */
@Slf4j
@Service
@Transactional
public class IAdminAssetsRepairServiceImpl extends ServiceImpl<AdminAssetsRepairMapper, AdminAssetsRepair> implements IAdminAssetsRepairService {

    @Autowired
    private AdminAssetsRepairMapper adminAssetsRepairMapper;
}