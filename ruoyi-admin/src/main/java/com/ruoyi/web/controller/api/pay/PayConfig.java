package com.ruoyi.web.controller.api.pay;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 支付配置类
 */
@Component
@ConfigurationProperties(prefix = "pay")
public class PayConfig {
    
    /**
     * 支付宝配置
     */
    private Alipay alipay;
    
    /**
     * 微信支付配置
     */
    private Wechat wechat;
    
    public static class Alipay {
        private String appId;
        private String appPrivateKey;
        private String alipayPublicKey;
        private String notifyUrl;
        private String returnUrl;
        private String domain;

        // getter and setter
        public String getAppId() {
            return appId;
        }
        public void setAppId(String appId) {
            this.appId = appId;
        }
        public String getAppPrivateKey() {
            return appPrivateKey;
        }
        public void setAppPrivateKey(String appPrivateKey) {
            this.appPrivateKey = appPrivateKey;
        }
        public String getAlipayPublicKey() {
            return alipayPublicKey;
        }
        public void setAlipayPublicKey(String alipayPublicKey) {
            this.alipayPublicKey = alipayPublicKey;
        }
        public String getNotifyUrl() {
            return notifyUrl;
        }
        public void setNotifyUrl(String notifyUrl) {
            this.notifyUrl = notifyUrl;
        }
        public String getReturnUrl() {
            return returnUrl;
        }
        public void setReturnUrl(String returnUrl) {
            this.returnUrl = returnUrl;
        }

        public String getDomain() {
            return domain;
        }

        public void setDomain(String domain) {
            this.domain = domain;
        }
    }
    
    public static class Wechat {
        private String appId;
        private String appSecret;
        private String mchId;
        private String mchKey;
        private String notifyUrl;
        private String certPath;
        private String domain;
        
        // getter and setter
        public String getAppId() {
            return appId;
        }
        public void setAppId(String appId) {
            this.appId = appId;
        }
        public String getAppSecret() {
            return appSecret;
        }
        public void setAppSecret(String appSecret) {
            this.appSecret = appSecret;
        }
        public String getMchId() {
            return mchId;
        }
        public void setMchId(String mchId) {
            this.mchId = mchId;
        }
        public String getMchKey() {
            return mchKey;
        }
        public void setMchKey(String mchKey) {
            this.mchKey = mchKey;
        }
        public String getNotifyUrl() {
            return notifyUrl;
        }
        public void setNotifyUrl(String notifyUrl) {
            this.notifyUrl = notifyUrl;
        }
        public String getCertPath() {
            return certPath;
        }
        public void setCertPath(String certPath) {
            this.certPath = certPath;
        }

        public String getDomain() {
            return domain;
        }

        public void setDomain(String domain) {
            this.domain = domain;
        }
    }
    
    // getter and setter
    public Alipay getAlipay() {
        return alipay;
    }
    public void setAlipay(Alipay alipay) {
        this.alipay = alipay;
    }
    public Wechat getWechat() {
        return wechat;
    }
    public void setWechat(Wechat wechat) {
        this.wechat = wechat;
    }
}
