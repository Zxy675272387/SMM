/** 
 * 项目名称:superMarketInvoicingManage 
 * 文件名称:OrgRequestEntity.java 
 * 包名:com.invoicing.manage.request 
 * 创建日期:2017年8月10日下午3:06:22 
 * 
*/  
  
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

}
