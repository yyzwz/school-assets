<template>
<!-- 唯一div -->
<div class="search">
    <!-- 新增页面 -->
    <add v-if="currView == 'add'" @close="currView = 'index'" @submited="submited" />
    <!-- 编辑页面 -->
    <edit v-if="currView == 'edit'" @close="currView = 'index'" @submited="submited" :data="formData" />
    <!-- 卡片盒子 -->
    <Card v-show="currView == 'index'">
        <!-- 上方按钮与搜索层 -->
        <Row v-show="openSearch" @keydown.enter.native="handleSearch" style="height:30px;">
            <!-- Form父级盒子 -->
            <Form ref="searchForm" :model="searchForm" inline :label-width="0">
                <!-- 样式盒子 -->
                <Form-item ref="searchForm" :model="searchForm" inline :label-width="0" style="display:flex;">
                    <!-- 资产名称子级盒子 -->
                    <Form-item label="" prop="name">
                        <Input type="text" v-model="searchForm.name" placeholder="请输入资产名称" clearable style="width: 200px" />
                    </Form-item>
                    <!-- 按钮层 -->
                    <Form-item style="margin-left:10px;" class="br">
                        <!-- 搜索按钮 -->
                        <Button @click="handleSearch" type="primary" icon="ios-search" size="small" ghost shape="circle">搜索</Button>
                        <!-- 重置按钮 -->
                        <Button @click="handleReset" type="warning" size="small" ghost shape="circle" icon="md-refresh">重置</Button>
                        <!-- 新增按钮 -->
                        <Button @click="add" type="info" size="small" ghost shape="circle" icon="md-add" >添加</Button>
                        <!-- 删除按钮 -->
                        <Button @click="delAll" type="error" icon="md-trash" size="small" ghost shape="circle" >删除</Button>
                        <!-- 导出按钮 -->
                        <Button @click="excelData" type="success" icon="md-paper-plane" size="small" ghost shape="circle" >导出</Button>
                        <!-- 审核按钮 -->
                        <Button @click="submitFx" type="error" icon="md-paper-plane" size="small" ghost shape="circle" >提交审核</Button>
                    </Form-item>
                    <!-- 右侧俩按钮栏 -->
                    <Form-item style="position:fixed;right:50px;top:110px">
                        <!-- 列筛选按钮 -->
                        <Poptip trigger="hover" content="自定义表格的显示列,适应屏幕显示" placement="left">
                            <Button type="info" @click="showFilterPanelFlag = !showFilterPanelFlag" class="showFilterPanelFlag" icon="ios-settings" size="small" ghost>列筛选
                            </Button>
                        </Poptip>
                        <!-- 使用教程按钮 -->
                        <Poptip trigger="hover" content="点我查看本模块的使用教程" placement="left">
                            <Button type="warning" @click="modal1 = true" class="showFilterPanelFlag" icon="md-help" size="small" ghost>使用教程
                            </Button>
                        </Poptip>
                        <!-- 使用教程内容弹窗 -->
                        <Modal v-model="modal1" title="使用教程">
                            <p>1.XXXXXXXXXXXXXXXXXXXXXXXX</p>
                            <p>2.XXXXXXXXXXXXXXXXXXXXXXXX</p>
                            <p>3.XXXXXXXXXXXXXXXXXXXXXXXX</p>
                        </Modal>
                    </Form-item>
                </Form-item>
            </Form>
        </Row>
        <!-- 样式盒子 -->
        <Row class="operation" style="position:relative;">
            <transition>
                <div v-show="showFilterPanelFlag" class="filter-panel">
                    <CheckboxGroup v-model="selected">
                        <div v-for="item in mycolumns" :key="item.key">
                            <Checkbox :label="item.title" style="margin: 2px 5px"></Checkbox>
                        </div>
                    </CheckboxGroup>
                </div>
            </transition>
        </Row>
        <!-- 样式层 -->
        <Row v-show="openTip"> </Row>
        <!-- 表格层盒子 -->
        <Row>
            <!-- 根据后台数据生成的表格 -->
            <Table :loading="loading" border :columns="columns" :data="data" ref="table" sortable="custom" @on-sort-change="changeSort" @on-selection-change="changeSelect" @on-row-click="rowClick" @on-row-dblclick="dbrowClick" :row-class-name="rowClassNmae"></Table>
        </Row>
        <!-- 分页栏 -->
        <Row type="flex" justify="end" class="page">
            <!-- 分页器,可控制每页显示的条数 -->
            <Page :current="searchForm.pageNumber" :total="total" :page-size="searchForm.pageSize" @on-change="changePage" @on-page-size-change="changePageSize" :page-size-opts="[10, 20, 50]" size="small" show-total show-elevator show-sizer></Page>
        </Row>
        <div class="spanTS">
            <span style="color:#ff9900;font-size:22px;">
                1. XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            </span>
            <span style="color:#ff9900;font-size:22px;">
                2.XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            </span>
            <span style="color:#ff9900;font-size:22px;">
                3.XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            </span>
            <span style="color:#ff9900;font-size:22px;">
                4. XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            </span>
            <span style="color:#ff9900;font-size:22px;">
                5. XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            </span>
            <span style="color:#ff9900;font-size:22px;">
                6. XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            </span>
        </div>
    </Card>
    <!-- 弹窗盒子 -->
    <Modal v-model="lookMoreModel" title="查看详细采购单">
        <Form inline :label-width="90">
            <!-- 比例16子盒子 -->
            <Row :gutter="16">
                <Col span="12">
                <Form-item label="资产名称">
                    <Input v-model="selectRow.name" readonly />
                </Form-item>
                </Col>
                <Col span="12">
                <Form-item label="资产数量">
                    <Input v-model="selectRow.quantity" readonly />
                </Form-item>
                </Col>
            </Row>
            <!-- 比例16子盒子 -->
            <Row :gutter="16">
                <Col span="12">
                <Form-item label="最低价格">
                    <Input v-model="selectRow.minMoney" readonly />
                </Form-item>
                </Col>
                <Col span="12">
                <Form-item label="最高价格">
                    <Input v-model="selectRow.maxMoney" readonly />
                </Form-item>
                </Col>
            </Row>
            <!-- 比例16子盒子 -->
            <Row :gutter="16">
                <Col span="12">
                <Form-item label="计量单位">
                    <Input v-model="selectRow.unit" readonly />
                </Form-item>
                </Col>
                <Col span="12">
                <Form-item label="型号">
                    <Input v-model="selectRow.model" readonly />
                </Form-item>
                </Col>
            </Row>
            <!-- 比例16子盒子 -->
            <Row :gutter="16">
                <Col span="12">
                <Form-item label="规格">
                    <Input v-model="selectRow.spec" readonly />
                </Form-item>
                </Col>
                <Col span="12">
                <Form-item label="是否审核">
                    <span class="lookMoreFont">{{
                selectRow.auditFlag == 1 ? "已审核" : "未审核"
              }}</span>
                </Form-item>
                </Col>
            </Row>
            <!-- 比例16子盒子 -->
            <Row :gutter="16">
                <Col span="12">
                <Form-item label="是否提交">
                    <span class="lookMoreFont">{{
                selectRow.submitFlag == 1 ? "已提交" : "未提交"
              }}</span>
                </Form-item>
                </Col>
                <Col span="12">
                <Form-item label="是否入库">
                    <span class="lookMoreFont">{{
                selectRow.wareFlag == 1 ? "已入库" : "未入库"
              }}</span>
                </Form-item>
                </Col>
            </Row>
            <!-- 比例16子盒子 -->
            <Row :gutter="16">
                <Col span="24">
                <Form-item label="备注" style="width:98%">
                    <Input v-model="selectRow.remark" readonly />
                </Form-item>
                </Col>
            </Row>
        </Form>
    </Modal>
    <!-- 入库弹窗 -->
    <Modal v-model="lookMoreModel1" title="资产入库" ok-text="确认入库" @on-ok="inWareFx">
        <Form inline :label-width="90">
            <!-- 比例16子盒子 -->
            <Row :gutter="16">
                <Col span="12">
                <Form-item label="资产名称">
                    <Input v-model="selectRow.name" readonly />
                </Form-item>
                </Col>
                <Col span="12">
                <Form-item label="资产数量">
                    <Input v-model="selectRow.quantity" readonly />
                </Form-item>
                </Col>
            </Row>
            <!-- 比例16子盒子 -->
            <Row :gutter="16">
                <Col span="12">
                <Form-item label="最低价格">
                    <Input v-model="selectRow.minMoney" readonly />
                </Form-item>
                </Col>
                <Col span="12">
                <Form-item label="最高价格">
                    <Input v-model="selectRow.maxMoney" readonly />
                </Form-item>
                </Col>
            </Row>
            <!-- 比例16子盒子 -->
            <Row :gutter="16">
                <Col span="12">
                <Form-item label="计量单位">
                    <Input v-model="selectRow.unit" readonly />
                </Form-item>
                </Col>
                <Col span="12">
                <Form-item label="型号">
                    <Input v-model="selectRow.model" readonly />
                </Form-item>
                </Col>
            </Row>
            <!-- 比例16子盒子 -->
            <Row :gutter="16">
                <Col span="12">
                <Form-item label="规格">
                    <Input v-model="selectRow.spec" readonly />
                </Form-item>
                </Col>
                <Col span="12">
                <Form-item label="是否审核">
                    <span class="lookMoreFont">{{
                selectRow.auditFlag == 1 ? "已审核" : "未审核"
              }}</span>
                </Form-item>
                </Col>
            </Row>
            <!-- 比例16子盒子 -->
            <Row :gutter="16">
                <Col span="12">
                <Form-item label="是否提交">
                    <span class="lookMoreFont">{{
                selectRow.submitFlag == 1 ? "已提交" : "未提交"
              }}</span>
                </Form-item>
                </Col>
                <Col span="12">
                <Form-item label="是否入库">
                    <span class="lookMoreFont">{{
                selectRow.wareFlag == 1 ? "已入库" : "未入库"
              }}</span>
                </Form-item>
                </Col>
            </Row>
            <!-- 比例16子盒子 -->
            <Row :gutter="16">
                <Col span="24">
                <Form-item label="备注" style="width:98%">
                    <Input v-model="selectRow.remark" readonly />
                </Form-item>
                </Col>
            </Row>
            <Divider dashed><span class="lookMoreFont">↓↓↓请填写以下信息↓↓↓</span></Divider>
            <Row :gutter="16">
                <Col span="24">
                <Form-item label="入库数量" style="width:98%">
                    <InputNumber :max="selectRow.quantity2" :min="1" v-model="inAssetsNumber" style="width:100%"></InputNumber>
                </Form-item>
                </Col>
            </Row>
            <!-- 比例16子盒子 -->
            <Row :gutter="16">
                <Col span="24">
                <Form-item label="采购价格" style="width:98%">
                    <InputNumber v-model="inAssetsMoney" style="width:100%"></InputNumber>
                    <!-- :max="selectRow.maxMoney" :min="selectRow.minMoney" -->
                </Form-item>
                </Col>
            </Row>
            <!-- 比例16子盒子 -->
            <Row :gutter="16">
                <Col span="24">
                <Form-item label="采购日期" style="width:98%">
                    <DatePicker type="date" :placeholder="inAssetsDate" style="width:100%" format="yyyy-MM-dd" @on-change="changeInAssetsDate"></DatePicker>
                </Form-item>
                </Col>
            </Row>
            <!-- 比例16子盒子 -->
            <Row :gutter="16">
                <Col span="24">
                <Form-item label="进入仓库" style="width:98%">
                    <Select v-model="inAssetsWare">
                        <Option v-for="(item, index) in wareList" :key="index" :value="item.name">{{ item.name }}</Option>
                    </Select>
                </Form-item>
                </Col>
            </Row>
        </Form>
    </Modal>
</div>
</template>

<script>
import {
    getAdminAssetsBuyList,
    deleteAdminAssetsBuy,
    submitData,
    inWare,
    getAllWareList,
} from "./api.js";
import add from "./add.vue";
import edit from "./edit.vue";
export default {
    name: "single-window",
    components: {
        add,
        edit,
    },
    data() {
        return {
            inAssetsWare: "总经办仓库",
            inAssetsNumber: 1,
            inAssetsMoney: 1,
            inAssetsDate: "",
            lookMoreModel: false,
            lookMoreModel1: false,
            selected: [
                "选择",
                "序号",
                "资产名称",
                "提交状态",
                "审核状态",
                "入库状态",
                "采购价",
                "销售价",
                "采购数量",
                "可入库数量",
                "型号",
                "规格",
                "操作",
            ],
            modal1: false,
            openSearch: true, // 显示搜索
            openTip: true, // 显示提示
            formData: {},
            currView: "index",
            loading: true, // 表单加载状态
            searchForm: {
                // 搜索框初始化对象
                pageNumber: 1, // 当前页数
                pageSize: 10, // 页面大小
                sort: "createTime", // 默认排序字段
                order: "desc", // 默认排序方式
            },
            selectList: [], // 多选数据
            selectCount: 0, // 多选计数
            selectRow: {
                name: "",
                maxMoney: 0,
                minMoney: 0,
                quantity: 0,
                unit: "",
                model: "",
                spec: "",
                remark: "",
                auditFlag: 0,
                submitFlag: 0,
                wareFlag: 0,
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
                    fixed: "left",
                    align: "center",
                    tooltip: true,
                },
                {
                    title: "提交状态",
                    key: "submitFlag",
                    align: "center",
                    minWidth: 100,
                    tooltip: true,
                    render: (h, params) => {
                        if (params.row.submitFlag == 1) {
                            return h("div", [
                                h(
                                    "span", {
                                        style: {
                                            color: "#000000",
                                        },
                                    },
                                    "已提交"
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
                                    "未提交"
                                ),
                            ]);
                        }
                    },
                },
                {
                    title: "审核状态",
                    key: "auditFlag",
                    align: "center",
                    minWidth: 100,
                    tooltip: true,
                    render: (h, params) => {
                        if (params.row.auditFlag == 1) {
                            return h("div", [
                                h(
                                    "span", {
                                        style: {
                                            color: "#000000",
                                        },
                                    },
                                    "已审核"
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
                                    "未审核"
                                ),
                            ]);
                        }
                    },
                },
                {
                    title: "入库状态",
                    key: "auditFlag",
                    align: "center",
                    minWidth: 100,
                    tooltip: true,
                    render: (h, params) => {
                        if (params.row.wareFlag == 1) {
                            return h("div", [
                                h(
                                    "span", {
                                        style: {
                                            color: "#000000",
                                        },
                                    },
                                    "已入库"
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
                                    "未入库"
                                ),
                            ]);
                        }
                    },
                },
                {
                    title: "采购价",
                    key: "maxMoney",
                    minWidth: 120,
                    sortable: false,
                    align: "center",
                    tooltip: true,
                    render: (h, params) => {
                        return h("div", [
                            h(
                                "span", {
                                    style: {
                                        color: "#000000",
                                    },
                                },
                                params.row.maxMoney
                            ),
                        ]);
                    },
                },

                {
                    title: "销售价",
                    key: "minMoney",
                    minWidth: 120,
                    sortable: false,
                    align: "center",
                    tooltip: true,
                    render: (h, params) => {
                        return h("div", [
                            h(
                                "span", {
                                    style: {
                                        color: "#000000",
                                    },
                                },
                                params.row.minMoney
                            ),
                        ]);
                    },
                },
                {
                    title: "采购数量",
                    key: "quantity",
                    minWidth: 120,
                    sortable: false,
                    align: "center",
                    tooltip: true,
                    render: (h, params) => {
                        return h("div", [
                            h(
                                "span", {
                                    style: {
                                        color: "#000000",
                                    },
                                },
                                params.row.quantity + " " + params.row.unit
                            ),
                        ]);
                    },
                },
                {
                    title: "可入库数量",
                    key: "quantity2",
                    minWidth: 120,
                    sortable: false,
                    align: "center",
                    tooltip: true,
                    render: (h, params) => {
                        return h("div", [
                            h(
                                "span", {
                                    style: {
                                        color: "#000000",
                                    },
                                },
                                params.row.quantity2 + " " + params.row.unit
                            ),
                        ]);
                    },
                },
                {
                    title: "型号",
                    key: "model",
                    minWidth: 120,
                    sortable: false,
                    align: "center",
                    tooltip: true,
                },
                {
                    title: "规格",
                    key: "spec",
                    minWidth: 120,
                    align: "center",
                    tooltip: true,
                    sortable: false,
                },
                {
                    title: "备注",
                    key: "remark",
                    minWidth: 120,
                    sortable: false,
                    align: "center",
                    tooltip: true,
                },
                {
                    title: "创建时间",
                    key: "createTime",
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
                    width: 260,
                    fixed: "right",
                    render: (h, params) => {
                        return h("div", [
                            h(
                                "Button", {
                                    props: {
                                        type: "primary",
                                        size: "small",
                                        ghost: true,
                                        icon: "ios-create-outline",
                                        disabled: params.row.auditFlag,
                                    },
                                    style: {
                                        marginRight: "5px",
                                    },
                                    on: {
                                        click: () => {
                                            this.edit(params.row);
                                        },
                                    },
                                },
                                "编辑"
                            ),
                            h(
                                "Button", {
                                    props: {
                                        type: "error",
                                        size: "small",
                                        icon: "md-trash",
                                        ghost: true,
                                        disabled: params.row.auditFlag,
                                    },
                                    on: {
                                        click: () => {
                                            this.remove(params.row);
                                        },
                                    },
                                },
                                "删除"
                            ),
                            h(
                                "Button", {
                                    props: {
                                        type: "warning",
                                        size: "small",
                                        ghost: true,
                                        icon: "md-arrow-down",
                                        disabled: params.row.auditFlag != 1 || params.row.quantity2 == 0,
                                    },
                                    on: {
                                        click: () => {
                                            this.inWare(params.row);
                                        },
                                    },
                                },
                                "入库"
                            ),
                        ]);
                    },
                },
            ],
            data: [], // 表单数据
            pageNumber: 1, // 当前页数
            pageSize: 10, // 页面大小
            total: 0, // 表单数据总数
            showFilterPanelFlag: false,
            wareList: [],
        };
    },
    methods: {
        init() {
            this.getDataList();
            this.getAllWareListFx();
        },
        getAllWareListFx() {
            var that = this;
            getAllWareList().then((res) => {
                if (res.success) {
                    that.wareList = res.result;
                }
            });
        },
        submitFx() {
            if (this.selectCount <= 0) {
                this.$Message.warning("您还未选择要提交的数据");
                return;
            }
            var that = this;
            this.$Modal.confirm({
                title: "确认提交审核?",
                content: "您确认要提交所选的 " + this.selectCount + " 条采购单?",
                loading: true,
                onOk: () => {
                    let ids = "";
                    this.selectList.forEach(function (e) {
                        ids += e.id + ",";
                    });
                    ids = ids.substring(0, ids.length - 1);
                    submitData({
                        ids: ids
                    }).then((res) => {
                        this.$Modal.remove();
                        if (res.success) {
                            this.$Message.success("提交成功");
                            that.clearSelectAll();
                            that.getDataList();
                        }
                    });
                },
            });
        },
        submited() {
            this.currView = "index";
            this.getDataList();
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
        dbrowClick(row, index) {
            this.selectRow = row;
            this.lookMoreModel = true;
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
            // 重新加载数据
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
        getDataList() {
            this.loading = true;
            getAdminAssetsBuyList(this.searchForm).then((res) => {
                this.loading = false;
                if (res.success) {
                    this.data = res.result.records;
                    this.total = res.result.total;
                }
            });
        },
        add() {
            this.currView = "add";
        },
        edit(v) {
            // 转换null为""
            for (let attr in v) {
                if (v[attr] == null) {
                    v[attr] = "";
                }
            }
            let str = JSON.stringify(v);
            let data = JSON.parse(str);
            this.formData = data;
            this.currView = "edit";
        },
        inWare(e) {
            this.selectRow = e;
            this.inAssetsNumber = this.selectRow.quantity;
            this.inAssetsMoney = this.selectRow.minMoney;
            var date = new Date();
            this.inAssetsDate =
                date.getFullYear() +
                "-" +
                (date.getMonth() + 1 < 10 ?
                    "0" + (date.getMonth() + 1) :
                    date.getMonth() + 1) +
                "-" +
                (date.getDate() < 10 ? "0" + date.getDate() : date.getDate());
            this.lookMoreModel1 = true;
        },
        changeInAssetsDate(e) {
            this.inAssetsDate = e;
        },
        inWareFx() {
            var that = this;
            inWare({
                id: that.selectRow.id,
                quantity: that.inAssetsNumber,
                money: that.inAssetsMoney,
                date: that.inAssetsDate,
                warehouse: that.inAssetsWare,
            }).then((res) => {
                if (res.success) {
                    this.$Message.success("入库成功");
                    that.getDataList();
                }
            });
        },
        remove(v) {
            this.$Modal.confirm({
                title: "确认删除",
                // 记得确认修改此处
                content: "您确认要删除 " + v.name + " ?",
                loading: true,
                onOk: () => {
                    // 删除
                    deleteAdminAssetsBuy({
                        ids: v.id
                    }).then((res) => {
                        this.$Modal.remove();
                        if (res.success) {
                            this.$Message.success("操作成功");
                            this.getDataList();
                        }
                    });
                },
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
                    deleteAdminAssetsBuy({
                        ids: ids
                    }).then((res) => {
                        this.$Modal.remove();
                        if (res.success) {
                            this.$Message.success("操作成功");
                            this.clearSelectAll();
                            this.getDataList();
                        }
                    });
                },
            });
        },
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
    background-color: #b0b3b6 !important;
    color: #515a6e !important;
    font-size: 18px;
}

.lookMoreFont {
    font-size: 26px;
    color: rgb(243, 101, 19);
}

.spanTS {
    display: flex;
    flex-direction: column;
    margin-top: 30px;
}
</style>
