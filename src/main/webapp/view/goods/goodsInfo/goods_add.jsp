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
	<form class="add-form" id="goods-add-form" method="post">
        	<div class="panel panel-default">
	            <div class="panel-heading">新增用户</div>
	            <div class="panel-body table_add">
		            <table class="table half-table">
		                <tbody>
		                <tr>
		                	<th><span class="required">*</span>商品名称</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="最多可输入10个汉字" name="goodsName" value="">
		                        </div>
		                    </td>
		                    <th><span class="required">*</span>商品简称</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="输入简称"  name="goodsShortName" value="">
		                        </div>
		                    </td>
		                </tr>
						<tr>
							<th><span class="required">*</span>SPU</th>
							<td>
								<div class="form-group ">
									<input type="text" class="form-control"  placeholder="商品spu" name="goodsSpu" value="">
								</div>
							</td>
							<th>销售类型</th>
							<td>
								<div class="form-group ">
									<select class="form-control"  name="goodsType" id="goodsType">
										<option value="0" selected="selected">批发</option>
										<option value="1">零售</option>
										<option value="2">限购</option>
									</select>
								</div>
							</td>
						</tr>
		                <tr>
		                <th>所属类别</th>
		                     <td>
		                        <div class="form-group ">
		                            <select class="form-control"  name="goodsCategoryId" id="goodsCategoryId">
					        			<option value="1" selected="selected">食品</option>
					        			<option value="2">日用品</option>
										<option value="3">文具</option>
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
		var goodsName=$("input[name=goodsName]").val();
		var goodsShortName=$("input[name=goodsShortName]").val();
		var goodsSpu=$("input[name=goodsSpu]").val();
		if(goodsName==null || goodsName==''){
			alert("商品名称不能为空！");
			$("input[name=goodsName]").focus();
			return false;
		}
		if(goodsShortName==null || goodsShortName==''){
			alert("简称不能为空！");
			$("input[name=goodsShortName]").focus();
			return false;
		}
		if(goodsSpu==null || goodsSpu==''){
			alert("spu不能为空！");
			$("input[name=goodsSpu]").focus();
			return false;
		}else{
			$.ajax({
	 			type : "post",
	 			url : _path+"/invoicing/goods/info/add",
	 			 data:$('#goods-add-form').serialize(),// 你的formid
	              async:false,
	 			 	success : function(data) {
	 				if(data.code==1){
	 					alert("用户保存成功！");
	 					var url=_path+"/invoicing/goods/info/page/list";
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
		 var url=_path+"/invoicing/goods/info/page/list";
		 //调用跳转方法
		 goBackPage(url);
	});
</script>
</body>
</html>