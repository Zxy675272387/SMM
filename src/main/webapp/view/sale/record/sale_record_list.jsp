<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<style type="text/css">
.brand_logo {
	width: 25px;
	height: 25px;
}
</style>
<div class="container-fluid">
	<ol class="breadcrumb">
		<span>当前位置：</span>
		<li><a href="#">销售管理</a></li>
		<li><a href="#">销售记录管理</a></li>
	</ol>

	<!-- 列表：查询条件组装  start -->
	<div class="panel panel-default form-search">
		<div class="panel-body">
			<div class="conditions_team">
				<input type="text" name="goodsName" class="form-control"placeholder="商品名称">
				<!--<input type="text" name="total" id="total"  class="form-control" readonly="true" value="总盈利额为：${total}元">-->
				<h1 align="center">总盈利额为：${total}元</h1>
			</div>
		</div>
		<div class="panel-footer">
			<button type="button" id="searchBtn" class="btn btn-primary">
				<i class="icon_search"></i>
				查询
			</button>
			<button type="button" id="resetBtn" class="btn btn-success">
				<i class="icon-reply icon-only"></i>
				重置
			</button>
			<button type="button" id="addBtn" class="btn btn-primary">
			<i class="icon_add"></i>
				新增
			</button>
		</div>
	</div>
	<!-- 列表：查询条件组装  end -->
	<!-- 列表：查询分页列表 start -->
	<div class="area_table_content cloud_list">
		<div id="buttonsId" class="row list-title">
			<div class="col-md-4">
				<h4>销售记录列表</h4>
			</div>
		</div>
	</div>
</div>
	<!-- 列表：查询分页列表 end -->
	<script type="text/javascript">
	$(document).ready(function(){
        var buttonsArr =[];
        getData();
        function getData(){
            var _options ={
                url:_path+"/invoicing/sale/record/page/list"
                ,checkAll:false
                //查询条件
                ,data:{'goodsName':$("[name=goodsName]").val()}
                ,cloumns:[
					 {name:'商品名称',value:'goodsName'}
                    ,{name:'单价',value:'salePrice',type:"function", fun : function(obj){
	                	return obj.salePrice+"元";;
	                    }
	                  }
                    ,{name:'数量',value:'saleNumber'}
                    ,{name:'销售总额',value:'paidAmount',type:"function", fun : function(obj){
	                	return obj.paidAmount+"元";;
	                    }
	                  }
					,{name:'价格',value:'paidAmount',type:"function", fun : function(obj){
						return obj.salePrice*obj.saleNumber+"元";;
					}
					}
	              	/*,{name:'实收金额',value:'receivableAmount',type:"function", fun : function(obj){
		                	return obj.receivableAmount+".00元";;
	                    }
	                  }
	              	,{name:'找零金额',value:'changeAmount',type:"function", fun : function(obj){
	                	return obj.changeAmount+".00元";;
	                    }
	                  }*/
	              	
	              	,{name:'支付方式',value:'payMethod',type:"function", fun : function(obj){
	              		var html="";
		              		if(obj.payMethod==1){
		              			html+="现金";
		              		}else if(obj.payMethod==2){
		              			html+="银行卡";
		              		}else if(obj.payMethod==3){
		              			html+="预付卡";
		              		}else if(obj.payMethod==4){
		              			html+="微信";
		              		}else if(obj.payMethod==5){
		              			html+="支付宝";
		              		}else{
		              			html+="其他";
		              		}
	                	return html;
	                    }
	                  }
	              	 ,{name:'更新时间',value:'updateTime'}
					, {
						name: '操作', value: 'id', type: "function", fun: function (obj) {
							var html = "";
							// html+=" <a href='javascript:void(0)' class='btn-link' onclick='toDetailPage(" + obj.id + ")'>详细信息</a>"
							html += "  <a href='javascript:void(0)' class='btn-link' onclick='toUpdatePage(" + obj.id + ")'>编辑</a>"
							html += "  <a href='javascript:void(0)' class='btn-link' onclick='delObj(" + obj.id + ")'>删除</a>";
							return html;
						}
					}
                ]
                ,buttons:buttonsArr
            };
            // grid(param1,param2);参数1分页数据，参数2table类名如.area_table_content
            $(".area_table_content").grid(_options,".area_table_content");
        }
		//条件查询
		$("#searchBtn").click(function(){
			getData();
			
		});
		//条件重置
		$("#resetBtn").click(function (){
            $("[name=goodsName]").val("")
            getData();
		});
		
    });
    
  //点击：删除
    function delObj(id) {
    	callmodalFun('您确认删除该记录吗？',function(){
    		$.ajax({
    			type : "post",
    			url :_path+"/invoicing/sale/record/del",
    			data : {
    				'id':id
    			},
    			beforeSend: function () {
                    //加载中
                    waitload();
                },
    			success : function(data) {
    				closewait();
    				//若执行成功的话，则隐藏进度条提示
    				if (data.code== 1) {
    					alert("销售记录删除成功！")
    					var url = _path+"/invoicing/sale/record/page/list";
    					goBackPage(url);
    				} else if (data == 0) {
    					timedTaskFun(1000,'销售记录删除失败','','err');
    				} else if(data == -2) {
    					timedTaskFun(1000,'该销售记录，已关联其他业务，故无法删除！','','err');
    				}
    				
    			}
    		 });
    	});
    };
    //销售记录角色维护
    function toUserRole(userId){
  	  var url=_path+"/invoicing/sale/record/role?userId="+userId;
		$.get(url,function(data){
			$("#mian_div").html(data);
		});    	
    }
    
    //到新增页面
    $("#addBtn").click(function(){
    	var url=_path+"/invoicing/sale/record/add";
		$.get(url,function(data){
			$("#mian_div").html(data);
		});    
    });
    //编辑销售记录信息
    function toUpdatePage(id){
    	 var url=_path+"/invoicing/sale/record/update?id="+id;
		 //调用跳转方法
		 goBackPage(url);
    }
    
</script>