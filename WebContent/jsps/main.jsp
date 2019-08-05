<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width-device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
    <title>主页</title>
    <link href="../bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../dist/css/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="../css/custom-global.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../css/custom-styles.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../css/animate.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../js/jquery-switchery/switchery.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../fonts/custom-fonts.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" rel="stylesheet" media="screen">
    <link href="../js/sidebar-menu/sidebar-menu.css" rel="stylesheet" type="text/css" charset="UTF-8"/>

    <style type="text/css">
        .label {
            padding: 3px 5px;
            margin-top: 1px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        #container {
            display: flex;
        }

        body {
            overflow: hidden;
        }

    </style>
</head>
<body class="animated fadeIn">

<!--主容器-->
<div id="container" class="main-bg">
    <!--侧边栏-->
    <aside class="main-sidebar" id="sidebar">
        <section class="sidebar area">
            <ul class="sidebar-menu">
                <li class="header main-head navbg">
                    <a id="bigTitle" href="content.html" target="main"><i
                            class="icon-html-five main-icon"></i>ERP管理系统</a>
                </li>
                <!-- 管理员个人信息 -->
                <li class="admin-box">
                    <!--管理员头像-->
                    <div class="admin-box-left box">
                        <a href="javascript:void(0);" class="adminimg">
                            <img src="../img/IMG_0407.JPG" class="img-responsive"/>
                        </a>
                    </div>
                    <!--管理员个人信息-->
                    <div class="admin-box-right box">
                        <span id="adminAccount">代恒峰</span>
                        <span id="adminIp">Ip地址：192.168.0.102</span>
                        <span id="btnbox">
                            <!-- -->
                            <button class="btn btn-xs btn-success" id="updatePassword" data-toggle="modal"
                                    data-target="#updatePasswordModal">修改密码</button>
                        </span>
                    </div>
                </li>

                <li class="header navbg">Navigation</li>
                <!--商品管理-->
                <li class="treeview">
                    <a href="javascript:void(0)">
                        <i class="icon-dashboard"></i>&nbsp;&nbsp;<span>商品管理</span> <i
                            class="fa fa-angle-right pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="supplier/supplier.html" id="supplier" data-hash="#supplier" target="main"><i
                                class="fa fa-circle-o"></i> 供应商</a></li>
                        <li><a href="productType/productType.html" id="productType" data-hash="#productType"
                               target="main"><i class="fa fa-circle-o"></i> 商品类别</a></li>
                        <li><a href="product/product.html" id="product" data-hash="#product" target="main"><i
                                class="fa fa-circle-o"></i> 商品</a></li>
                    </ul>
                </li>
                <!--采购管理-->
                <li class="treeview">
                    <a href="javascript:void(0)">
                        <i class="icon-cart"></i>&nbsp;&nbsp;<span>采购管理</span>
                        <i class="fa fa-angle-right pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="order/in/order.html" id="order" data-hash="#order" target="main"><i
                                class="fa fa-circle-o"></i> 采购订单</a></li>
                        <li>
                            <a href="javascript:void(0)" onclick="undefinedModal()" target="main">
                                <i class="fa fa-circle-o"></i> 采购退货
                                <span class="badge pull-right mr10 brall">null</span>
                            </a>
                        </li>
                        <li><a href="order/in/orderReview.html" id="inApproveList" data-hash="#inApproveList"
                               target="main"><i class="fa fa-circle-o"></i> 采购审批</a>
                        </li>
                    </ul>
                </li>
                <!--销售管理-->
                <li class="treeview">
                    <a href="javascript:void(0)">
                        <i class="icon-chart"></i>&nbsp;&nbsp;<span>销售管理</span>
                        <i class="fa fa-angle-right pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="javascript:void(0)" onclick="undefinedModal()" target="main"><i
                                class="fa fa-circle-o"></i> 销售订单
                            <span class="badge pull-right mr10 brall">null</span>
                        </a></li>
                        <li><a href="javascript:void(0)" onclick="undefinedModal()" target="main"><i
                                class="fa fa-circle-o"></i> 销售退货<span
                                class="badge pull-right mr10 brall">null</span></a></li>
                        <li><a href="javascript:void(0)" onclick="undefinedModal()" target="main"><i
                                class="fa fa-circle-o"></i> 销售审批<span
                                class="badge pull-right mr10 brall">null</span></a></li>
                    </ul>
                </li>
                <!--商品运输-->
                <li class="treeview">
                    <a href="javascript:void(0)">
                        <i class="icon-truck"></i>&nbsp;&nbsp;<span>商品运输</span>
                        <i class="fa fa-angle-right pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="order/transport/transport.html" id="transportList" data-hash="#transportList"
                               target="main"><i class="fa fa-circle-o"></i> 运输任务指派</a>
                        </li>
                        <li><a href="order/transport/transportTask.html" id="transportTasks" data-hash="#transportTasks"
                               target="main"><i class="fa fa-circle-o"></i> 运输任务查询</a>
                        </li>
                    </ul>
                </li>
                <!--仓库管理-->
                <li class="treeview">
                    <a href="javascript:void(0)">
                        <i class="icon-cube"></i>&nbsp;&nbsp;<span>仓库管理</span>
                        <i class="fa fa-angle-right pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="store/detail/storeDetail.html" id="storeDetail" data-hash="#storeDetail"
                               target="main"><i
                                class="fa fa-circle-o"></i> 库存查询</a></li>
                        <li><a href="store/in/storeIn.html" id="storeList" data-hash="#storeList" target="main"><i
                                class="fa fa-circle-o"></i> 入库</a></li>
                        <li><a href="javascript:void(0);" onclick="undefinedModal()" target="main"><i
                                class="fa fa-circle-o"></i> 出库<span class="badge pull-right mr10 brall">null</span></a>
                        </li>
                        <li><a href="store/oper/storeOper.html" id="storeOper" data-hash="#storeOper" target="main"><i
                                class="fa fa-circle-o"></i> 仓库操作明细</a></li>
                    </ul>
                </li>
                <!--报表中心-->
                <li class="treeview">
                    <a href="javascript:void(0)">
                        <i class="icon-file-text2"></i>&nbsp;&nbsp;<span>报表中心</span>
                        <i class="fa fa-angle-right pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="bill/in/inGoods.html" id="inGoods" data-hash="#inGoods" target="main"><i
                                class="fa fa-circle-o"></i> 进货报表</a></li>
                        <li><a href="javascript:void(0);" onclick="undefinedModal()" target="main"><i
                                class="fa fa-circle-o"></i> 销售报表<span
                                class="badge pull-right mr10 brall">null</span></a></li>
                        <li><a href="javascript:void(0);" onclick="undefinedModal()" target="main"><i
                                class="fa fa-circle-o"></i> 仓库报表<span
                                class="badge pull-right mr10 brall">null</span></a></li>
                    </ul>
                </li>
                
                <!--基础维护-->
                <li class="treeview">
                    <a href="javascript:void(0)">
                        <i class="icon-equalizer"></i>&nbsp;&nbsp;<span>基础维护</span>
                        <i class="fa fa-angle-right pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/erp/ErpAction_departmentalManagement.action" id="department" data-hash="#department"
                               target="main"><i
                                class="fa fa-circle-o"></i> 部门维护</a></li>
                        <li><a href="/erp/ErpAction_employee.action" id="employee" data-hash="#employee" target="main"><i
                                class="fa fa-circle-o"></i> 员工维护</a></li>
                        <li><a href="/erp/ErpAction_roleSelectById.action" id="role" data-hash="#role" target="main"><i
                                class="fa fa-circle-o"></i> 角色维护</a></li>
                        <li><a href="resource/resource.html" id="resource" data-hash="#resource" target="main"><i
                                class="fa fa-circle-o"></i> 资源维护</a></li>
                        <li><a href="menu/menu.html" id="menu" data-hash="#menu" target="main"><i
                                class="fa fa-circle-o"></i> 菜单维护</a></li>
                        <li><a href="store/store.html" id="store" data-hash="#store" target="main"><i
                                class="fa fa-circle-o"></i> 仓库管理</a></li>
                    </ul>
                </li>

                <li class="header navbg">Label</li>
                <li class="treeview">
                    <a href="javascript:void(0)">
                        <i class="fa fa-table"></i> <span>API 文档 </span>
                        <i class="fa fa-angle-right pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="../fonts/demo.html" target="main"><i class="fa fa-circle-o"></i> Icon 字体图标</a></li>
                        <li><a href="../bootstrap-3.3.7-dist/fonts/Bootstrap%20Glyphicon%20Icons.html" target="main"><i
                                class="fa fa-circle-o"></i> bootstrap 图标</a></li>
                        <li><a href="https://www.runoob.com/bootstrap/bootstrap-tutorial.html" target="main"><i
                                class="fa fa-circle-o"></i> Bootstrap 文档</a></li>
                        <li><a href="https://www.runoob.com/jqueryui/jqueryui-tutorial.html" target="main"><i
                                class="fa fa-circle-o"></i> jquery-UI 文档</a>
                        </li>
                        <li><a href="http://www.jq22.com/" target="main"><i class="fa fa-circle-o"></i> jquery 插件库</a>
                        </li>
                    </ul>
                </li>

                <li class="header navbg">Label</li>
                <li>
                    <a href="#"><i class="fa fa-circle-o text-red"></i> <span>重要</span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>警告</span></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>通知</span></a>
                </li>
            </ul>
        </section>
    </aside>
    <!--右侧内容-->
    <div class="main-content">

        <!--头侧顶部导航栏-->
        <div class="content-heading main-head">

            <!--左边-->
            <ul id="headNavLeft">

                <li><a href="#sidebar" class="headBtn" id="sidebarBtn" title="开启/关闭侧边栏">
                    <i class="icon-navicon"></i>
                </a></li>

                <li><a href="javascript:void(0);" class="headBtn" title="刷新" onclick="location.reload()">
                    <i class="icon-reload"></i>
                </a></li>

                <li class="dropdown dropdown-hover">
                    <a href="javascript:void(0);" class="headBtn">
                        <i class="icon-terminal"></i>
                    </a>

                    <ul class="dropdown-menu">
                        <li role="presentation">
                            <a role="menuitem" tabindex="-1" target="_blank"
                               href="../fonts/demo.html">Icon 字体图标</a>
                        </li>
                        <li role="presentation">
                            <a role="menuitem" tabindex="-1" target="_blank"
                               href="../bootstrap-3.3.7-dist/fonts/Bootstrap%20Glyphicon%20Icons.html">bootstrap 图标</a>
                        </li>
                        <li role="presentation" class="divider"></li>

                        <li role="presentation">
                            <a role="menuitem" tabindex="-1" target="_blank"
                               href="https://www.runoob.com/bootstrap/bootstrap-tutorial.html">Bootstrap 文档</a>
                        </li>
                        <li role="presentation">
                            <a role="menuitem" tabindex="-1" target="_blank"
                               href="https://www.runoob.com/jqueryui/jqueryui-tutorial.html">jquery-ui 文档</a>
                        </li>
                        <li role="presentation">
                            <a role="menuitem" tabindex="-1" target="_blank"
                               href="http://www.datatables.club/reference/">DataTables 文档</a>
                        </li>
                        <li role="presentation">
                            <a role="menuitem" tabindex="-1" target="_blank" href="http://www.jq22.com/">jquery 插件库</a>
                        </li>
                    </ul>

                </li>

                <li><a href="#backgroundImgToggleModal" id="backgroundImgToggle" data-toggle="modal" class="headBtn"
                       title="更换背景">
                    <i class="icon-cog"></i>
                </a></li>
            </ul>

            <!--右边-->
            <ul id="headNavRight">
                <li>
                    <a href="javascript:void(0);" class="headBtn" title="锁定屏幕">
                        <i class="icon-locked"></i>
                        <!--<i class="icon-unlocked2"></i>-->
                    </a>
                </li>

                <li>
                    <a href="javascript:void(0);" class="headBtn" title="退出">
                        <i class="icon-exit s19"></i>
                    </a>
                </li>
            </ul>

        </div>

        <!-- iframe子页面窗口 -->
        <div class="content-body">
            <iframe src="404.html" id="frame-contect" name="main" scrolling="auto"
                    frameborder="0"></iframe>
        </div>

    </div>
</div>

<!-- form表单模态窗口 -->
<div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 460px;margin-top:120px;">
        <div class="modal-content" id="formBox">

        </div>
    </div>
</div>

<!--返回警告提醒的确认框-->
<div class="modal fade" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 400px;margin-top:120px;">
        <div class="modal-content" id="errorBox">
            <form action="#" method="post">
                <div class="modal-header bn">
                    <a class="close" data-dismiss="modal">&times;</a>
                    <span class="modal-title ">
                        <i class="icon-warning2 s24"></i><span class="strong s20"> 警告</span>
                    </span>
                </div>
                <div class="modal-body">
                    <p>你确定要继续吗？</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">取消</button>
                    <button class="btn btn-danger" type="button">确定</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!--返回成功提示的模态框-->
<!--<div class="modal fade iconModal" id="successModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"-->
     <!--aria-hidden="true">-->
    <!--<div class="modal-dialog " style="width: 175px;margin-top:10px;">-->
        <!--<div class="modal-content transparent-bg bsn" id="successBox">-->
            <!--<div class="modal-body opacity-black p15">-->
                <!--<div class="iconModal-center">-->
                    <!--<a class="icon-wrap">-->
                        <!--<img src="../img/icon/ok.png" class="img-responsive">-->
                    <!--</a>-->
                    <!--<span class="s18 my-color">设置成功</span>-->
                <!--</div>-->
            <!--</div>-->
        <!--</div>-->
    <!--</div>-->
<!--</div>-->

<!--返回错误提示的模态框-->
<!--<div class="modal fade iconModal" id="dangerModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">-->
    <!--<div class="modal-dialog" style="width:285px;">-->
        <!--<div class="modal-content transparent-bg bsn" id="dangerBox">-->
            <!--<div class="modal-body opacity-black p15">-->
                <!--<div class="iconModal-center">-->
                    <!--<a class="icon-wrap">-->
                        <!--<img src="../img/icon/cancel.png" class="img-responsive">-->
                    <!--</a>-->
                    <!--<span class="s18 my-color">系统内部错误,操作失败</span>-->
                <!--</div>-->
            <!--</div>-->
        <!--</div>-->
    <!--</div>-->
<!--</div>-->



<!--修改密码第一步-->
<div class="modal fade " id="updatePasswordModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" style="width:480px;margin-top:150px;">
        <div class="modal-content">
            <div class="modal-header gray-bg">
                <a class="close" data-dismiss="modal">&times;</a>
                <span class="modal-title s15 strong">
            <i class="icon-table2 s16 mr5"></i>
            <b>修改密码</b>
        </span>
            </div>
            <div class="modal-body">
                <form action="#" method="post" role="form">
                    <div class="form-group">
                        <label>请输入当前密码</label>
                        <input type="password" class="form-control" id="oldPassword" name="oldPassword">
                    </div>
                    <div class="alert alert-danger" id="error" style="display:none;">
                        <button type="button" class="close" data-dismiss="alert"
                                aria-hidden="true">&times;
                        </button>
                        <p id="error-text"></p>
                    </div>
                    <div class="form-group text-right m0">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary" id="updatePasswordNext">下一步</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!--修改密码第二步-->
<div class="modal fade " id="setNewPasswordModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" style="width:480px;margin-top:150px;">
        <div class="modal-content">
            <div class="modal-header gray-bg">
                <a class="close" data-dismiss="modal">&times;</a>
                <span class="modal-title s15 strong">
            <i class="icon-table2 s16 mr5"></i>
            <b>修改密码</b>
        </span>
            </div>
            <div class="modal-body">
                <form action="#" method="post" role="form">
                    <div class="form-group">
                        <label>请设置新密码</label>
                        <input type="password" class="form-control" id="newPassword1">
                    </div>
                    <div class="form-group">
                        <label>确认密码</label>
                        <input type="password" class="form-control" id="newPassword2" name="newPassword">
                    </div>

                    <div class="alert alert-danger" id="errorTips" style="display:none;">
                        <button type="button" class="close" data-dismiss="alert"
                                aria-hidden="true">&times;
                        </button>
                        <p id="error-text2"></p>
                    </div>
                    <div class="form-group text-right m0">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary" id="setNewPassword">下一步</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<!--系统维护中提示框-->
<div class="modal fade" id="maintenanceModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" style="width: 400px;margin-top:120px;">
        <div class="modal-content" id="maintenanceBox">

            <form action="#" method="post">

                <div class="modal-header bn">
                    <a class="close" data-dismiss="modal">&times;</a>
                    <span class="modal-title ">
                        <i class="icon-warning2 s24"></i><span class="strong s20"> Sorry</span>
                    </span>
                </div>

                <div class="modal-body">
                    <p class="s16">系统维护中...</p>
                </div>

                <div class="modal-footer">
                    <button class="btn" type="button" data-dismiss="modal">关闭</button>
                </div>

            </form>

        </div>
    </div>
</div>

<!--更换背景图片-->
<div class="modal fade bs-example-modal-lg" id="backgroundImgToggleModal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content transparent-bg">
            <div class="modal-header opacity-black" style="border-color: rgba(255,255,255,.1)">
                <a class="close color-white" data-dismiss="modal">&times;</a>
                <span class="modal-title s15" style="color: #ddd;">
                    <i class="icon-cog s16 mr5"></i>
                    <b>更换背景图片</b>
                </span>
            </div>

            <div class="modal-body opacity-black pt5 pl10 pr10">
                <ul class="bg-list">
                    <li><a class="bgImgBox" href="javascript:void(0)"><img src="../img/main-bg/skin-blue.jpg"> </a></li>
                    <li><a class="bgImgBox"><img src="../img/main-bg/skin-chrome.jpg"> </a></li>
                    <li><a class="bgImgBox"><img src="../img/main-bg/skin-city.jpg"> </a></li>
                    <li><a class="bgImgBox"><img src="../img/main-bg/skin-cloth.jpg"> </a></li>
                    <li><a class="bgImgBox"><img src="../img/main-bg/skin-greenish.jpg"></a></li>
                    <li><a class="bgImgBox"><img src="../img/main-bg/skin-kiwi.jpg"> </a></li>
                    <li><a class="bgImgBox"><img src="../img/main-bg/skin-lights.jpg"> </a></li>
                    <li><a class="bgImgBox"><img src="../img/main-bg/skin-night.jpg"> </a></li>
                    <li><a class="bgImgBox"><img src="../img/main-bg/skin-ocean.jpg"> </a></li>
                    <li><a class="bgImgBox"><img src="../img/main-bg/skin-sunny.jpg"> </a></li>
                    <li><a class="bgImgBox"><img src="../img/main-bg/skin-sunset.jpg"> </a></li>
                    <li><a class="bgImgBox"><img src="../img/main-bg/skin-tectile.jpg"> </a></li>
                    <li><a class="bgImgBox"><img src="../img/main-bg/skin-violate.jpg"> </a></li>
                    <li><a class="bgImgBox"><img src="../img/main-bg/skin-yellow.jpg"> </a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="my-backdrop"></div>

<script src="../js/jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../dist/js/jquery-ui.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/custom-scripts.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/custom-plugin.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/jquery.cookie.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/sidebar-menu/sidebar-menu.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/jquery-divScroll/divscroll.js" type="text/javascript" charset="utf-8"></script>
<script>
    window.onload = function () {
        // $.successBox();
        // $.errorBox();
    }

    ;(function ($) {
        "use strict";

        // // 获取cookie中设置的背景图片
        // var backimg = $.cookie('backimg-cookie');
        // if (backimg) {
        //     $(".main-bg").css("background-image", "url(" + backimg + ")");
        // }

        //  显示form模态框
        function showFormModal(url, values) {

            $("#formModal").modal({
                show: true,
                backdrop: true,
                remote: url
            });
            if (values != null) {
                // 修改供应商
                $("#formModal").on('shown.bs.modal', function () {
                    var modal = $(this);
                    // alert();
                    modal.find("#supplierSelect").val(1);
                    modal.find("#address").val(values.supplierContacts);
                    modal.find("#Contacts").val(values.supplierAddress);
                    modal.find("#number").val(values.supplierPhone);
                    modal.find("#shipping").val(values.supplierShipping);
                });
            }

        }

        //  返回警告提醒的确认框
        function showErrorModal() {
            $("#errorModal").modal('show');
        }

        //  系统维护中提示框
        function undefinedModal() {
            $("#maintenanceModal").modal('show');
        }

        // 提示操作成功
        function alertSuccess() {
            $("#successModal").modal('show');
        }

        // 提示操作失败,发生错误
        function alertError() {
            $("#dangerModal").modal('show');
        }

        $(function () {

            // 模态框关闭之后清空刚调用的form表单界面
            $("#formModal").on('hidden.bs.modal', function () {
                $(this).removeData("bs.modal");
            });

            var modal = $(".modal");

            // var backgroundModal = $("#backgroundImgToggleModal");
            //
            // // 点击更换背景图片
            // $(".bgImgBox").on("click", function () {
            //     var backImg = $(this).find('img').attr('src');
            //     $(".main-bg").css("background-image", "url(" + backImg + ")");
            //     $.cookie('backimg-cookie', backImg, {expires: 7, path: '/'});
            //     backgroundModal.modal('hide');
            //     alertSuccess();
            // });

            $("#oldPassword").keydown(function () {
                if ($(this).val() != "") {
                    $("#error").hide();
                    $("#error-text").text("");
                }
            });

            $("#updatePasswordNext").on('click', function () {
                var oldPsd = $("#oldPassword").val();
                if (oldPsd != "a543662313") {
                    $("#error").show();
                    $("#error-text").text("当前密码输入错误");
                } else {
                    $(this).parents('#updatePasswordModal').modal('hide');
                    $("#setNewPasswordModal").modal('show');
                }
            });

        });
    })(jQuery);

</script>
</body>
</html>