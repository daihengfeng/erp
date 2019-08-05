<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
    <link href="../bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="../bootstrap-3.3.7-dist/dataTables/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../dist/css/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="../css/custom-global.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../css/custom-styles.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../css/animate.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../fonts/custom-fonts.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../js/morris/morris-0.4.3.min.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <style>
        #morris-donut-chart {
            font-size: 13px !important;
            color: #fff !important;
            font-family: "苹方", "微软雅黑", "Open Sans", sans-serif !important;
        }
        .panel-move{
            cursor: move;
        }
        /*占位符*/
        .panel-placeholder {
            margin: 0 .5em 1em 0;
            height: 50px;
            border-radius: 5px;
            border: 2px dashed rgba(241, 241, 241, 0.3);
            background-color: rgba(241, 241, 241, 0.25);
        }
    </style>
</head>

<body>
<!--首页-->
<div class="content-fluid container-fluid animated fadeIn area">

    <div class="col-xs-12 my-content pt25">
        <div class="container-fluid crazyWorld">
            <!--界面欢迎样式-->
            <div class="row clearfix">
                <div class="col-xs-12">
                    <div class="jumbotron my-jumbotron">
                        <h1>
                            <i class="icon-home s48" style="color: rgba(255,255,255,.7)"></i>
                            Hello, world!
                        </h1>
                        <p>
                            <b>LYMS</b> 是为蓝源公司定制的一套企业ERP系统.
                            包含供应链管理、销售与市场管理、物流控制管理、财务管理、基础平台五个子系统
                        </p>
                        <p>
                            <a class="btn hollow btn-lg" role="button">了解更多</a>
                        </p>
                    </div>
                </div>
            </div>

            <!--首页主要元素-->
            <div class="row clearfix">

                <!--第一列-->
                <div class="column col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <!--显示消息通知-->
                    <div class="panel panel-black">
                        <div class="panel-heading panel-move">
                            <h4 class="panel-title"><i class="icon-chat s16"></i> 消息盒子</h4>
                            <!--面板控制按钮-->
                            <div class="panel-control btn-group">
                                <a class="btn btn-link" title="刷新"><i class="icon-reload"></i></a>
                                <a href="#msgCollapse" class="btn btn-link" title="收起" data-toggle="collapse"><i
                                        class="icon-minus-square"></i></a>
                                <a class="btn btn-link" title="关闭"><i class="icon-times"></i></a>
                            </div>
                        </div>
                        <div id="msgCollapse" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <div class="hide">
                                    <!--成功的顺利的通知-->
                                    <div class="alert alert-success alert-dismissable">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                                            &times;
                                        </button>
                                        <p><strong>登录成功：</strong>您本次登录的IP地址为 192.168.0.100</p>
                                    </div>
                                    <!--异常的警告的通知-->
                                    <div class="alert alert-danger alert-dismissable">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                                            &times;
                                        </button>
                                        <p><strong>错误警告：</strong>服务器数据获取失败，未知错误</p>
                                    </div>
                                    <div class="alert alert-warning alert-dismissable">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                                            &times;
                                        </button>
                                        <p><strong>系统提示：</strong>系统检测到您近期的登录地点出现异常，建议您及时修改密码</p>
                                    </div>
                                    <!--其他的小事情通知-->
                                    <div class="alert alert-info alert-dismissable">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                                            &times;
                                        </button>
                                        <p><strong>提示：</strong>系统通知消息.</p>
                                    </div>
                                </div>
                                <div id="msgNothing">
                                    <h3>暂无新消息</h3>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--日期选择器-->
                    <div class="panel panel-black">
                        <div class="panel-heading panel-move">
                            <h4 class="panel-title"><i class="icon-calendar-o s16"></i> 日期选择器</h4>
                            <!--面板控制按钮-->
                            <div class="panel-control btn-group">
                                <a class="btn btn-link" title="刷新"><i class="icon-reload"></i></a>
                                <a href="#dateCollapse" class="btn btn-link" title="收起" data-toggle="collapse"><i
                                        class="icon-minus-square"></i></a>
                                <a class="btn btn-link" title="关闭"><i class="icon-times"></i></a>
                            </div>
                        </div>
                        <div id="dateCollapse" class="panel-collapse collapse in">
                            <div class="panel-body p0">
                                <div id="datepicker"></div>
                            </div>
                        </div>
                    </div>

                    <!--CRM项目对接文字说明-->
                    <div class="panel panel-black">
                        <div class="panel-heading panel-move">
                            <h4 class="panel-title"><i class="icon-chat s16"></i> CRM项目对接文字说明</h4>
                            <!--面板控制按钮-->
                            <div class="panel-control btn-group">
                                <a class="btn btn-link" title="刷新"><i class="icon-reload"></i></a>
                                <a href="#CMRinfoCollapse" class="btn btn-link" title="收起" data-toggle="collapse"><i
                                        class="icon-minus-square"></i></a>
                                <a class="btn btn-link" title="关闭"><i class="icon-times"></i></a>
                            </div>
                        </div>
                        <div id="CMRinfoCollapse" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <div class="table-control p25">
                                    <div class="page-header mt0">
                                        <h4>CRM项目对接</h4>
                                    </div>

                                    <p class="projectinfo">CRM（Customer Relationship
                                        Management）即客户管理系统，用于对客户信息，客户关系进行维护。
                                        CRM是一套独立的系统，各种大企业均拥有自主的客户关系管理系统。
                                        使用该系统对老客户进行关系维护，对新客户的发展进行实时跟踪，保持良好的发展态势。
                                        本项目中采购对应的供应商和销售对应的客户实际制作均采用CRM项目进行管理。</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <!--第二列-->
                <div class="column col-xs-12 col-sm-6 col-md-6 col-lg-6">

                    <!--项目描述-->
                    <div class="panel panel-black">
                        <div class="panel-heading panel-move">
                            <h4 class="panel-title"><i class="icon-chat s16"></i> ERP项目描述</h4>
                            <!--面板控制按钮-->
                            <div class="panel-control btn-group">
                                <a class="btn btn-link" title="刷新"><i class="icon-reload"></i></a>
                                <a href="#DescriptionCollapse" class="btn btn-link" title="收起" data-toggle="collapse"><i
                                        class="icon-minus-square"></i></a>
                                <a class="btn btn-link" title="关闭"><i class="icon-times"></i></a>
                            </div>
                        </div>
                        <div id="DescriptionCollapse" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <div class="table-control p25">
                                    <div class="page-header mt0">
                                        <h4>LYMS-ERP项目描述</h4>
                                    </div>

                                    <p class="projectinfo">
                                        是为蓝源公司定制的一套企业ERP系统，包含供应链管理、销售与市场管理、物流控制管理、财务管理、基础平台五个子系统，下辖分销、客户服务、财务管理、库存管理、人力资源、报表、工作流服务、企业信息系统、质量管理、运输管理、项目管理、法规与标准和过程控制等四十多个功能。
                                        本人参与设计并实现了LYMS中的权限控制、采购与采购退货管理、销售与销售退货管理、运输管理、仓库出入库管理及相关功能的报表制作。
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--WebService接口对接说明-->
                    <div class="panel panel-black">
                        <div class="panel-heading panel-move">
                            <h4 class="panel-title"><i class="icon-chat s16"></i> WebService接口</h4>
                            <!--面板控制按钮-->
                            <div class="panel-control btn-group">
                                <a class="btn btn-link" title="刷新"><i class="icon-reload"></i></a>
                                <a href="#WebServiceCollapse" class="btn btn-link" title="收起" data-toggle="collapse"><i
                                        class="icon-minus-square"></i></a>
                                <a class="btn btn-link" title="关闭"><i class="icon-times"></i></a>
                            </div>
                        </div>
                        <div id="WebServiceCollapse" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <div class="table-control p25">
                                    <div class="page-header mt0">
                                        <h4>WebService接口对接</h4>
                                    </div>

                                    <p class="projectinfo">
                                        企业级应用中，每个企业的管理系统均采用独立控制，独立管理的方式进行。
                                        由于各个公司间系统存在有差异，不能进行良好的数据交互。例如A公司给B公司下了一份采购订单，但是B公司并不知情，在B公司的管理系统中也无法即时呈现对应的数据，造成管理系统只为企业管理完成了一半的任务，没有真正意义上的将数据流进行到底。
                                        基于此现象，为B公司制作对外的服务接口，A公司给B公司下订单的同时，调用B公司的对外服务接口，这样A公司内部的数据管理维护为正确的，同时B公司也接到的响应的信息，只需要将对外接口进行一定的安全管理就可以轻松实现两个系统间数据交互的模型。
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </div>

    <!--分割线-->
    <div class="col-xs-12 clearfix my-content">
        <br>
        <hr style="border-color: rgba(255,255,255,0.1)"/>
    </div>

</div>

<script src="../js/jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../dist/js/jquery-ui.js" type="text/javascript"></script>
<script src="../js/morris/raphael-2.1.0.min.js" type="text/javascript"></script>
<script src="../js/morris/morris.js" type="text/javascript"></script>
<script src="../js/jquery-divScroll/divscroll.js" type="text/javascript"></script>

<script type="text/javascript">

    $(".content-fluid").perfectScrollbar({});

    jQuery(function ($) {
        $.datepicker.regional['zh-CN'] = {
            clearText: '清除',
            clearStatus: '清除已选日期',
            closeText: '关闭',
            closeStatus: '不改变当前选择',
            prevText: '上个月',
            prevStatus: '显示上月',
            prevBigText: '<<',
            prevBigStatus: '显示上一年',
            nextText: '下个月>',
            nextStatus: '显示下月',
            nextBigText: '>>',
            nextBigStatus: '显示下一年',
            currentText: '今天',
            currentStatus: '显示本月',
            monthNames: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
            monthNamesShort: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
            monthStatus: '选择月份',
            yearStatus: '选择年份',
            weekHeader: '周',
            weekStatus: '年内周次',
            dayNames: ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'],
            dayNamesShort: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
            dayNamesMin: ['日', '一', '二', '三', '四', '五', '六'],
            dayStatus: '设置 DD 为一周起始',
            dateStatus: '选择 m月 d日, DD',
            dateFormat: 'yy-mm-dd',
            firstDay: 1,
            initStatus: '请选择日期',
            isRTL: false
        };
        $.datepicker.setDefaults($.datepicker.regional['zh-CN']);
    });

    window.onload = function () {
        $("#datepicker").datepicker({
            showOtherMonths: true,
            selectOtherMonths: true,
            showButtonPanel: true,
            showOn: "both",
            buttonImageOnly: true
        });


    }

    $(document).tooltip();

    $(function () {
        // 初始化jquery-ui元素拖拽
        $(".column").sortable({
            connectWith: ".column",
            handle: ".panel-move",
            cancel: ".panel-body",
            placeholder: "panel-placeholder ui-corner-all"
        });

        // 拖拽元素时实时获取元素高度 赋给占位符
        $(".panel-move").mousedown(function () {
            var height = $(this).parent().height();
            $(document).mousemove(function () {
                $(".panel-placeholder").css("height", height + 'px');
            });
        });


        $('.panel-collapse').on('show.bs.collapse', function (event) {
            var taigetBtn = $(this).parents('.panel').find('a[data-toggle="collapse"]');
            taigetBtn.children('i').toggleClass('icon-minus-square icon-plus-square');
            taigetBtn.attr('title', '收起');
        });
        $('.panel-collapse').on('hide.bs.collapse', function (event) {
            // $(this).parents('.panel').find('a[data-toggle="collapse"]').children('i').toggleClass('icon-minus-square icon-plus-square');
            var taigetBtn = $(this).parents('.panel').find('a[data-toggle="collapse"]');
            taigetBtn.children('i').toggleClass('icon-minus-square icon-plus-square');
            taigetBtn.attr('title', '展开');
        });

        initCharts();
        var newDom = "";
        // 点击表格中的数据展开详情
        $(".showThisDetails").on("click", function () {
            var thisRow = $(this).parents('tr');
            if ($(this).hasClass('showDetails')) {
                // 隐藏并删除展开的元素
                thisRow.next('.dyc-data').children('td').fadeOut('fast', function () {
                    thisRow.next('.dyc-data').animate({
                        height: 'toggle',
                        opacity: 'toggle'
                    });
                    setTimeout(function () {
                        thisRow.next('.dyc-data').remove();
                    }, 200);
                });
                $(this).toggleClass('btn-danger btn-success').removeClass('showDetails active').html("查看详情");
            } else {
                // 生产需要展开的显示的元素,添加到页面上
                $("#goods-table tr").each(function () {
                    if ($(this).hasClass('dyc-data')) {
                        $(this).prev().find('.showThisDetails').toggleClass('btn-danger btn-success').removeClass('showDetails active').html("查看详情");
                        $(this).remove();
                    }
                });
                newDom = showTableDetails();
                thisRow.after(newDom);
                $(this).toggleClass('btn-danger btn-success').addClass('showDetails active').html("隐藏详情");
            }
        });

    });


    // 生成显示详情的二级表格
    function showTableDetails() {
        return "<tr class=\"dyc-data animated fadeIn\">\n" +
            "        <td colspan=\"3\" style=\"padding: 0px !important;\">\n" +
            "            <table cellpadding=\"0\" cellspacing=\"0\"\n" +
            "                   class=\"table my-table table-condensed table-bordered my-hover mb0 transparent-bg\"\n" +
            "                   style=\"border: 2px solid rgba(17,17,17,0.66);border-radius: 5px !important;\">\n" +
            "                <thead>\n" +
            "                <tr>\n" +
            "                    <th class=\"thead-val\" width=\"20%\"><b class=\"s15\">订单号</b></th>\n" +
            "                    <th class=\"thead-val\" width=\"20%\"><b class=\"s15\">订单时间</b></th>\n" +
            "                    <th class=\"thead-val\" width=\"10%\"><b class=\"s15\">数量</b></th>\n" +
            "                    <th class=\"thead-val\" width=\"25%\"><b class=\"s15\">单价</b></th>\n" +
            "                    <th class=\"thead-val\" width=\"25%\"><b class=\"s15\">合计</b></th>\n" +
            "                </tr>\n" +
            "                </thead>\n" +
            "                <tbody>\n" +
            "                <tr>\n" +
            "                    <td align=\"center\">\n" +
            "                        <div class=\"table-val\">14343242订单号</div>\n" +
            "                    </td>\n" +
            "                    <td align=\"center\">\n" +
            "                        <div class=\"table-val\">2017-11-01订单时间</div>\n" +
            "                    </td>\n" +
            "                    <td align=\"center\">\n" +
            "                        <div class=\"table-val\">10数量</div>\n" +
            "                    </td>\n" +
            "                    <td align=\"center\">\n" +
            "                        <div class=\"table-val text-right pr10\">单价100.00元</div>\n" +
            "                    </td>\n" +
            "                    <td align=\"center\">\n" +
            "                        <div class=\"table-val text-right pr10\">合计100.00元</div>\n" +
            "                    </td>\n" +
            "                </tr>\n" +
            "                </tbody>\n" +
            "                <tfoot>\n" +
            "                <tr>\n" +
            "                    <th colspan=\"4\" class=\"thead-val text-right\">总计：</th>\n" +
            "                    <th class=\"thead-val text-right pr15\">100.00元</th>\n" +
            "                </tr>\n" +
            "                </tfoot>\n" +
            "            </table>\n" +
            "        </td>\n" +
            "   </tr>";
    }

    // 初始化图表
    function initCharts() {
        Morris.Donut({
            element: 'morris-donut-chart',
            resize: true,
            labelColor: '#f5f5f5',
            colors: ["#3c8dbc", "#f56954", "#00a65a"],
            data: [{
                label: "Download Sales",
                value: 58
            }, {
                label: "In-Store Sales",
                value: 30
            }, {
                label: "Mail-Order Sales",
                value: 20
            }],
            hideHover: 'true'
        });
    }


</script>
<script src="../js/custom-scripts.js" type="text/javascript"></script>

</body>
</html>