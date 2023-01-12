<template>
<div class="search">
    <Card>
        <Row v-show="openSearch" @keydown.enter.native="handleSearch">
            <Form ref="searchForm" :model="searchForm" inline :label-width="0">
                <Form-item ref="searchForm" :model="searchForm" inline :label-width="0" style="display:flex;">
                    <Form-item label="" prop="name">
                        <Input type="text" v-model="searchForm.name" placeholder="请输入资产名称" clearable style="width: 200px" />
                    </Form-item>
                    <Form-item style="margin-left:10px;" class="br">
                        <Button @click="handleSearch" type="primary" icon="ios-search" size="small">搜索</Button>
                        <Button @click="handleReset" type="warning" size="small" icon="md-refresh">重置</Button>
                        <Button @click="delAll" type="error" icon="md-trash" size="small">批量销毁</Button>
                        <Button @click="manyEdit" type="info" icon="md-trash" size="small">批量出库</Button>
                        <Button @click="excelData" type="success" icon="md-paper-plane" size="small">导出</Button>
                    </Form-item>
                    <Form-item style="position:fixed;right:50px;top:130px">
                        <Button type="info" @click="showFilterPanelFlag = !showFilterPanelFlag" class="showFilterPanelFlag" icon="md-settings" size="small">
                        </Button>
                        <Button type="warning" @click="modal1 = true" class="showFilterPanelFlag" icon="ios-help-circle-outline" size="small">
                        </Button>
                        <Modal v-model="modal1" title="使用教程">
                            <p>1.XXXXXXXXXXXXXXXXXXXXXXXX</p>
                            <p>2.XXXXXXXXXXXXXXXXXXXXXXXX</p>
                            <p>3.XXXXXXXXXXXXXXXXXXXXXXXX</p>
                        </Modal>
                    </Form-item>
                </Form-item>
            </Form>
        </Row>
        <Row class="operation" style="position:relative;">
            <transition>
                <div v-show="showFilterPanelFlag" class="filter-panel">
                    <CheckboxGroup v-model="selected">
                        <div v-for="item in mycolumns" :key="item.key" v-if="item.title != null">
                            <Checkbox :label="item.title" style="margin: 2px 5px"></Checkbox>
                        </div>
                    </CheckboxGroup>
                </div>
            </transition>
        </Row>
        <Row v-show="openTip"> </Row>
        <Row>
            <Table :loading="loading" border :columns="columns" :data="data" ref="table" sortable="custom" @on-sort-change="changeSort" @on-selection-change="changeSelect" @on-row-click="rowClick" :row-class-name="rowClassNmae"></Table>
        </Row>
        <Row type="flex" justify="end" class="page">
            <Page :current="searchForm.pageNumber" :total="total" :page-size="searchForm.pageSize" @on-change="changePage" @on-page-size-change="changePageSize" :page-size-opts="[10,20,50]" size="small" show-total show-elevator show-sizer></Page>
        </Row>
    </Card>
    <Modal v-model="outWageModel" title="资产出库" draggable :z-index="outWageModelIndex" ok-text="确认出库" @on-ok="outWageFx">
        <Row :gutter="16">
            <Col span="16">
            <Select v-model="outWageType">
                <Option value="按人出库">按人出库</Option>
                <Option value="按部门出库">按部门出库</Option>
                <Option value="销毁出库">销毁出库</Option>
            </Select>
            </Col>
            <Col span="7">
            <Button v-show="outWageType=='按人出库'" @click="openShowOwnerWindowFlag" type="error" icon="md-trash" size="small">{{outWageType}} 选择</Button>
            </Col>
        </Row>
        <Row :gutter="16" v-show="outWageType=='按人出库'">
            {{outWageName}}
        </Row>
        <Row :gutter="16" v-show="outWageType=='按部门出库'">
            <department-choose @on-change="handleSelectDep"></department-choose>
        </Row>
    </Modal>
    <userSelect v-model="showOwnerWindowFlag" @submited="ownerSubmited" />

</div>
</template>

<script>
import {
    getAdminAssetsList,
    deleteAdminAssets,
    outWage
} from "./api.js";
import departmentChoose from "./department-choose.vue";
import userSelect from './userSelect.vue';
export default {
    name: "single-window",
    components: {
        userSelect,
        departmentChoose
    },
    data() {
        return {
            showOwnerWindowFlag: false,
            outWageModelIndex: "1100",
            outWageModel: false,
            outWageType: "按人出库",
            outWageId: "",
            outWageName: "未选择领用人",
            selected: [
                "选择",
                "序号",
                "资产名称",
                "采购价",
                "计量单位",
                "采购日期",
                "出库情况",
                "资产状态",
                "领用人",
                "操作",
            ],
            modal1: false,
            openSearch: true, // 显示搜索
            openTip: true, // 显示提示
            formData: {},
            loading: true, // 表单加载状态
            searchForm: { // 搜索框初始化对象
                pageNumber: 1, // 当前页数
                pageSize: 10, // 页面大小
                sort: "createTime", // 默认排序字段
                order: "desc", // 默认排序方式
            },
            selectList: [], // 多选数据
            selectCount: 0, // 多选计数
            selectRow: {
                id: ""
            },
            columns: [
                // 表头
                {
                    type: "selection",
                    width: 60,
                    title: "选择",
                    align: "center",
                    fixed: "left",
                },
                {
                    title: "序号",
                    width: 85,
                    align: "center",
                    fixed: "left",
                    sortType: true,
                    render: (h, params) => {
                        return h(
                            "span",
                            params.index +
                            (this.searchForm.pageNumber - 1) * this.searchForm.pageSize +
                            1
                        );
                    },
                },
                {
                    title: "资产名称",
                    key: "name",
                    minWidth: 120,
                    sortable: false,
                },
                {
                    title: "采购价",
                    key: "money",
                    minWidth: 120,
                    sortable: false,
                },
                {
                    title: "计量单位",
                    key: "unit",
                    minWidth: 120,
                    sortable: false,
                },
                {
                    title: "唯一编码",
                    key: "no",
                    minWidth: 120,
                    sortable: false,
                },
                {
                    title: "型号",
                    key: "model",
                    minWidth: 120,
                    sortable: false,
                },
                {
                    title: "规格",
                    key: "spec",
                    minWidth: 120,
                    sortable: false,
                },
                {
                    title: "需求",
                    key: "demand",
                    minWidth: 120,
                    sortable: false,
                },
                {
                    title: "备注",
                    key: "remark",
                    minWidth: 120,
                    sortable: false,
                },
                {
                    title: "采购日期",
                    key: "buyDate",
                    minWidth: 120,
                    sortable: false,
                },
                {
                    title: "资产状态",
                    key: "status",
                    sortable: true,
                    sortType: "desc",
                    minWidth: 180,
                    align: "center",
                    tooltip: true,
                    render: (h, params) => {
                        if (params.row.status == 0) {
                            return h("div", [
                                h(
                                    "span", {
                                        style: {
                                            color: "#000000",
                                        },
                                    },
                                    "[ 正常 ]"
                                ),
                            ]);
                        } else {
                            return h("div", [
                                h(
                                    "span", {
                                        style: {
                                            color: "#ff0000",
                                        },
                                    },
                                    "[ 已销毁 ]"
                                ),
                            ]);
                        }
                    },
                },
                {
                    title: "出库情况",
                    key: "outFlag",
                    minWidth: 120,
                    sortable: false,
                    render: (h, params) => {
                        if (params.row.outFlag == 0) {
                            return h("div", [
                                h(
                                    "span", {
                                        style: {
                                            color: "#ff0000",
                                        },
                                    },
                                    "[ 未出库 ]"
                                ),
                            ]);
                        } else {
                            return h("div", [
                                h(
                                    "span", {
                                        style: {
                                            color: "#000000",
                                        },
                                    },
                                    "[ 已出库 ]"
                                ),
                            ]);
                        }
                    },
                },
                {
                    title: "所在仓库",
                    key: "warehouse",
                    minWidth: 120,
                    sortable: false,
                },
                {
                    title: "领用人",
                    key: "giveType",
                    minWidth: 120,
                    sortable: false,
                    render: (h, params) => {
                        if (params.row.outFlag == 0) {
                            return h("div", [
                                h(
                                    "span", {
                                        style: {
                                            color: "#000000",
                                        },
                                    },
                                    "[ 尚未出库 ]"
                                ),
                            ]);
                        } else {
                            return h("div", [
                                h(
                                    "span", {
                                        style: {
                                            color: "#000000",
                                        },
                                    },
                                    "[" + params.row.giveType + "] " + params.row.giveName
                                ),
                            ]);
                        }
                    },
                },
                {
                    title: "销毁人",
                    key: "destroyName",
                    sortable: true,
                    sortType: "desc",
                    minWidth: 180,
                    align: "center",
                    tooltip: true,
                },
                {
                    title: "销毁时间",
                    key: "destroyTime",
                    sortable: true,
                    sortType: "desc",
                    minWidth: 180,
                    align: "center",
                    tooltip: true,
                },
                {
                    title: "创建者",
                    key: "createBy",
                    sortable: true,
                    sortType: "desc",
                    minWidth: 100,
                    align: "center",
                    tooltip: true,
                },
                {
                    title: "修改时间",
                    key: "updateTime",
                    sortable: true,
                    sortType: "desc",
                    minWidth: 180,
                    align: "center",
                    tooltip: true,
                },
                {
                    title: "修改者",
                    key: "updateBy",
                    sortable: true,
                    sortType: "desc",
                    minWidth: 100,
                    align: "center",
                    tooltip: true,
                },
                {
                    title: "操作",
                    key: "action",
                    align: "center",
                    width: 200,
                    render: (h, params) => {
                        return h("div", [
                            h(
                                "Button", {
                                    props: {
                                        type: "primary",
                                        size: "small",
                                        icon: "ios-create-outline",
                                        disabled: (params.row.outFlag > 0 || params.row.status > 0)
                                    },
                                    style: {
                                        marginRight: "5px"
                                    },
                                    on: {
                                        click: () => {
                                            this.edit(params.row);
                                        }
                                    }
                                },
                                "出库"
                            ),
                            h(
                                "Button", {
                                    props: {
                                        type: "error",
                                        size: "small",
                                        icon: "md-trash",
                                        disabled: (params.row.status > 0 || params.row.outFlag == 0)
                                    },
                                    on: {
                                        click: () => {
                                            this.remove(params.row);
                                        }
                                    }
                                },
                                "销毁"
                            )
                        ]);
                    }
                }
            ],
            data: [], // 表单数据
            pageNumber: 1, // 当前页数
            pageSize: 10, // 页面大小
            total: 0, // 表单数据总数
            showFilterPanelFlag: false,
        };
    },
    methods: {
        init() {
            this.getDataList();
        },
        ownerSubmited(e) {
            this.outWageId = e.id;
            this.outWageName = e.username;
            this.showOwnerWindowFlag = false;
        },
        handleSelectDep(e) {
            this.outWageId = e;
        },
        openShowOwnerWindowFlag(e) {
            this.showOwnerWindowFlag = true;
        },
        outWageFx() {
            var that = this;
            var assetId = this.selectRow.id;
            outWage({
                ids: assetId,
                type: this.outWageType,
                userId: this.outWageId
            }).then(res => {
                if (res.success) {
                    this.$Message.success("操作成功");
                    that.getDataList();
                }
            })
        },
        changePage(v) {
            this.searchForm.pageNumber = v;
            this.getDataList();
            this.clearSelectAll();
        },
        changePageSize(v) {
            this.searchForm.pageSize = v;
            this.getDataList();
        },
        rowClick(row, index) {
            this.selectRow = row;
        },
        rowClassNmae(row, index) {
            if (row.id == this.selectRow.id) {
                return "rowClassNmaeColor";
            }
            return "";
        },
        excelData() {
            this.$refs.table.exportCsv({
                filename: "导出结果",
            });
        },
        handleSearch() {
            this.searchForm.pageNumber = 1;
            this.searchForm.pageSize = 10;
            this.getDataList();
        },
        handleReset() {
            this.$refs.searchForm.resetFields();
            this.searchForm.pageNumber = 1;
            this.searchForm.pageSize = 10;
            this.getDataList();
        },
        changeSort(e) {
            this.searchForm.sort = e.key;
            this.searchForm.order = e.order;
            if (e.order === "normal") {
                this.searchForm.order = "";
            }
            this.getDataList();
        },
        clearSelectAll() {
            this.$refs.table.selectAll(false);
        },
        changeSelect(e) {
            this.selectList = e;
            this.selectCount = e.length;
        },
        edit(e) {
            this.selectRow = e;
            this.outWageModel = true;
        },
        manyEdit() {
            if (this.selectCount <= 0) {
                this.$Message.warning("您还未选择要出库的资产");
                return;
            }
            let ids = "";
            this.selectList.forEach(function (e) {
                if (e.outFlag == 0 && e.status == 0) {
                    ids += e.id + ",";
                }
            });
            if (ids == "") {
                this.$Message.warning("您选择的资产已出库或销毁");
                return;
            }
            ids = ids.substring(0, ids.length - 1);
            this.selectRow.id = ids;
            this.outWageModel = true;
        },
        getDataList() {
            this.loading = true;
            getAdminAssetsList(this.searchForm).then(res => {
                this.loading = false;
                if (res.success) {
                    this.data = res.result.records;
                    this.total = res.result.total;
                }
            });
        },
        remove(v) {
            this.$Modal.confirm({
                title: "确认销毁该资产",
                content: "销毁后,该资产将不复存在!",
                loading: true,
                onOk: () => {
                    deleteAdminAssets({
                        ids: v.id
                    }).then(res => {
                        this.$Modal.remove();
                        if (res.success) {
                            this.$Message.success("操作成功");
                            this.getDataList();
                        }
                    });
                }
            });
        },
        delAll() {
            if (this.selectCount <= 0) {
                this.$Message.warning("您还未选择要删除的数据");
                return;
            }
            this.$Modal.confirm({
                title: "确认删除",
                content: "您确认要删除所选的 " + this.selectCount + " 条数据?",
                loading: true,
                onOk: () => {
                    let ids = "";
                    this.selectList.forEach(function (e) {
                        ids += e.id + ",";
                    });
                    ids = ids.substring(0, ids.length - 1);
                    // 批量删除
                    deleteAdminAssets({
                        ids: ids
                    }).then(res => {
                        this.$Modal.remove();
                        if (res.success) {
                            this.$Message.success("操作成功");
                            this.clearSelectAll();
                            this.getDataList();
                        }
                    });
                }
            });
        }
    },
    mounted() {
        this.init();
        this.mycolumns = this.columns;
        let showcolumns = [];
        for (var i = 0; i < this.selected.length; i++) {
            var item = this.selected[i];
            for (var j = 0; j < this.columns.length; j++) {
                if (this.columns[j].title == item) {
                    showcolumns.push(this.columns[j]);
                }
            }
        }
        this.columns = showcolumns;
    },
    watch: {
        selected: function (newcolumns) {
            let showcolumns = [];
            for (var i = 0; i < this.mycolumns.length; i++) {
                var item = this.mycolumns[i];
                if (item.title == undefined) showcolumns.push(item);
                else if (newcolumns.includes(item.title)) showcolumns.push(item);
            }
            this.columns = showcolumns;
        },
    },
};
</script>

<style lang="less">
// @import "../../../styles/table-common.less";
.search {
    .operation {
        margin-bottom: 2vh;
    }

    .select-count {
        font-weight: 600;
        color: #40a9ff;
    }

    .select-clear {
        margin-left: 10px;
    }

    .page {
        margin-top: 2vh;
    }

    .drop-down {
        margin-left: 5px;
    }
}

.filter-panel {
    width: 166px;
    min-height: 120px;
    height: 200px;
    position: absolute;
    background-color: white;
    z-index: 9999;
    margin-left: 1px;
    overflow-y: scroll;
    border: 1px solid blue;
    top: 35px;
    right: 10px;
}

.openSearch {
    position: absolute;
    right: 240px;
}

.openTip {
    position: absolute;
    right: 130px;
}

.showFilterPanelFlag {
    position: static !important;
    right: 10px;
    margin-right: 10px;
}

.ivu-table td {
    height: 38px !important;
}

.ivu-table-cell-with-expand {
    height: 38px !important;
    line-height: 38px !important;
}

.ivu-table .rowClassNmaeColor td {
    background-color: #2db7f5 !important;
    color: #fff !important;
    font-size: 18px;
}
</style>
