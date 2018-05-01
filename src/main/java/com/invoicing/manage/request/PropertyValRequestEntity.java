

  
package com.invoicing.manage.request; 

import com.invoicing.manage.comment.entity.BaseRequestEntity;
 
/** 
 * 类名: PropertyValRequestEntity   
 * 类描述: TODO.
 */
@SuppressWarnings("serial")
public class PropertyValRequestEntity extends BaseRequestEntity{
	/**
	 * 属性ID
	 */
	private Long propertyId;
	
	/**
	 * 属性名
	 */
	private String propertyName;
	
	/**
	 * 属性值名
	 */
	private String propertyValue;

	public Long getPropertyId() {
		return propertyId;
	}

	public void setPropertyId(Long propertyId) {
		this.propertyId = propertyId;
	}

	public String getPropertyName() {
		return propertyName;
	}

	public void setPropertyName(String propertyName) {
		this.propertyName = propertyName;
	}

	public String getPropertyValue() {
		return propertyValue;
	}

	public void setPropertyValue(String propertyValue) {
		this.propertyValue = propertyValue;
	}
	
	
	

}
