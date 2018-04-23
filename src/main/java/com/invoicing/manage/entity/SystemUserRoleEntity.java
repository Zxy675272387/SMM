package com.invoicing.manage.entity;

import com.invoicing.manage.comment.entity.BaseEntity;

/**
 * 用户
 */

@SuppressWarnings("serial")
public class SystemUserRoleEntity extends BaseEntity {
  
    
    /**
     * 主键
     */
    private Long id;
    /**
     * 用户ID
     */
    private Long userId;
    /**
     * 角色ID
     */
    private Long roleId;

	/**
	 * 设置主键
	 */
    public void setId(Long id) {
        this.id = id;
    }
    /**
     * 获取主键
     */
    public Long getId() {
        return this.id;
    }
	/**
	 * 设置用户ID
	 */
    public void setUserId(Long userId) {
        this.userId = userId;
    }
    /**
     * 获取用户ID
     */
    public Long getUserId() {
        return this.userId;
    }
	/**
	 * 设置角色ID
	 */
    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }
    /**
     * 获取角色ID
     */
    public Long getRoleId() {
        return this.roleId;
    }

}