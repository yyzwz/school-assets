<template>
<div>
    <Card>
        <div slot="title">
            <div class="edit-head">
                <a @click="close" class="back-title">
                    <Icon type="ios-arrow-back" />返回
                </a>
                <div class="head-name">编辑</div>
                <span></span>
                <a @click="close" class="window-close">
                    <Icon type="ios-close" size="31" class="ivu-icon-ios-close" />
                </a>
            </div>
        </div>
        <Form ref="form" :model="form" :label-width="100" :rules="formValidate" label-position="left">
            <FormItem label="名称" prop="name">
                <Input v-model="form.name" clearable style="width:570px" />
            </FormItem>
            <FormItem label="分类" prop="type">
                <Input v-model="form.type" clearable style="width:570px" />
            </FormItem>
            <FormItem label="规格" prop="gg">
                <Input v-model="form.gg" clearable style="width:570px" />
            </FormItem>
            <FormItem label="型号" prop="xh">
                <Input v-model="form.xh" clearable style="width:570px" />
            </FormItem>
            <FormItem label="尺寸" prop="cc">
                <Input v-model="form.cc" clearable style="width:570px" />
            </FormItem>
            <FormItem label="材质" prop="cz">
                <Input v-model="form.cz" clearable style="width:570px" />
            </FormItem>
            <FormItem label="计量单位" prop="jldw">
                <Select v-model="form.jldw" clearable style="width:570px">
                    <Option v-for="(item,index) in unitList" :key="index" :value="item.name">{{item.name}}</Option>
                </Select>
            </FormItem>
            <FormItem label="尺寸单位" prop="bzdw">
                <Select v-model="form.bzdw" clearable style="width:570px">
                    <Option v-for="(item,index) in unitList" :key="index" :value="item.name">{{item.name}}</Option>
                </Select>
            </FormItem>
            <FormItem label="使用范围" prop="syfw">
                <Input v-model="form.syfw" clearable style="width:570px" />
            </FormItem>
            <FormItem label="默认仓库" prop="mrck">
                <Select v-model="form.mrck" clearable style="width:570px">
                    <Option v-for="(item,index) in wareList" :key="index" :value="item.name">{{item.name}}</Option>
                </Select>
            </FormItem>
            <FormItem label="采购价" prop="cgj">
                <InputNumber v-model="form.cgj" style="width:570px"></InputNumber>
            </FormItem>
            <FormItem label="销售价" prop="xsj">
                <InputNumber v-model="form.xsj" style="width:570px"></InputNumber>
            </FormItem>
            <FormItem label="供应商" prop="gys">
                <Input v-model="form.gysName" readonly style="width:480px" />
                <Button type="error" @click="openSelectSupplierWindow">导入供应商</Button>
            </FormItem>
            <FormItem label="物料图片" prop="imageUrl">
                <upload-pic-input v-model="form.imageUrl" style="width:570px"></upload-pic-input>
            </FormItem>
            <FormItem label="备注" prop="remark">
                <Input v-model="form.remark" clearable style="width:570px" />
            </FormItem>
            <FormItem label="状态" prop="status">
                <Select v-model="form.status" clearable style="width:570px">
                    <Option value="0">正常</Option>
                    <Option value="1">封存</Option>
                </Select>
            </FormItem>
            <Form-item class="br">
                <Button @click="handleSubmit" :loading="submitLoading" type="primary">提交并保存</Button>
                <Button @click="handleReset">重置</Button>
                <Button type="dashed" @click="close">关闭</Button>
            </Form-item>
        </Form>
    </Card>
    <supplierSelect v-model="showOwnerWindowFlag" @submited="ownerSubmited" />
</div>
</template>

<script>
import {
    editAdminAsset,
    getAllWareList,
    getAllUnitList
} from "./api.js";
import supplierSelect from './supplierSelect.vue';
import uploadPicInput from "@/views/template/upload-pic-input";
export default {
    name: "edit",
    components: {
        uploadPicInput,
        supplierSelect
    },
    props: {
        data: Object
    },
    data() {
        return {
            showOwnerWindowFlag: false,
            submitLoading: false, // 表单提交状态
            form: { // 添加或编辑表单对象初始化数据
                name: "",
                type: "",
                gg: "",
                xh: "",
                cc: "",
                cz: "",
                jldw: "",
                bzdw: "",
                syfw: "",
                mrck: "",
                cgj: 0,
                xsj: 0,
                gys: "",
                qrCode: "",
                imageUrl: "",
                remark: "",
                status: "",
            },
            // 表单验证规则
            formValidate: {},
            wareList: [],
            unitList: []
        };
    },
    methods: {
        init() {
            this.handleReset();
            this.form = this.data;
            if (this.form.status == false) {
                this.form.status = "0";
            } else {
                this.form.status = "1";
            }
            this.getAllWareListFx();
            this.getAllUnitListFx();
        },
        openSelectSupplierWindow() {
            this.showOwnerWindowFlag = true;
        },
        ownerSubmited(e) {
            this.form.gys = e.id;
            this.form.gysName = e.name;
            this.showOwnerWindowFlag = false;
        },
        getAllWareListFx() {
            var that = this;
            getAllWareList().then(res => {
                if (res.success) {
                    that.wareList = res.result;
                }
            })
        },
        getAllUnitListFx() {
            var that = this;
            getAllUnitList().then(res => {
                if (res.success) {
                    that.unitList = res.result;
                }
            })
        },
        handleReset() {
            this.$refs.form.resetFields();
        },
        handleSubmit() {
            this.$refs.form.validate(valid => {
                if (valid) {
                    editAdminAsset(this.form).then(res => {
                        this.submitLoading = false;
                        if (res.success) {
                            this.$Message.success("操作成功");
                            this.submited();
                        }
                    });
                }
            });
        },
        close() {
            this.$emit("close", true);
        },
        submited() {
            this.$emit("submited", true);
        }
    },
    mounted() {
        this.init();
    }
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
            transition: color .2s ease;
        }
    }

    .window-close .ivu-icon-ios-close:hover {
        color: #444;
    }
}
</style>
