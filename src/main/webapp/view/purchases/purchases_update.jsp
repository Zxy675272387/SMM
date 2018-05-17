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
		<li><a href="/index">订单管理</a></li>
		<li><a href="####">订单管理</a></li>
		<li><a href="####">编辑订单</a></li>
	</ol>
	<!-- user-form start  -->
	<form class="update-form" id="purchases-update-form" method="post">
			<input type="hidden" class="form-control"  name="id" value="${purchases.id}">
        	<div class="panel panel-default">
	            <div class="panel-heading">修改订单</div>
	            <div class="panel-body table_add">
		            <table class="table half-table">
						<tbody>
						<tr>
							<th><span class="required">*</span>订单号</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="输入订单号" name="purchaseOrderNo" value="${purchases.purchaseOrderNo}" readonly="true">
								</div>
							</td>
							<th><span class="required">*</span>采购数量</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="采购数量"  name="purchaseNumber" value="${purchases.purchaseNumber}">
								</div>
							</td>
						</tr>
						<tr>
							<th><span class="required">*</span>采购价格</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="输入采购价格" name="purchasePrice" value="${purchases.purchasePrice}">
								</div>
							</td>
							<th><span class="required">*</span>采购总额</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="采购总数"  name="totalAmount" value="${purchases.totalAmount}">
								</div>
							</td>
						</tr>
						<tr>
							<th>处理状态</th>
							<td>
								<div class="form-group ">
									<select class="form-control"  name="orderStatus" id="orderStatus">
										<option value="1" selected="selected">进行</option>
										<option value="2">已完成</option>
										<option value="3">下单失败</option>
										<option value="4">已撤销</option>
									</select>
								</div>
							</td>
							<th>状态</th>
							<td>
								<div class="form-group ">
									<select class="form-control"  name="orderType" id="orderType">
										<option value="1" selected="selected">进货</option>
										<option value="2">退货</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th>下单原因</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="请输入下单原因"  name="remark1" value="${purchases.remark1}">
								</div>
							</td>
                            <th><span class="required">*</span>订单物品</th>
                            <td>
                                <div class="form-group ">
                                    <input type="text" class="form-control"  placeholder="请输入订单货物"  name="remark2" value="${purchases.remark2}">
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
	var orderType = ${purchases.orderType};
$(document).ready(function(){
	  
	  
	});
	//编辑用户
	$("#addBtn").click(function (){
		var purchaseOrderNo=$("input[name=purchaseOrderNo]").val();
		var purchaseNumber=$("input[name=purchaseNumber]").val();
		var purchasePrice=$("input[name=purchasePrice]").val();
		var totalAmount=$("input[name=totalAmount]").val();
		var remark2=$("input[name=remark2]").val();
		if(purchaseOrderNo==null || purchaseOrderNo==''||isNaN(purchaseOrderNo)){
			alert("订单号不能为空或非数字！");
			$("input[name=purchaseOrderNo]").focus();
			return false;
		}
		if(purchaseOrderNo<0){
			alert("订单号不能为负！");
			$("input[name=purchaseOrderNo]").focus();
			return false;
		}
		if(purchaseNumber==null || purchaseNumber==''||isNaN(purchaseNumber)){
			alert("数量不能为空或非数字！");
			//timedTaskFun(2000,'登录名不能为空！','','err');
			$("input[name=purchaseNumber]").focus();
			return false;
		}
		if(purchaseNumber<0){
			alert("数量不能为负！");
			//timedTaskFun(2000,'登录名不能为空！','','err');
			$("input[name=purchaseNumber]").focus();
			return false;
		}
		if(purchasePrice==null || purchasePrice==''||isNaN(purchasePrice)){
			alert("采购价格不能为空或非数字！");
			$("input[name=purchasePrice]").focus();
			return false;
		}
		if(purchasePrice<0){
			alert("采购价格不能为负！");
			$("input[name=purchasePrice]").focus();
			return false;
		}
		if(totalAmount==null || totalAmount==''||isNaN(totalAmount)){
			alert("总价不能为空或非数字！");
			$("input[name=totalAmount]").focus();
			return false;
		}
		if(totalAmount<0){
			alert("总价不能为负！");
			$("input[name=purchasePrice]").focus();
			return false;
		}
		if(remark2==null || remark2==''){
			alert("订单货品不能为空！");
			$("input[name=remark2]").focus();
			return false;
		}else{
			$.ajax({
	 			type: "post",
	 			url : _path+"/invoicing/purchases/refund/update",
	 			 data:$('#purchases-update-form').serialize(),// 你的formid
	              async:false,
	 			 	success : function(data) {
	 				if(data.code==1){
	 					alert("修改成功！");
	 					var url=_path+"/invoicing/purchases/refund/page/list?flag="+orderType;
	 					goBackPage(url);
	 				}else{
	 					alert("修改失败！");
						var url=_path+"/invoicing/purchases/refund/page/list?flag="+orderType;
						goBackPage(url);
	 				}
	 			}
	         });
		}
	     
	});
	
	//取消
	$("#cancelBtn").click(function(){
		 var url=_path+"/invoicing/purchases/refund/page/list?flag="+orderType;
		 //调用跳转方法
		 goBackPage(url);
	});
</script>
</body>
</html>