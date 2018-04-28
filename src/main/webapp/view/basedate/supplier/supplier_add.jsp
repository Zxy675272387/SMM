<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户添加页</title>
</head>
<body>
<div class="container-fluid">
	<ol class="breadcrumb">
		<span>当前位置：</span>
		<li><a href="/index">系统管理</a></li>
		<li><a href="####">用户管理</a></li>
		<li><a href="####">添加用户</a></li>
	</ol>
	<!-- user-form start  -->
	<form class="add-form" id="user-add-form" method="post">
        	<div class="panel panel-default">
	            <div class="panel-heading">新增用户</div>
	            <div class="panel-body table_add">
		            <table class="table half-table">
						<tbody>
						<tr>
							<th><span class="required">*</span>供应商名称</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="输入供应商名称" name="supplierName" value="${supplier.supplierName}">
								</div>
							</td>
							<th><span class="required">*</span>供应商简称</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="供应商简称"  name="supplierShortName" value="${supplier.supplierShortName}">
								</div>
							</td>
						</tr>
						<tr>
							<th><span class="required">*</span>联系人</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="联系人姓名"  name="linkmanName" value="${supplier.linkmanName}">
								</div>
							</td>
							<th><span class="required">*</span>联系人电话</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="联系人电话"  name="linkmanPhone" value="${supplier.linkmanPhone}">
								</div>
							</td>
						</tr>
						<tr>
							<th><span class="required">*</span>联系人邮箱</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="联系人邮箱"  name="linkEmail" value="${supplier.linkEmail}">
								</div>
							</td>
							<th>所在省份</th>
							<td>
								<div class="form-group ">
									<select class="form-control"  name="supplierAddress" id="supplierAddress">
										<option value="四川省" >四川省</option>
										<option value="广东省"  selected="selected">广东省</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th>详细地址</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="输入详细地址"  name="supplierAddress" value="">
								</div>
							</td>
						</tr>
						</tbody>
		            </table>
			        <div class="col-md-12 text-center btn-margin">
	                    <button class="btn btn-info" type="button"  id="addBtn">
					        <i class="icon-ok bigger-110"></i>           
					                    提交
	                    </button>
	                    <button class="btn" id="cancelBtn" type="button" name="cancelButton">
	                    	<i class="icon-undo bigger-110"></i>  
	                    	取消
	                    </button>
	                </div>
	           	</div>
            </div>
        </form>
	<!-- user-form end -->
</div>
<script type="text/javascript">
	//添加用户
	$("#addBtn").click(function (){
		/*var userName=$("input[name=userName]").val();
		var loginName=$("input[name=loginName]").val();
		var password=$("input[name=password]").val();
		var phone=$("input[name=phone]").val();
		if(userName==null || userName==''){
			alert("姓名不能为空！");
			$("input[name=userName]").focus();
			return false;
		}
		if(loginName==null || loginName==''){
			alert("登录名不能为空！");
			//timedTaskFun(2000,'登录名不能为空！','','err');
			$("input[name=loginName]").focus();
			return false;
		}
		if(password==null || password==''){
			alert("密码不能为空！");
			$("input[name=password]").focus();
			return false;
		}
		if(phone==null || phone==''){
			alert("手机号不能为空！");
			$("input[name=phone]").focus();
			return false;
		}else*/{
			$.ajax({
	 			type : "post",
	 			url : _path+"/invoicing/base/date/supplier/add",
	 			 data:$('#user-add-form').serialize(),// 你的formid
	              async:false,
	 			 	success : function(data) {
	 				if(data.code==1){
	 					alert("用户保存成功！");
	 					var url=_path+"/invoicing/base/date/supplier/page/list";
	 					goBackPage(url);
	 				}else{
	 					alert("用户保存失败！");
	 				}
	 			}
	         });
		}
	     
	});
	
	//取消
	$("#cancelBtn").click(function(){
		 var url=_path+"/invoicing/base/date/supplier/page/list";
		 //调用跳转方法
		 goBackPage(url);
	});
</script>
</body>
</html>