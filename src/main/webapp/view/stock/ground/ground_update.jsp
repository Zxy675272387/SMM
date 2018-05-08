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
		<li><a href="/index">库存管理</a></li>
		<li><a href="####">库存信息管理</a></li>
		<li><a href="####">编辑库存</a></li>
	</ol>
	<!-- user-form start  -->
	<form class="add-form" id="user-update-form" method="post">
			<input type="hidden" class="form-control"  name="id" value="${stock.id}">
        	<div class="panel panel-default">
	            <div class="panel-heading">库存修改</div>
	            <div class="panel-body table_add">
		            <table class="table half-table">
						<tbody>
						<tr>
							<th><span class="required">*</span>商品名称</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="输入商品名称" name="instruction" value="${stock.instruction}">
								</div>
							</td>
							<th><span class="required">*</span>入库数量</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="库存地名称"  name="number" value="${stock.number}">
								</div>
							</td>
						</tr>
						<tr>
							<th><span class="required">*</span>库存地名称</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="输入库存地" name="name" value="${stock.name}">
								</div>
							</td>
							<th><span class="required">*</span>备注</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="输入备注" name="remark1" value="${stock.remark1}">
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
		var instruction=$("input[name=instruction]").val();
		var number=$("input[name=number]").val();
		var name=$("input[name=name]").val();
		if(instruction==null || instruction==''){
			alert("商品名称不能为空！");
			$("input[name=instruction]").focus();
			return false;
		}
		if(number==null || number==''){
			alert("数量不能为空！");
			//timedTaskFun(2000,'登录名不能为空！','','err');
			$("input[name=number]").focus();
			return false;
		}
		if(name==null || name==''){
			alert("库存地不能为空！");
			$("input[name=name]").focus();
			return false;
		}else{
			$.ajax({
	 			type : "post",
	 			url : _path+"/invoicing/stock/ground/update",
	 			 data:$('#user-update-form').serialize(),// 你的formid
	              async:false,
	 			 	success : function(data) {
	 				if(data.code==1){
	 					alert("保存成功！");
	 					var url=_path+"/invoicing/stock/ground/page/list?flag=1";
	 					goBackPage(url);
	 				}else{
	 					alert("保存失败！");
	 				}
	 			}
	         });
		}
	     
	});
	
	//取消
	$("#cancelBtn").click(function(){
		 var url=_path+"/invoicing/stock/ground/page/list?flag=1";
		 //调用跳转方法
		 goBackPage(url);
	});
</script>
</body>
</html>