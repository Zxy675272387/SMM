
  
package com.invoicing.manage.request; 

import com.invoicing.manage.comment.entity.BaseRequestEntity;
 
/** 
 * 类名: OrgRequestEntity   
 * 类描述: TODO.
 */
@SuppressWarnings("serial")
public class OrgRequestEntity extends BaseRequestEntity{
	/**
	 * 机构ＩＤ
	 */
	private Long id;
	
	/**
	 * 上级机构ID
	 */
	private Long pid;
	
	/**
	 * 机构名称
	 */
	private String orgName;
	private String parentOrgName;
	public Long getId() {return id;}
	public void setId(Long id) {this.id = id;}
	public Long getPid() {return pid;}
	public void setPid(Long pid) {this.pid = pid;}
	public String getOrgName() {return orgName;}
	public void setOrgName(String orgName) {this.orgName = orgName;}
	public String getParentOrgName() {return parentOrgName;}
	public void setParentOrgName(String parentOrgName) {this.parentOrgName = parentOrgName;}
}
