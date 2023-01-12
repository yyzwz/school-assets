<template>
<div>
    <Drawer title="导入供应商" closable v-model="visible" draggable width="1200">
        <car>
            <Row>
                <Form ref="huasearchForm" :model="huasearchForm" inline :label-width="70">
                    <Form-item label="供应商名">
                        <Input type="text" v-model="huasearchForm.name" clearable placeholder="请输入供应商名" style="width: 400px" />
                    </Form-item>
                    <Form-item>
                        <Button @click="huahandleSearch" type="primary" icon="ios-search">搜索</Button>
                        <Button @click="huahandleReset">重置</Button>
                    </Form-item>
                </Form>
            </Row>
            <Row v-show="openTip">
                <Alert show-icon>
                    已选择
                    <span class="select-count">{{huaselectCount}}</span> 项
                    <a class="select-clear" @click="huaclearSelectAll">清空</a>
                </Alert>
            </Row>
            <Row>
                <Table :loading="hualoading" border :columns="userColumns" :data="huaData" sortable="custom" @on-sort-change="huachangeSort" @on-row-dblclick="huashowHuaSelect" ref="table1"></Table>
                <br>
            </Row>
            <Row type="flex" justify="end" class="page">
                <Page :current="huasearchForm.pageNumber" :total="huaTotal" :page-size="huasearchForm.pageSize" @on-change="huachangePage" @on-page-size-change="huachangePageSize" :page-size-opts="[10,20,50]" size="small" show-total show-elevator show-sizer></Page>
            </Row>
            <span style="font-size:30px;color:#f00">请双击选择供应商!</span><br>
            <Button type="primary" @click="closeWindow">退出</Button>
        </car>
    </Drawer>
</div>
</template>

<script>
import {
    getAllSupplierList
} from "./api.js";
export default {
    name: "add",
    components: {},
    props: {
        value: {
            type: Boolean,
            default: false
        },
        data: {
            type: Object
        },
    },
    watch: {
        value(val) {
            this.setCurrentValue(val);
        },
        visible(value) {
            this.$emit("input", value);
        }
    },
    data() {
        return {
            showValue: false,
            visible: this.value,
            title: "",
            submitLoading: false,
            maxHeight: 510,
            form: {},
            formValidate: {},
            roleList: [],
            userColumns: [{
                    title: "供应商名",
                    key: "name",
                    minWidth: 100,
                    sortable: true
                },
                {
                    title: "类型",
                    key: "type",
                    minWidth: 150,
                    sortable: true
                },
                {
                    title: "地址",
                    key: "address",
                    sortable: true,
                    sortType: "desc",
                    minWidth: 100
                },
                {
                    title: "备注",
                    key: "remark",
                    sortable: true,
                    sortType: "desc",
                    minWidth: 100
                }
            ],
            isImportHuaData: true,
            huasearchForm: {
                pageNumber: 1,
                pageSize: 10,
                username: "",
                groupId: '',
                departmentId: ''
            },
            selectHuaList: [],
            selectHuaCount: [],
            huaData: [],
        };
    },
    methods: {
        init() {
            this.getHuaUserList();
        },
        handleSelectDep(e) {
            var that = this;
            e.forEach(function (ee) {
                that.huasearchForm.departmentId = ee.id;
            });
        },
        huashowHuaSelect(e) {
            this.$emit("submited", e);
            // console.log(e);
        },
        setCurrentValue(value) {
            if (value === this.visible) {
                return;
            }
            this.visible = value;
        },
        closeWindow() {
            this.visible = false;
        },
        huahandleSearch() {
            this.huasearchForm.pageNumber = 1;
            this.huasearchForm.pageSize = 10;
            this.getHuaUserList();
        },
        huahandleReset() {
            this.$refs.huasearchForm.resetFields();
            this.huasearchForm.nickname = '';
            this.huasearchForm.pageNumber = 1;
            this.huasearchForm.pageSize = 10;
            that.huasearchForm.departmentId = '';
            this.getHuaUserList();
        },
        huaclearSelectAll() {
            this.$refs.table1.selectAll(false);
        },
        huachangePage(v) {
            this.huasearchForm.pageNumber = v;
            this.getHuaUserList();
            this.huaclearSelectAll();
        },
        huachangePageSize(v) {
            this.huasearchForm.pageSize = v;
            this.getHuaUserList();
        },
        huaAddData() {
            var that = this;
            if (this.huaselectCount <= 0) {
                this.$Message.warning("您还未选择要从花名册导入的数据");
                return;
            }
            this.$Modal.confirm({
                title: "确认导入",
                content: "您确认要导入所选的 " + this.huaselectCount + " 条数据?",
                loading: true,
                onOk: () => {
                    let ids = "";
                    this.huaselectList.forEach(function (e) {
                        ids += e.nickname + ",";
                        ids = ids.substring(0, ids.length - 1);
                        this.$Modal.remove();
                        this.$Message.success("导入成功");
                        this.isImportHuaData = false;
                        that.form.inPeople = ids;
                    })
                }
            })
        },
        getHuaUserList() {
            this.hualoading = true;
            getAllSupplierList(this.huasearchForm).then(res => {
                this.hualoading = false;
                if (res.success) {
                    this.huaData = res.result.records;
                    this.huaTotal = res.result.total;
                }
            });
        },
    },
    mounted() {
        this.init();
    }
};
</script>

<style lang="less">
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
