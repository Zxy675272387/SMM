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
		<li><a href="/index">商品管理</a></li>
		<li><a href="####">单位管理</a></li>
		<li><a href="####">编辑单位</a></li>
	</ol>
	<!-- user-form start  -->
	<form class="add-form" id="unit-update-form" method="post">
			<input type="hidden" class="form-control"  name="id" value="${unit.id}">
        	<div class="panel panel-default">
	            <div class="panel-heading">新增用户</div>
	            <div class="panel-body table_add">
		            <table class="table half-table">
		                <tbody>
		                <tr>
		                	<th><span class="required">*</span>单位名称</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="输入单位值" name="unitName" value="${unit.unitName}">
		                        </div>
		                    </td>
		                    <th><span class="required">*</span>英文名称</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="请输入字母"  name="unitEnglishName" value="${unit.unitEnglishName}">
		                        </div>
		                    </td>
		                </tr>
		                <tr>
		                    <th><span class="required">*</span>最小单位</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="请输入最小单位"  name="minimumUnitType" value="${unit.minimumUnitType}">
		                        </div>
		                    </td>

							<th><span class="required">*</span>最小单位值</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="请输入最小单位值"  name="minimumUnitVal" value="${unit.minimumUnitVal}">
								</div>
							</td>
						</tr>
						<tr>
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
	var unitName=$("input[name=unitName]").val();
	var unitEnglishName=$("input[name=unitEnglishName]").val();
	var minimumUnitType=$("input[name=minimumUnitType]").val();
	var minimumUnitVal=$("input[name=minimumUnitVal]").val();
		var zxy=document.getElementById('state');
		if(zxy.checked)
		{
			zxy.value=1;
		}
		else {
			zxy.checked=true;
			zxy.value=0;
		}
	if(unitName==null || unitName==''){
		alert("单位名称不能为空！");
		$("input[name=unitName]").focus();
		return false;
	}
	if(unitEnglishName==null || unitEnglishName==''){
		alert("英文名称不能为空！");
		//timedTaskFun(2000,'登录名不能为空！','','err');
		$("input[name=unitEnglishName]").focus();
		return false;
	}
	if(minimumUnitType==null || minimumUnitType==''){
		alert("最小单位类型不能为空！");
		$("input[name=minimumUnitType]").focus();
		return false;
	}
	if(minimumUnitVal==null || minimumUnitVal==''){
		alert("最小值不能为空！");
		$("input[name=minimumUnitVal]").focus();
		return false;
	}else{
			$.ajax({
	 			type : "post",
	 			url : _path+"/invoicing/base/date/unit/update",
	 			 data:$('#unit-update-form').serialize(),// 你的formid
	              async:false,
	 			 	success : function(data) {
	 				if(data.code==1){
	 					alert("用户保存成功！");
	 					var url=_path+"/invoicing/base/date/unit/page/list";
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
		 var url=_path+"/invoicing/base/date/unit/page/list";
		 //调用跳转方法
		 goBackPage(url);
	});
</script>
</body>
</html>