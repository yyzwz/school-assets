<template>
<div>
    <Card>
        <div slot="title">
            <div class="edit-head">
                <a @click="close" class="back-title">
                    <Icon type="ios-arrow-back" />返回
                </a>
                <div class="head-name">添加</div>
                <span></span>
                <a @click="close" class="window-close">
                    <Icon type="ios-close" size="31" class="ivu-icon-ios-close" />
                </a>
            </div>
        </div>
        <Form ref="form" :model="form" :label-width="100" :rules="formValidate" label-position="left">
            <FormItem label="资产名称" prop="name">
                <Input v-model="form.name" readonly style="width:570px" />
                <Button type="error" @click="openAssetSelectWindow">导入</Button>
            </FormItem>
            <!-- <FormItem label="价格区间" prop="minMoney">
          <InputNumber
            v-model="form.minMoney"
            style="width:270px"
            @blur.native.capture="minNumber"
          ></InputNumber> -- 
          <InputNumber
            v-model="form.maxMoney"
            style="width:270px"
            @blur.native.capture="maxNumber"
          ></InputNumber>
        </FormItem> -->
            <FormItem label="分类" prop="type">
                <Input v-model="form.type" clearable style="width:570px" />
            </FormItem>
            <FormItem label="规格" prop="spec">
                <Input v-model="form.spec" readonly style="width:570px" />
            </FormItem>
            <FormItem label="型号" prop="model">
                <Input v-model="form.model" readonly style="width:570px" />
            </FormItem>
            <FormItem label="尺寸" prop="cc">
                <Input v-model="form.cc" readonly style="width:570px" />
            </FormItem>
            <FormItem label="材质" prop="cz">
                <Input v-model="form.cz" readonly style="width:570px" />
            </FormItem>
            <FormItem label="使用范围" prop="syfw">
                <Input v-model="form.syfw" readonly style="width:570px" />
            </FormItem>
            <FormItem label="默认仓库" prop="mrckName">
                <Input v-model="form.mrckName" readonly style="width:570px" />
            </FormItem>
            <FormItem label="采购价" prop="maxNumber">
                <InputNumber v-model="form.maxMoney" style="width:570px" readonly></InputNumber>
            </FormItem>
            <FormItem label="销售价" prop="minMoney">
                <InputNumber v-model="form.minMoney" style="width:570px" readonly></InputNumber>
            </FormItem>
            <FormItem label="供应商" prop="gysName">
                <Input v-model="form.gysName" readonly style="width:570px" />
            </FormItem>
            <FormItem label="计量单位" prop="unit">
                <Input v-model="form.unit" readonly style="width:570px" />
            </FormItem>
            <FormItem label="包装单位" prop="bzdw">
                <Input v-model="form.bzdw" readonly style="width:570px" />
            </FormItem>
            <FormItem label="数量" prop="quantity">
                <InputNumber v-model="form.quantity" style="width:570px"></InputNumber>
            </FormItem>
            <FormItem label="采购原因" prop="remark">
                <Input v-model="form.remark" clearable style="width:570px" />
            </FormItem>
            <Form-item class="br">
                <Button @click="handleSubmit" :loading="submitLoading" type="primary">提交并保存</Button>
                <Button @click="handleReset">重置</Button>
                <Button type="dashed" @click="close">关闭</Button>
            </Form-item>
        </Form>
    </Card>
    <assetSelect v-model="showOwnerWindowFlag" @submited="ownerSubmited" />
</div>
</template>

<script>
import {
    addAdminAssetsBuy
} from "./api.js";
import assetSelect from './assetSelect.vue';
export default {
    name: "add",
    components: {
        assetSelect
    },
    data() {
        return {
            showOwnerWindowFlag: false,
            submitLoading: false,
            form: {
                name: "",
                type: "",
                spec: "",
                model: "",
                cc: "",
                cz: "",
                syfw: "",
                mrckName: "",
                maxMoney: 1,
                minMoney: 1,
                gysName: "",
                unit: "",
                bzdw: "",
                quantity: 1,
                quantity2: 1,
                remark: "",
            },
            formValidate: {},
        };
    },
    methods: {
        init() {},
        openAssetSelectWindow() {
            this.showOwnerWindowFlag = true;
        },
        ownerSubmited(e) {
            console.log(e);
            this.form.name = e.name;
            this.form.assetId = e.id;
            this.form.type = e.type;
            this.form.spec = e.gg;
            this.form.model = e.xh;
            this.form.cc = e.cc;
            this.form.cz = e.cz;
            this.form.unit = e.jldw;
            this.form.bzdw = e.bzdw;
            this.form.syfw = e.syfw;
            this.form.maxMoney = e.cgj;
            this.form.minMoney = e.xsj;
            this.form.gysName = e.gysName;
            this.form.mrckName = e.mrckName;
            this.showOwnerWindowFlag = false;
        },
        handleReset() {
            this.$refs.form.resetFields();
        },
        handleSubmit() {
            var that = this;
            this.$refs.form.validate((valid) => {
                if (valid) {
                    that.form.quantity2 = that.form.quantity;
                    addAdminAssetsBuy(this.form).then((res) => {
                        this.submitLoading = false;
                        if (res.success) {
                            this.$Message.success("操作成功");
                            this.submited();
                        }
                    });
                }
            });
        },
        minNumber() {
            if (this.form.maxMoney < this.form.minMoney) {
                this.$Message.warning("最小值不能大于最大值");
                this.form.minMoney = this.form.maxMoney;
            }
            console.log(this.form.minMoney);
        },
        maxNumber() {
            if (this.form.maxMoney < this.form.minMoney) {
                this.$Message.warning("最小值不能大于最大值");
                this.form.maxMoney = this.form.minMoney;
            }
            console.log(this.form.maxMoney);
        },
        close() {
            this.$emit("close", true);
        },
        submited() {
            this.$emit("submited", true);
        },
    },
    mounted() {
        this.init();
    },
};
</script>

<style lang="less">
// 建议引入通用样式 具体路径自行修改 可删除下面样式代码
// @import "../../../styles/single-common.less";
.edit-head {
    display: flex;
    align-items: center;
    justify-content: space-between;
    position: relative;

    .back-title {
        color: #515a6e;
        display: flex;
        align-items: center;
    }

    .head-name {
        display: inline-block;
        height: 20px;
        line-height: 20px;
        font-size: 16px;
        color: #17233d;
        font-weight: 500;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }

    .window-close {
        z-index: 1;
        font-size: 12px;
        position: absolute;
        right: 0px;
        top: -5px;
        overflow: hidden;
        cursor: pointer;

        .ivu-icon-ios-close {
            color: #999;
            transition: color 0.2s ease;
        }
    }

    .window-close .ivu-icon-ios-close:hover {
        color: #444;
    }
}
</style>
