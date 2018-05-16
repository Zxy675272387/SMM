package com.invoicing.manage.request;

import com.invoicing.manage.comment.entity.BaseRequestEntity;

import java.util.Date;

@SuppressWarnings("serial")
public class SaleRecordRequestEntity extends BaseRequestEntity{
	
	 /**
     * 支付方式
     */
    private Integer payMethod;
    
    /**
     * 收银员姓名
     */
    private String cashierName;
    
    /**
     * 商品名称
     */
    private String goodsName;
	private Date updateTime;
	private float total;
	public Integer getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(Integer payMethod) {
		this.payMethod = payMethod;
	}

	public String getCashierName() {
		return cashierName;
	}

	public void setCashierName(String cashierName) {
		this.cashierName = cashierName;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}
}
