
  
package com.invoicing.manage.request; 

import com.invoicing.manage.comment.entity.BaseRequestEntity;

/** 
 * 类名: AreaEntityRequestEntity   
 * 类描述: TODO.
 */
@SuppressWarnings("serial")
public class StockRequestEntity extends BaseRequestEntity{
    private String name;
    private String instruction;
    private Long number;

	public String getName() {
		return name;
	}

	public String getInstruction() {
		return instruction;
	}

	public Long getNumber() {
		return number;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setInstruction(String instruction) {
		this.instruction = instruction;
	}

	public void setNumber(Long number) {
		this.number = number;
	}
}
