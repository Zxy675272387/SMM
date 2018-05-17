<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>机构添加页</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/style.css" />
</head>
<body>
<div class="container-fluid">
	<ol class="breadcrumb">
		<span>当前位置：</span>
		<li><a href="/index">系统管理</a></li>
		<li><a href="####">机构管理</a></li>
		<li><a href="####">新增机构</a></li>
	</ol>
	<!-- user-form start  -->
	<form class="add-form" id="org-add-form" method="post">
		<div class="panel panel-default">
			<div class="panel-heading">新增机构</div>
			<div class="panel-body table_add">
				<table class="table half-table">
					<tbody>
					<tr>
						<th><span class="required">*</span>机构名称</th>
						<td>
							<div class="form-group ">
								<input type="text" class="form-control"  placeholder="输入机构名称" name="orgName" value="">
							</div>
						</td>
						<th><span class="required">*</span>机构编码</th>
						<td>
							<div class="form-group ">
								<input type="text" class="form-control"  placeholder="请输入编码"  name="orgNum" value="">
							</div>
						</td>
					</tr>
					<tr>
						<th><span class="required">*</span>联系人</th>
						<td>
							<div class="form-group ">
								<input type="text" class="form-control"  placeholder="联系人" name="contactName" value="">
							</div>
						</td>
						<th><span class="required">*</span>手机号码</th>
						<td>
							<div class="form-group ">
								<input type="text" class="form-control"  placeholder="请输入手机号"  name="contactPhone" value="">
							</div>
						</td>
					</tr>
					<tr>
						<th>上级机构</th>
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
	//添加用户
	$("#addBtn").click(function (){
		var orgName=$("input[name=orgName]").val();
		var orgNum=$("input[name=orgNum]").val();
		var contactName=$("input[name=contactName]").val();
		var contactPhone=$("input[name=contactPhone]").val();

		if(orgName==null || orgName==''){
			alert("机构名不能为空！");
			$("input[name=orgName]").focus();
			return false;
		}
		if(contactName==null || contactName==''){
			alert("联系人不能为空！");
			//timedTaskFun(2000,'登录名不能为空！','','err');js模版提供的方法
			$("input[name=contactName]").focus();
			return false;
		}
		if(orgNum==null || orgNum==''){
			alert("编号不能为空！");
			$("input[name=orgNum]").focus();
			return false;
		}
		if(contactPhone==null || contactPhone==''||isNaN(contactPhone)){
			alert("手机号不能为空或非数字！");
			$("input[name=contactPhone]").focus();
			return false;
		}
		if(contactPhone.toString().length!=11)
		{
			alert("手机号必须为11位");
			$("input[name=contactPhone]").focus();
			return false;
		}else {
			$.ajax({
				type: "post",
				url: _path + "/invoicing/system/org/add",
				data: $('#org-add-form').serialize(),// 你的formid
				async: false,
				success: function (data) {
					if (data.code == 1) {
						alert("机构保存成功！");
						var url = _path + "/invoicing/system/org/list";
						goBackPage(url);
					} else {
						alert("用户保存失败！");
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