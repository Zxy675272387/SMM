package com.invoicing.manage.request;

import com.invoicing.manage.comment.entity.BaseRequestEntity;

public class GoodsRequestEntity extends BaseRequestEntity{
	/**
     * 服务商品名称
     */
    private String goodsName;
    /**
     * 商品简称
     */
    private Long goodsSpu;
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public Long getGoodsSpu() {return goodsSpu;}
	public void setGoodsSpu(Long goodsSpu) {this.goodsSpu = goodsSpu;}
}
