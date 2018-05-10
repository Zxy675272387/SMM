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
		<li><a href="/index">送管理</a></li>
		<li><a href="####">价格管理</a></li>
		<li><a href="####">添加价格</a></li>
	</ol>
	<!-- user-form start  -->
	<form class="add-form" id="price-add-form" method="post">
        	<div class="panel panel-default">
	            <div class="panel-heading">新增价格</div>
	            <div class="panel-body table_add">
		            <table class="table half-table">
						<tbody>
						<tr>
							<th><span class="required">*</span>商品编号</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="根据商品列表查询" name="goodsId" value="" >
								</div>
							</td>
							<th><span class="required">*</span>采购价</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="采购价" name="salePrice" value="">
								</div>
							</td>
						</tr>
						<tr>
							<th><span class="required">*</span>市场价</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="市场价"  name="marketPrice" value="">
								</div>
							</td>
							<th><span class="required">*</span>销售价</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="输入销售价"  name="purchasePrice" value="">
								</div>
							</td>
						</tr>
						<tr>
							<th>标注</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="标注"  name="remark1" value="">
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
	//添加
	$("#addBtn").click(function (){
		var goodsId=$("input[name=goodsId]").val();
		var salePrice=$("input[name=salePrice]").val();
		var marketPrice=$("input[name=marketPrice]").val();
		var purchasePrice=$("input[name=purchasePrice]").val();
		if(goodsId==null || goodsId==''){
			alert("商品id不能为空！");
			$("input[name=goodsId]").focus();
			return false;
		}
		if (goodsId < 0 ) {
			alert("id不能为负！");
			$("input[name=phone]").focus();
			return false;
		}
		if(salePrice==null || salePrice==''){
			alert("价格不能为空！");
			//timedTaskFun(2000,'登录名不能为空！','','err');
			$("input[name=salePrice]").focus();
			return false;
		}
		if (salePrice < 0 ) {
			alert("价格不能为负！");
			$("input[name=phone]").focus();
			return false;
		}
		if(marketPrice==null || marketPrice==''){
			alert("价格不能为空！");
			$("input[name=marketPrice]").focus();
			return false;
		}
		if (marketPrice < 0 ) {
			alert("价格不能为负！");
			$("input[name=phone]").focus();
			return false;
		}
		if(purchasePrice==null || purchasePrice==''){
			alert("价格不能为空！");
			$("input[name=purchasePrice]").focus();
			return false;
		}
		if (purchasePrice < 0 ) {
			alert("价格不能为负！");
			$("input[name=phone]").focus();
			return false;
		} else{
			$.ajax({
	 			type : "post",
	 			url : _path+"/invoicing/goods/price/add",
	 			 data:$('#price-add-form').serialize(),// 你的formid
	              async:false,
	 			 	success : function(data) {
	 				if(data.code==1){
	 					alert("用户保存成功！");
	 					var url=_path+"/invoicing/goods/price/page/list";
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
		 var url=_path+"/invoicing/goods/price/page/list";
		 //调用跳转方法
		 goBackPage(url);
	});
</script>
</body>
</html>