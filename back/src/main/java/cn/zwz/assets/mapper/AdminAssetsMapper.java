package cn.zwz.assets.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import cn.zwz.assets.entity.AdminAssets;

/**
 * 行政资产库存数据处理层
 * @author 开发者
 */
public interface AdminAssetsMapper extends BaseMapper<AdminAssets> {
    int getNumber();
}