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
        <li><a href="#">添加销售</a></li>
    </ol>
    <!-- user-form start  -->
    <form class="add-form" id="user-add-form" method="post">
        <div class="panel panel-default">
            <div class="panel-heading">新增销售记录</div>
            <div class="panel-body table_add">
                <table class="table half-table">
                    <tbody>
                    <tr>
                        <th><span class="required">*</span>商品名称</th>
                        <td>
                            <div class="form-group " id="goodsNameSelect">
                                <input type="text" class="form-control" placeholder="请输入商品名称" name="goodsName"
                                       value="">
                            </div>
                        </td>
                        <th><span class="required">*</span>单价</th>
                        <td>
                            <div class="form-group ">
                                <input type="text" class="form-control" placeholder="请输入单价" name="salePrice" value="">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th><span class="required">*</span>数量</th>
                        <td>
                            <div class="form-group ">
                                <input type="text" class="form-control" placeholder="请输入数量" name="saleNumber"
                                       value="">
                            </div>
                        </td>
                        <th><span class="required">*</span>应收金额</th>
                        <td>
                            <div class="form-group ">
                                <input type="text" class="form-control" placeholder="请输入应收金额" name="receivableAmount" value="">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>支付类型</th>
                        <td>
                            <div class="form-group ">
                                <select class="form-control" name="payMethod" id="payMethod">
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
                                <input type="text" class="form-control" placeholder="请输入实收金额" name="paidAmount" value="">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th><span class="required">*</span>收银员姓名</th>
                        <td>
                            <div class="form-group ">
                                <input type="text" class="form-control" placeholder="请输入收银员姓名" name="cashierName"
                                       value="">
                            </div>
                        </td>
                        <th><span class="required">*</span>找零金额</th>
                        <td>
                            <div class="form-group ">
                                <input type="text" class="form-control" placeholder="请输入找零金额" name="changeAmount" value="">
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="col-md-12 text-center btn-margin">
                    <button class="btn btn-info" type="button" id="addBtn">
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
    var goods;
    $(document).ready(function() {
        $.ajax({
            type: "POST",
            url: _path + "/invoicing/goods/info/list",
            success: function (res) {
                goods = res.data;
                if (goods.length > 0) {
                    var tmpHTML = "<select class=\"form-control\" name=\"goodsId\" onchange='change()'>";
                    goods.forEach(function (good) {
                        tmpHTML += "<option value=\""+good.id+"\">"+good.goodsName+"</option>";
                    })
                    tmpHTML += "</select>"
                    $("#goodsNameSelect").html(tmpHTML);
                }
            },
            error: function (e) {
                alert("获取商品列表失败");
            }
        });
    });
    function change() {
        var id = $("select[name=goodsId]").val();
        var goodsPrice;
        goods.forEach(function (good) {
            if (good.id == id) {
                // goodsPrice = good.goodsPrice;
            }
        });
    }
    //添加用户
    $("#addBtn").click(function () {
        var salePrice = $("input[name=salePrice]").val();
        var saleNumber = $("input[name=saleNumber]").val();
        var paidAmount = $("input[name=paidAmount]").val();
        if (salePrice == null || salePrice == '') {
            alert("单价不能为空！");
            //timedTaskFun(2000,'登录名不能为空！','','err');
            $("input[name=loginName]").focus();
            return false;
        }
        if (salePrice < 0 ) {
            alert("数量不能为负！");
            $("input[name=phone]").focus();
            return false;
        }
        if (saleNumber == null || saleNumber == '') {
            alert("数量不能为空！");
            $("input[name=password]").focus();
            return false;
        }
        if (saleNumber < 0 ) {
            alert("数量不能为负！");
            $("input[name=phone]").focus();
            return false;
        }
        if (paidAmount == null || paidAmount == '') {
            alert("总额不能为空！");
            $("input[name=phone]").focus();
            return false;
        }
        if (paidAmount < 0 ) {
            alert("总额不能为负！");
            $("input[name=phone]").focus();
            return false;
        } else {
            $.ajax({
                type: "post",
                url: _path + "/invoicing/sale/record/add",
                data: $('#user-add-form').serialize(),// 你的formid
                async: false,
                success: function (data) {
                    if (data.code == 1) {
                        alert("销售记录保存成功！");
                        var url = _path + "/invoicing/sale/record/page/list";
                        goBackPage(url);
                    } else {
                        alert("用户保存失败！");
                    }
                }
            });
        }

    });

    //取消
    $("#cancelBtn").click(function () {
        var url = _path + "/invoicing/sale/record/page/list";
        //调用跳转方法
        goBackPage(url);
    });
</script>
</body>
</html>