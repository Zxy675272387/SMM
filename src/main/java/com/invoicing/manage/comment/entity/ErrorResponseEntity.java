package com.invoicing.manage.comment.entity;

/**
  * 类名称： ErrorResponseEntity
  * 类描述：响应异常实体类
  */
@SuppressWarnings("serial")
public class ErrorResponseEntity extends ResponseEntity
{
  public ErrorResponseEntity()
  {
    super(Integer.valueOf(1000), "系统异常"); }

  public ErrorResponseEntity(String msg) {
    super(Integer.valueOf(0), msg); }

  public ErrorResponseEntity(Integer code, String msg) {
    super(code, msg);
  }
}