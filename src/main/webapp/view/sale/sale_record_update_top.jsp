<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>销售记录添加页</title>
</head>
<body>
<div class="container-fluid">
	<ol class="breadcrumb">
		<span>当前位置：</span>
		<li><a href="#">报表统计</a></li>
		<li><a href="#">销售额统计</a></li>
		<li><a href="#">添加销售（演示用，并非实际产生销售记录的接口）</a></li>
	</ol>
	<!-- user-form start  -->
	<form class="add-form" id="user-add-form" method="post">
		<div class="panel panel-default">
			<input type="text" style="display: none" name="id" value="${brand.id}">
			<div class="panel-heading">新增销售记录</div>
			<div class="panel-body table_add">
				<table class="table half-table">
					<tbody>
					<tr>
						<th><span class="required">*</span>商品名称</th>
						<td>
							<div class="form-group ">
								<input type="text" class="form-control" placeholder="" name="goodsName" disabled
									   value="${brand.goodsName}">
							</div>
						</td>
						<th><span class="required">*</span>单价</th>
						<td>
							<div class="form-group ">
								<input type="text" class="form-control" placeholder="请输入单价" name="salePrice" disabled value="${brand.salePrice}">
							</div>
						</td>
					</tr>
					<tr>
						<th><span class="required">*</span>数量</th>
						<td>
							<div class="form-group ">
								<input type="text" class="form-control" placeholder="请输入数量" name="saleNumber" disabled
									   value="${brand.saleNumber}">
							</div>
						</td>
						<th><span class="required">*</span>应收金额</th>
						<td>
							<div class="form-group ">
								<input type="text" class="form-control" placeholder="请输入应收金额" name="receivableAmount" disabled value="${brand.receivableAmount}">
							</div>
						</td>
					</tr>
					<tr>
						<th>支付类型</th>
						<td>
							<div class="form-group ">
								<select class="form-control" name="payMethod" id="payMethod"  disabled>
									<option value="1" selected="selected">现金</option>
									<option value="2">银行卡</option>
									<option value="3">预付卡</option>
									<option value="4">微信</option>
									<option value="5">支付宝</option>
									<option value="6">其他</option>
								</select>
							</div>
						</td>
						<th><span class="required">*</span>实收金额</th>
						<td>
							<div class="form-group ">
								<input type="text" class="form-control" placeholder="请输入实收金额" name="paidAmount" disabled value="${brand.paidAmount}">
							</div>
						</td>
					</tr>
					<tr>
						<th><span class="required">*</span>收银员姓名</th>
						<td>
							<div class="form-group ">
								<input type="text" class="form-control" placeholder="请输入收银员姓名" name="cashierName" disabled
									   value="${brand.cashierName}">
							</div>
						</td>
						<th><span class="required">*</span>找零金额</th>
						<td>
							<div class="form-group ">
								<input type="text" class="form-control" placeholder="请输入找零金额" name="changeAmount" disabled value="${brand.changeAmount}">
							</div>
						</td>
					</tr>
					</tbody>
				</table>
				<div class="col-md-12 text-center btn-margin">
					<button class="btn" id="cancelBtn" type="button" name="cancelButton">
						<i class="icon-undo bigger-110"></i>
						返回
					</button>
				</div>
			</div>
		</div>
	</form>
	<!-- user-form end -->
</div>
<script type="text/javascript">
    //取消
    $("#cancelBtn").click(function () {
        var url = _path + "/invoicing/sale/record/page/list/top";
        //调用跳转方法
        goBackPage(url);
    });
</script>
</body>
</html>