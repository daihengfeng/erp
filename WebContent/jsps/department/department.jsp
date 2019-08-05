<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width-device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
    <title>部门管理</title>
    <link href="/erp/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/erp/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="/erp/bootstrap-3.3.7-dist/dataTables/css/dataTables.bootstrap.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="/erp/dist/css/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="/erp/css/custom-global.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="/erp/css/custom-styles.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="/erp/css/animate.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="/erp/fonts/custom-fonts.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" rel="stylesheet" media="screen">
</head>

<body>
<!--部门管理-->
<div class="container-fluid animated fadeIn">
    <div class="col-xs-12 my-content">
        <div class="page-header">
            <h2>
                <i class="icon-table2 s24"></i>&nbsp;部门管理
            </h2>
        </div>
        <table cellpadding="0" cellspacing="0" class="table my-hover"
               id="department-table">
            <thead>
            <tr>
                <th class="thead-val"><b class="s15">编号</b></th>
                <th class="thead-val"><b class="s15">部门名称</b></th>
                <th class="thead-val"><b class="s15">电话</b></th>
                <th class="thead-val"><b class="s15">操作</b></th>
            </tr>
            </thead>

           <tbody>
            <c:forEach items="${pageBean.datas}" var="depa" >
            <tr>
                <td align="center" width="25%">
                    <div class="table-val" id="department_Id">${depa.department_Id }</div>
                </td>
                <td align="center" width="25%">
                    <div class="table-val">${depa.department_Name }</div>
                </td>
                <td align="center" width="25%">
                    <div class="table-val">${depa.department_ParentId }</div>
                </td>
                <td align="center" width="25%">
                    <div class="table-val">
                        <a class="btn btn-default btn-sm" href="ErpAction_diteDepa?department_Id=${depa.department_Id}">修改</a>
                        <a class="btn btn-danger btn-sm deleteThisDept" href="DepartmentAction_delect?department_Id=${depa.department_Id}">删除</a>
                    </div>
                </td>
            </tr>
            </c:forEach>
            </tbody>

            <tfoot class="tfoot-hide">
            <tr>
                <th colspan="4" class="opacity0">111</th>
            </tr>
            </tfoot>

        </table>


    </div>
    <div class="col-xs-12 clearfix my-content">
        <br>
        <hr style="border-color: rgba(255,255,255,0.35)"/>
    </div>
    <div class="crazyWorld"></div>
</div>

<script src="/erp/js/jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="/erp/bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="/erp/bootstrap-3.3.7-dist/dataTables/js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="/erp/bootstrap-3.3.7-dist/dataTables/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="/erp/bootstrap-3.3.7-dist/dataTables/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
<script src="/erp/dist/js/jquery-ui.js" type="text/javascript"></script>

<script>

    window.onload = function () {
        var _partent = window.parent;
        var _modalURL = "department/addDept.html";

        // 点击添加商品分类
        $("#addDept").on("click", function () {
            _partent.showFormModal(_modalURL);
        });

        // 点击删除商品分类
        $(".deleteThisDept").on("click", function () {
            _partent.showErrorModal();
        });
    }

    $(function () {

        var TableOptions = {
            "lengthMenu": [[15, 20, 25, -1], [15, 20, 25, "All"]],
            "pageLength": 10,
            "dom": '<"tops"<"searchWrap"<"tableControl">>f>rt<"bottoms"p>',
            "info": false,
            "ordering": false,
            "stateSave": false,
            "pageing": false,
            "scrollX": true,
            "language": {
                "lengthMenu": "每页 _MENU_ 条记录",
                "zeroRecords": "没有找到记录",
                "info": "第 _PAGE_ 页 ( 总共 _PAGES_ 页 )",
                "infoEmpty": "无记录",
                "infoFiltered": "(从 _MAX_ 条记录过滤)",
                "sZeroRecords": "无记录",
                "sSearch": "搜索:",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上一页",
                    "sNext": "下一页",
                    "sLast": "尾页"
                }
            },
            "columnDefs": [
                {orderable: false, targets: 0},
            ],
            buttons: [
                'copy', 'excel', 'pdf'
            ],
            "drawCallback": function (settings) {
            },
            "order": []
        };
        var table = $('#department-table').dataTable(TableOptions);  // 用户表

        $("div.tableControl").html('' +
            '<a class="btn btn-default mr10" id="reloadTable" title="重新加载" href="/erp/ErpAction_departmentalManagement.action">刷新</a>' +
            '<a class="btn btn-info" id="addDept" title="新增部门" href="/erp/jsps/department/addDept.jsp">新建部门</a>'
        );
    });


</script>
<script src="/erp/js/custom-scripts.js" type="text/javascript"></script>

</body>
</html>