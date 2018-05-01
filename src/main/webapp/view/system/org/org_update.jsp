<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>编辑用户信息</title>
</head>
<body>
<div class="container-fluid">
	<ol class="breadcrumb">
		<span>当前位置：</span>
		<li><a href="/index">系统管理</a></li>
		<li><a href="####">机构管理</a></li>
		<li><a href="####">机构编辑</a></li>
	</ol>
	<!-- user-form start  -->
	<form class="update-form" id="org-update-form" method="post">
		<input type="hidden" class="form-control"  name="id" value="${org.id}">
		<div class="panel panel-default">
			<div class="panel-heading">机构编辑</div>
			<div class="panel-body table_add">
				<table class="table half-table">
					<tbody>
					<tr>
						<th><span class="required">*</span>机构名称</th>
						<td>
							<div class="form-group ">
								<input type="text" class="form-control"  placeholder="最多可输入20个汉字" name="orgName" value="${org.orgName}">
							</div>
						</td>
						<th><span class="required">*</span>机构编码</th>
						<td>
							<div class="form-group ">
								<input type="text" class="form-control"  placeholder="请输入编码"  name="orgNum" value="${org.orgNum}">
							</div>
						</td>
					</tr>
					<tr>
						<th><span class="required">*</span>联系人</th>
						<td>
							<div class="form-group ">
								<input type="text" class="form-control"  placeholder="联系人" name="contactName" value="${org.contactName}">
							</div>
						</td>
						<th><span class="required">*</span>手机号码</th>
						<td>
							<div class="form-group ">
								<input type="text" class="form-control"  placeholder="请输入手机号"  name="contactPhone" value="${org.contactPhone}">
							</div>
						</td>
					</tr>
					<tr>
						<th>销售类型</th>
						<td>
							<div class="form-group ">
								<select class="form-control"  name="pid" id="pid">
									<option value="1" selected="selected">家家利总店</option>
									<option value="0">顶级机构</option>
								</select>
							</div>
						</td>
						<th></th>
						<td>
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
		/*var userName=$("input[name=userName]").val();
		var loginName=$("input[name=loginName]").val();
		var phone=$("input[name=phone]").val();
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
		if(phone==null || phone==''){
			alert("手机号不能为空！");
			$("input[name=phone]").focus();
			return false;
		}else*/{
			$.ajax({
				type : "post",
				url : _path+"/invoicing/system/org/update",
				data:$('#org-update-form').serialize(),// 你的formid
				async:false,
				success : function(data) {
					if(data.code==1){
						alert("修改成功！");
						var url=_path+"/invoicing/system/org/list";
						goBackPage(url);
					}else{
						alert("修改失败！");
					}
				}
			});
		}

	});

	//取消
	$("#cancelBtn").click(function(){
		var url=_path+"/invoicing/system/org/list";
		//调用跳转方法
		goBackPage(url);
	});
</script>
</body>
</html>