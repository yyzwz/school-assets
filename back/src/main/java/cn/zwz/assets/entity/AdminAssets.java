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
@Table(name = "a_admin_assets")
@TableName("a_admin_assets")
@ApiModel(value = "行政资产库存")
public class AdminAssets extends ZwzBaseEntity {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "资产名称")
    private String name;

    @ApiModelProperty(value = "采购价")
    private BigDecimal money;

    @ApiModelProperty(value = "计量单位")
    private String unit;

    @ApiModelProperty(value = "唯一编码")
    private int no;

    @ApiModelProperty(value = "型号")
    private String model;

    @ApiModelProperty(value = "规格")
    private String spec;

    @ApiModelProperty(value = "需求")
    private String demand;

    @ApiModelProperty(value = "备注")
    private String remark;

    @ApiModelProperty(value = "采购单ID")
    private String buyNumber;

    @ApiModelProperty(value = "采购日期")
    private String buyDate;

    @ApiModelProperty(value = "仓库")
    private String warehouse;

    @ApiModelProperty(value = "是否出库")
    private int outFlag;

    @ApiModelProperty(value = "领用类型") // 按部门 / 按人
    private String giveType;

    @ApiModelProperty(value = "领用人ID")
    private String giveId;

    @ApiModelProperty(value = "领用人")
    private String giveName;

    @ApiModelProperty(value = "出库操作人")
    private String outWork;

    @ApiModelProperty(value = "出库时间")
    private String outTime;

    @ApiModelProperty(value = "资产状态")
    private int status;

    @ApiModelProperty(value = "销毁人")
    private String destroyName;

    @ApiModelProperty(value = "销毁时间")
    private String destroyTime;
}