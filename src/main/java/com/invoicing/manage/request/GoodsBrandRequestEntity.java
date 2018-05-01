
  
package com.invoicing.manage.request; 

import com.invoicing.manage.comment.entity.BaseRequestEntity;
 
/** 
 * 类名: AreaEntityRequestEntity   
 * 类描述: TODO.
 */
@SuppressWarnings("serial")
public class GoodsBrandRequestEntity extends BaseRequestEntity{
	
	/**
     * 品牌中文名
     */
    private String brandName;
    /**
     * 品牌英文名
     */
    private String brandEnglishName;
    /**
     * 品牌首字母
     */
    private String brandInitial;
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getBrandEnglishName() {
		return brandEnglishName;
	}
	public void setBrandEnglishName(String brandEnglishName) {
		this.brandEnglishName = brandEnglishName;
	}
	public String getBrandInitial() {
		return brandInitial;
	}
	public void setBrandInitial(String brandInitial) {
		this.brandInitial = brandInitial;
	}
    
    
}
