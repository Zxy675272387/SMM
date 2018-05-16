<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<style type="text/css">
    .brand_logo {
        width: 25px;
        height: 25px;
    }
</style>
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/style2.css"/>
<div class="container-fluid">
    <ol class="breadcrumb">
        <span>当前位置：</span>
        <li><a href="/index">系统管理</a></li>
        <li><a href="####">菜单管理</a></li>
    </ol>

    <!-- 列表：查询条件组装  start -->
    <div class="panel panel-default form-search">
        <div class="panel-body">
            <div class="conditions_team">
                <input type="text" name="name" class="form-control" placeholder="菜单名称">
                <input type="text" name="parentName" class="form-control" placeholder="上级菜单">
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
    <div class="authority_table_content cloud_list">
        <div id="buttonsId" class="row list-title">
            <div class="col-md-4">
                <h4>菜单列表</h4>
            </div>
        </div>
    </div>
    <!-- 列表：查询分页列表 end -->

    <script type="text/javascript">
        $(document).ready(function () {
            var buttonsArr = [];
            getData();
            function getData() {
                var _options = {
                    url: _path + "/invoicing/system/authority/list"
                    , checkAll: false
                    //查询条件
                    , data: {
                        'name': $("[name=name]").val()
                        , 'parentName': $("[name=parentName]").val()
                    }
                    , cloumns: [
                        {name: '菜单名称', value: 'name'}
                        , {
                            name: '上级菜单', value: 'parentName', type: "function", fun: function (obj) {
                                var html = "";
                                if (obj.pId == 0) {
                                    html += "超市管理系统";
                                } else {
                                    html += obj.parentName;
                                }
                                return html;
                            }
                        }
                        , {
                            name: 'URL', value: 'url', type: "function", fun: function (obj) {
                                var html = "";
                                if (obj.pid == 0) {
                                    html += "----";
                                } else {
                                    html += obj.url;
                                }
                                return html;
                            }
                        }
                        , {name: '更新时间', value: 'updateTime'}
                        , {
                            name: '状态', value: 'hasvalid', type: "function", fun: function (obj) {
                                var html = "";
                                if (obj.hasvalid == '0') {
                                    html +=
                                            "<input type='checkbox'' class='uiswitch'  onclick='state(" + obj.id + "," + obj.hasvalid + ")'>" +
                                            "<h6>关闭</h6>";

                                } else if (obj.hasvalid == '1') {
                                    html +=
                                            "<input type='checkbox'' class='uiswitch'  checked onclick='state(" + obj.id + "," + obj.hasvalid + ")'>" +
                                            "<h6>开启</h6>";
                                }
                                return html;
                            }
                        }
                        , {
                            name: '操作', value: 'id', type: "function", fun: function (obj) {
                                var html = "";
                                html += "  <a href='javascript:void(0)' class='btn-link' onclick='updateObj(" + obj.id + ")'>编辑</a>"
                                html += "  <a href='javascript:void(0)' class='btn-link' onclick='delObj(" + obj.id + ")'>删除</a>";
                                return html;
                            }
                        }
                    ]
                    , buttons: buttonsArr
                };
                $(".authority_table_content").grid(_options, ".authority_table_content");
            }

            $("#resetBtn").click(function () {
                $("input[name=name]").val("");
                $("input[name=parentName]").val("");
                getData();
            });
            //查询
            $("#searchBtn").click(function () {
                getData();
            })


        });

        //到新增页面
        $("#addBtn").click(function () {
            var url = _path + "/invoicing/system/authority/add";
            $.get(url, function (data) {
                $("#mian_div").html(data);
            });

        });

        function updateObj(id) {
            var url = _path + "/invoicing/system/authority/update?id=" + id;
            $.get(url, function (data) {
                $("#mian_div").html(data);
            });
        }
        //点击：删除
        function delObj(id) {
            var info = "您确认删除该记录吗？";
            callmodalFun(info, function () {
                $.ajax({
                    type: "post",
                    url: _path + "/invoicing/system/authority/del",
                    data: {
                        'id': id
                    },
                    beforeSend: function () {
                        //加载中
                        waitload();
                    },
                    success: function (data) {
                        closewait();
                        //若执行成功的话，则隐藏进度条提示
                        if (data != null && data != 'undefined'
                                && data == 1) {
                            timedTaskFun(1000, '菜单删除成功', "", 'correct');
                            var url = _path + "/invoicing/system/authority/list";
                            $.get(url, function (data) {
                                $("#mian_div").html(data);
                            });
                        } else if (data == 0) {
                            timedTaskFun(1000, '菜单删除失败', '', 'err');
                        } else if (data == -2) {
                            timedTaskFun(1000, '该菜单，已关联其他业务，故无法删除！', '', 'err');
                        }

                    }
                });
            });
        }
        function state(id,hasvalid) {
            if(hasvalid==1){
                callmodalFun('确认关闭？', function () {
                    $.ajax({
                        type: "post",
                        url: _path + "/invoicing/system/authority/stateoff",
                        data: {
                            'id': id
                        },
                        beforeSend: function () {
                            //加载中
                            waitload();
                        },
                        success: function (data) {
                            closewait();
                            //若执行成功的话，则隐藏进度条提示
                            if (data.code == 1) {
                                var url = _path + "/invoicing/system/authority/list";
                                $.get(url, function (data) {
                                    $("#mian_div").html(data);
                                });
                            } else if (data == 0) {
                                timedTaskFun(1000, '用户删除失败', '', 'err');
                            } else if (data == -2) {
                                timedTaskFun(1000, '该用户，已关联其他业务，故无法删除！', '', 'err');
                            }

                        }
                    });
                });}
            else
            { callmodalFun('确认开启？', function () {
                $.ajax({
                    type: "post",
                    url: _path + "/invoicing/system/authority/stateon",
                    data: {
                        'id': id
                    },
                    beforeSend: function () {
                        //加载中
                        waitload();
                    },
                    success: function (data) {
                        closewait();
                        //若执行成功的话，则隐藏进度条提示
                        if (data.code == 1) {
                            var url = _path + "/invoicing/system/authority/list";
                            $.get(url, function (data) {
                                $("#mian_div").html(data);
                            });
                        } else if (data == 0) {
                            timedTaskFun(1000, '用户删除失败', '', 'err');
                        } else if (data == -2) {
                            timedTaskFun(1000, '该用户，已关联其他业务，故无法删除！', '', 'err');
                        }

                    }
                });
            });}
        };

    </script>