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
		<li><a href="####">商品管理</a></li>
		<li><a href="####">编辑分类</a></li>
	</ol>
	<!-- user-form start  -->
	<form class="add-form" id="category-update-form" method="post">
			<input type="hidden" class="form-control"  name="id" value="${goodsCategory.id}">
        	<div class="panel panel-default">
	            <div class="panel-heading">编辑分类</div>
	            <div class="panel-body table_add">
		            <table class="table half-table">
		                <tbody>
		                <tr>
		                	<th><span class="required">*</span>分类名称</th>
		                    <td>
		                        <div class="form-group ">
		                            <input type="text" class="form-control"  placeholder="最多可输入10个汉字" name="categoryName" value="${goodsCategory.categoryName}">
		                        </div>
		                    </td>
							<th>上级目录</th>
							<td>
								<div class="form-group ">
									<select class="form-control"  name="parentId" id="parentId">
										<option value="1" selected="selected">食品</option>
										<option value="2">日用品</option>
										<option value="3">文具</option>
										<option value="0">无</option>
									</select>
								</div>
							</td>
		                </tr>
		                <tr>
		                   <th>状态</th>
		                     <td>
		                        <div class="form-group ">
		                            <select class="form-control"  name="categoryLevel" id="categoryLevel">
					        			<option value="1" >1级</option>
					        			<option value="2"  selected="selected">2级</option>
										<option value="3" >3级</option>
					        		</select>
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
	var categoryName=$("input[name=categoryName]").val();
	var categoryLevel=$("input[name=categoryLevel]").val();
	var parentId=$("input[name=parentId]").val();
	if(categoryName==null || categoryName==''){
		alert("名称不能为空！");
		$("input[name=categoryName]").focus();
		return false;
	} else{
		$.ajax({
			type : "post",
			url : _path+"/invoicing/goods/category/update",
			data:$('#category-update-form').serialize(),// 你的formid
			async:false,
			success : function(data) {
				if(data.code==1){
					alert("用户更新成功！");
					var url=_path+"/invoicing/goods/category/page/list";
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
		 var url=_path+"/invoicing/goods/category/page/list";
		 //调用跳转方法
		 goBackPage(url);
	});
</script>
</body>
</html>