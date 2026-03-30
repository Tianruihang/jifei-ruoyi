<template>
  <div class="app-container online-pay-page">
    <el-row :gutter="20">
      <el-col :xs="24" :md="14">
        <el-card shadow="never">
          <div slot="header">
            <span>选择充值产品</span>
          </div>
          <el-table v-loading="productLoading" :data="productList" highlight-current-row @row-click="selectProduct">
            <el-table-column label="产品编码" prop="productId" width="130" />
            <el-table-column label="产品名称" prop="productName" min-width="180" />
            <el-table-column label="价格(元)" prop="price" width="100" />
            <el-table-column label="积分" prop="points" width="100" />
          </el-table>
        </el-card>
      </el-col>

      <el-col :xs="24" :md="10">
        <el-card shadow="never" class="pay-panel">
          <div slot="header">
            <span>扫码支付</span>
          </div>

          <el-form label-width="90px">
            <el-form-item label="支付渠道">
              <el-radio-group v-model="payChannel">
                <el-radio label="ALIPAY">支付宝</el-radio>
                <el-radio label="WECHAT">微信</el-radio>
              </el-radio-group>
            </el-form-item>
            <el-form-item label="已选产品">
              <span>{{ selectedProduct ? selectedProduct.productName : '请选择左侧产品' }}</span>
            </el-form-item>
            <el-form-item label="支付金额">
              <span>{{ selectedProduct ? selectedProduct.price + ' 元' : '-' }}</span>
            </el-form-item>
            <el-form-item label="到账积分">
              <span>{{ selectedProduct ? selectedProduct.points : '-' }}</span>
            </el-form-item>
            <el-form-item>
              <el-button type="primary" :loading="orderLoading" @click="createOrder">生成扫码链接</el-button>
              <el-button :disabled="!currentOrder.outTradeNo" @click="checkOrder">查询支付结果</el-button>
            </el-form-item>
          </el-form>

          <div v-if="currentOrder.qrCode" class="qr-result">
            <div class="qr-title">请使用{{ payChannel === 'ALIPAY' ? '支付宝' : '微信' }}扫码</div>
            <el-input type="textarea" :rows="4" :value="currentOrder.qrCode" readonly />
            <el-link type="primary" :href="currentOrder.qrCode" target="_blank">打开扫码链接</el-link>
            <div class="order-no">订单号: {{ currentOrder.outTradeNo }}</div>
            <div class="order-status">当前状态: {{ currentOrder.tradeStatus || 'WAIT_PAY' }}</div>
          </div>
        </el-card>
      </el-col>
    </el-row>

    <el-card shadow="never" class="my-record">
      <div slot="header">
        <span>我的充值记录</span>
      </div>
      <el-table v-loading="recordLoading" :data="myRecordList">
        <el-table-column label="订单号" prop="outTradeNo" min-width="210" />
        <el-table-column label="产品" prop="productName" min-width="140" />
        <el-table-column label="渠道" prop="payChannel" width="90" />
        <el-table-column label="金额" prop="payAmount" width="90" />
        <el-table-column label="积分" prop="points" width="90" />
        <el-table-column label="状态" prop="tradeStatus" width="100" />
        <el-table-column label="支付时间" prop="paidTime" width="170">
          <template slot-scope="scope">
            <span>{{ parseTime(scope.row.paidTime, '{y}-{m}-{d} {h}:{i}:{s}') }}</span>
          </template>
        </el-table-column>
      </el-table>
      <pagination
        v-show="recordTotal > 0"
        :total="recordTotal"
        :page.sync="recordQuery.pageNum"
        :limit.sync="recordQuery.pageSize"
        @pagination="loadMyRecord"
      />
    </el-card>
  </div>
</template>

<script>
import { createPayOrder, listMyPayOrders, listPayProducts, queryPayOrder } from '@/api/pay/onlinePay'

export default {
  name: 'OnlinePay',
  data() {
    return {
      productLoading: false,
      recordLoading: false,
      orderLoading: false,
      productList: [],
      selectedProduct: null,
      payChannel: 'ALIPAY',
      currentOrder: {
        outTradeNo: '',
        qrCode: '',
        tradeStatus: ''
      },
      pollTimer: null,
      myRecordList: [],
      recordTotal: 0,
      recordQuery: {
        pageNum: 1,
        pageSize: 10
      }
    }
  },
  created() {
    this.loadProducts()
    this.loadMyRecord()
  },
  beforeDestroy() {
    this.clearPoll()
  },
  methods: {
    loadProducts() {
      this.productLoading = true
      listPayProducts().then(resp => {
        this.productList = resp.data || []
      }).finally(() => {
        this.productLoading = false
      })
    },
    loadMyRecord() {
      this.recordLoading = true
      listMyPayOrders(this.recordQuery).then(resp => {
        this.myRecordList = resp.rows
        this.recordTotal = resp.total
      }).finally(() => {
        this.recordLoading = false
      })
    },
    selectProduct(row) {
      this.selectedProduct = row
    },
    createOrder() {
      if (!this.selectedProduct) {
        this.$modal.msgError('请先选择充值产品')
        return
      }
      this.orderLoading = true
      createPayOrder({
        productId: this.selectedProduct.productId,
        payChannel: this.payChannel
      }).then(resp => {
        this.currentOrder = {
          outTradeNo: resp.data.outTradeNo,
          qrCode: resp.data.qrCode,
          tradeStatus: 'WAIT_PAY'
        }
        this.$modal.msgSuccess('下单成功，请完成扫码支付')
        this.startPoll()
      }).finally(() => {
        this.orderLoading = false
      })
    },
    checkOrder() {
      if (!this.currentOrder.outTradeNo) {
        this.$modal.msgWarning('请先创建订单')
        return
      }
      queryPayOrder(this.currentOrder.outTradeNo).then(resp => {
        const status = resp.data.tradeStatus
        this.currentOrder.tradeStatus = status
        if (status === 'SUCCESS') {
          this.$modal.msgSuccess('支付成功，积分已到账')
          this.clearPoll()
          this.loadMyRecord()
        } else if (status === 'CLOSED' || status === 'FAILED') {
          this.$modal.msgWarning('订单已关闭或支付失败')
          this.clearPoll()
          this.loadMyRecord()
        }
      })
    },
    startPoll() {
      this.clearPoll()
      this.pollTimer = setInterval(() => {
        this.checkOrder()
      }, 5000)
    },
    clearPoll() {
      if (this.pollTimer) {
        clearInterval(this.pollTimer)
        this.pollTimer = null
      }
    }
  }
}
</script>

<style scoped>
.online-pay-page .pay-panel {
  min-height: 460px;
}

.qr-result {
  margin-top: 12px;
}

.qr-title {
  margin-bottom: 8px;
  font-weight: 600;
}

.order-no,
.order-status {
  margin-top: 8px;
  color: #606266;
}

.my-record {
  margin-top: 16px;
}
</style>
