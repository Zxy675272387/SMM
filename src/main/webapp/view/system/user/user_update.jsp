<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑用户信息</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/style.css" />
</head>
<body>
<div class="container-fluid">
	<ol class="breadcrumb">
		<span>当前位置：</span>
		<li><a href="/index">系统管理</a></li>
		<li><a href="####">用户管理</a></li>
		<li><a href="####">编辑用户</a></li>
	</ol>
	<!-- user-form start  -->
	<form class="add-form" id="user-update-form" method="post">
			<input type="hidden" class="form-control"  name="id" value="${user.id}">
        	<div class="panel panel-default">
	            <div class="panel-heading">编辑用户</div>
	            <div class="panel-body table_add">
		            <table class="table half-table">
		                <tbody>
		                <tr>
		                	<th><span class="required">*</span>用户姓名</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="最多可输入20个汉字" name="userName" value="${user.userName}">
		                        </div>
		                    </td>
		                    <th><span class="required">*</span>登录账号</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="请输入字母"  name="loginName" value="${user.loginName}">
		                        </div>
		                    </td>
		                </tr>
		                <tr>
		                    <th><span class="required">*</span>手机号码</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="请输入手机号"  name="phone" value="${user.phone}">
		                        </div>
		                    </td>
							<th><span class="required">*</span>用户状态</th>
							<td><div class="wrapper">
								<section class="fields section">
									<div class="fields__item">
										<input type="checkbox" class="uiswitch"  name="state" id="state"  value="0">
										<h6>默认关闭</h6>
									</div>
								</section>
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
$(document).ready(function(){
	  
	  
	});
	//编辑用户
	$("#addBtn").click(function (){
		var userName=$("input[name=userName]").val();
		var loginName=$("input[name=loginName]").val();
		var phone=$("input[name=phone]").val();
		var zxy=document.getElementById('state');
		if(userName==null || userName==''){
			alert("姓名不能为空！");
			$("input[name=userName]").focus();
			return false;
		}
		if(loginName==null || loginName==''){
			alert("登录名不能为空！");
			$("input[name=loginName]").focus();
			return false;
		}
		if(phone==null || phone==''||isNaN(phone)){
			alert("手机号不能为空或非数字！");
			$("input[name=contactPhone]").focus();
			return false;
		}else{
			if (zxy.checked) {
				zxy.value = 1;
			}
			else{
				zxy.checked = true;
				zxy.value = 0;
			}
			$.ajax({
	 			type : "post",
	 			url : _path+"/invoicing/system/user/update",
	 			 data:$('#user-update-form').serialize(),// 你的formid
	              async:false,
	 			 	success : function(data) {
	 				if(data.code==1){
	 					alert("用户保存成功！");
	 					var url=_path+"/invoicing/system/user/list";
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
		 var url=_path+"/invoicing/system/user/list";
		 //调用跳转方法
		 goBackPage(url);
	});
</script>
</body>
</html>