package cn.zwz.assets.entity;

import cn.zwz.basics.baseClass.ZwzBaseEntity;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * @author 开发者
 */
@Data
@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "a_admin_assets_repair")
@TableName("a_admin_assets_repair")
@ApiModel(value = "固定资产报修")
public class AdminAssetsRepair extends ZwzBaseEntity {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "固定资产ID")
    private String assetId;

    @ApiModelProperty(value = "固定资产名称")
    private String assetName;

    @ApiModelProperty(value = "资产分类")
    private String assetType;

    @ApiModelProperty(value = "资产仓库")
    private String assetWare;

    @ApiModelProperty(value = "报修人ID")
    private String repairId;

    @ApiModelProperty(value = "报修人")
    private String repairName;
}