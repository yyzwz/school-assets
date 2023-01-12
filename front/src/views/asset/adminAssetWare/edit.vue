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
            <FormItem label="仓库名称" prop="name">
                <Input v-model="form.name" clearable style="width:570px" />
            </FormItem>
            <FormItem label="仓库地址" prop="address">
                <Input v-model="form.address" clearable style="width:570px" />
            </FormItem>
            <FormItem label="管理员" prop="adminName">
                <Input v-model="form.adminName" readonly style="width:570px" />
                <Button type="error" @click="openUserSelectWindow">选择</Button>
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
    <userSelect v-model="showOwnerWindowFlag" @submited="ownerSubmited" />
</div>
</template>

<script>
import {
    editAdminAssetWare
} from "./api.js";
import userSelect from './userSelect.vue';
export default {
    name: "edit",
    components: {
        userSelect
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
                address: "",
                adminName: "",
                remark: "",
                status: "",
            },
            // 表单验证规则
            formValidate: {}
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
        },
        openUserSelectWindow() {
            this.showOwnerWindowFlag = true;
        },
        ownerSubmited(e) {
            this.form.adminId = e.id;
            this.form.adminName = e.username;
            this.showOwnerWindowFlag = false;
        },
        handleReset() {
            this.$refs.form.resetFields();
        },
        handleSubmit() {
            this.$refs.form.validate(valid => {
                if (valid) {
                    editAdminAssetWare(this.form).then(res => {
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
