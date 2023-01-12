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
import java.math.BigDecimal;

/**
 * @author 开发者
 */
@Data
@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "a_admin_assets_buy")
@TableName("a_admin_assets_buy")
@ApiModel(value = "行政资产采购")
public class AdminAssetsBuy extends ZwzBaseEntity {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "资产名称")
    private String name;

    @ApiModelProperty(value = "资产ID")
    private String assetId;

    @ApiModelProperty(value = "分类")
    private String type;

    @ApiModelProperty(value = "资产编码")
    private String bm;

    @ApiModelProperty(value = "规格")
    private String spec;

    @ApiModelProperty(value = "型号")
    private String model;

    @ApiModelProperty(value = "尺寸")
    private String cc;

    @ApiModelProperty(value = "材质")
    private String cz;

    @ApiModelProperty(value = "计量单位")
    private String unit;

    @ApiModelProperty(value = "包装单位")
    private String bzdw;

    @ApiModelProperty(value = "使用范围")
    private String syfw;

    @ApiModelProperty(value = "默认仓库")
    private String mrck;

    @ApiModelProperty(value = "默认仓库")
    private String mrckName;

    @ApiModelProperty(value = "采购价")
    private BigDecimal maxMoney;

    @ApiModelProperty(value = "销售价")
    private BigDecimal minMoney;

    @ApiModelProperty(value = "供应商Id")
    private String gys;

    @ApiModelProperty(value = "供应商")
    private String gysName;

    @ApiModelProperty(value = "物料图片")
    private String imageUrl;

    @ApiModelProperty(value = "数量")
    private BigDecimal quantity;

    @ApiModelProperty(value = "可入库数量")
    private BigDecimal quantity2;

    @ApiModelProperty(value = "备注")
    private String remark;

    @ApiModelProperty(value = "是否审核")
    private int auditFlag;

    @ApiModelProperty(value = "是否提交")
    private int submitFlag;

    @ApiModelProperty(value = "是否入库")
    private int wareFlag;
}