<template>
  <div class="app-container">
    <el-form v-show="showSearch" ref="queryForm" :model="queryParams" size="small" :inline="true" label-width="90px">
      <el-form-item label="商户订单号" prop="outTradeNo">
        <el-input v-model="queryParams.outTradeNo" placeholder="请输入订单号" clearable @keyup.enter.native="handleQuery" />
      </el-form-item>
      <el-form-item label="用户名" prop="userName">
        <el-input v-model="queryParams.userName" placeholder="请输入用户名" clearable @keyup.enter.native="handleQuery" />
      </el-form-item>
      <el-form-item label="支付渠道" prop="payChannel">
        <el-select v-model="queryParams.payChannel" placeholder="请选择渠道" clearable>
          <el-option label="支付宝" value="ALIPAY" />
          <el-option label="微信" value="WECHAT" />
        </el-select>
      </el-form-item>
      <el-form-item label="交易状态" prop="tradeStatus">
        <el-select v-model="queryParams.tradeStatus" placeholder="请选择状态" clearable>
          <el-option label="待支付" value="WAIT_PAY" />
          <el-option label="成功" value="SUCCESS" />
          <el-option label="关闭" value="CLOSED" />
          <el-option label="失败" value="FAILED" />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <right-toolbar :show-search.sync="showSearch" @queryTable="getList" />
    </el-row>

    <el-table v-loading="loading" :data="onlineRecordList">
      <el-table-column label="ID" align="center" prop="id" width="70" />
      <el-table-column label="订单号" align="center" prop="outTradeNo" min-width="220" />
      <el-table-column label="用户名" align="center" prop="userName" width="120" />
      <el-table-column label="产品编码" align="center" prop="productId" width="120" />
      <el-table-column label="产品名称" align="center" prop="productName" width="140" />
      <el-table-column label="渠道" align="center" prop="payChannel" width="90" />
      <el-table-column label="金额" align="center" prop="payAmount" width="90" />
      <el-table-column label="积分" align="center" prop="points" width="90" />
      <el-table-column label="状态" align="center" prop="tradeStatus" width="90" />
      <el-table-column label="支付时间" align="center" prop="paidTime" width="170">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.paidTime, '{y}-{m}-{d} {h}:{i}:{s}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="创建时间" align="center" prop="createDate" width="170">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.createDate, '{y}-{m}-{d} {h}:{i}:{s}') }}</span>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total > 0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />
  </div>
</template>

<script>
import { listOnlineRecord } from '@/api/system/onlineRecord'

export default {
  name: 'OnlineRecord',
  data() {
    return {
      loading: true,
      showSearch: true,
      total: 0,
      onlineRecordList: [],
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        outTradeNo: null,
        userName: null,
        payChannel: null,
        tradeStatus: null
      }
    }
  },
  created() {
    this.getList()
  },
  methods: {
    getList() {
      this.loading = true
      listOnlineRecord(this.queryParams).then(response => {
        this.onlineRecordList = response.rows
        this.total = response.total
        this.loading = false
      })
    },
    handleQuery() {
      this.queryParams.pageNum = 1
      this.getList()
    },
    resetQuery() {
      this.resetForm('queryForm')
      this.handleQuery()
    }
  }
}
</script>
