<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<html>
<head>
    <meta charset="UTF-8">
    <title>新建部门</title>
    <link rel="shortcut icon" href="../assets/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../../assets/ico/apple-touch-icon-57-precomposed.png">
    <!-- Javascript -->
	<script src="../../assets/js/jquery-1.11.1.min.js"></script>
	<script src="../../assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="../../dist/js/jquery-ui.min.js"></script>
	<script src="../../assets/js/jquery.backstretch.min.js"></script>
	<script src="../../assets/js/scripts.js"></script> 
</head>

<body>
<!--新建部门表单-->
<form action="ErpAction_addDept.action" method="post">
    <div class="modal-header gray-bg">
        <a class="close" data-dismiss="modal">&times;</a>
        <span class="modal-title s15 strong">
                        <i class="icon-table2 s16 mr5"></i>
            <b>新增部门</b>
                    </span>
    </div>
    <div class="modal-body">
        <div class="form-group">
            <label>部门名称</label>
            <input type="text" class="form-control" required placeholder="Department name" id="department_Name" name="department_Name">
        </div>
        <div class="form-group">
            <label>联系电话</label>
            <input type="tel" class="form-control" required placeholder="Contact number" id="department_ParentId" name="department_ParentId">
        </div>
    </div>
    <div class="modal-footer">
        <button class="btn btn-default" type="button" data-dismiss="modal"><a href="/erp/ErpAction_departmentalManagement.action">取消</a></button>
  
        <button class="btn btn-primary" type="submit">确认</button>
    </div>
</form>
</body>
</html>