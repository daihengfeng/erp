<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width-device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
    <title>新增员工</title>
    <link href="../../bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../bootstrap-3.3.7-dist/dataTables/css/dataTables.bootstrap.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="../../dist/css/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/custom-global.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../../css/custom-styles.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../../css/animate.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../../fonts/custom-fonts.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" rel="stylesheet" media="screen">
</head>

<body>
<!--新增员工-->
<div class="container-fluid animated fadeIn">
    <div class="col-xs-12">
        <div class="page-header">
            <h2>
                <i class="icon-table2 s24"></i>&nbsp;新增员工
            </h2>
        </div>
        <div class="emp-form">
            <form class="form-horizontal pt0" role="form">
                <!-- 员工账户信息 -->
                <div class="page-header">
                    <h5>
                        员工账户信息
                        <small>Subtext for header</small>
                    </h5>
                </div>

                <div class="form-group">
                    <label for="account" class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-4">
                        <div class="input-group">
                            <input type="text" class="form-control" id="account" placeholder="Setting account">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button" id="checkAccount">检测</button>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-4">
                        <input type="password" class="form-control" id="password" placeholder="Setting password">
                    </div>
                </div>
                <div class="form-group">
                    <label for="psdAgain" class="col-sm-2 control-label">确认密码</label>
                    <div class="col-sm-4">
                        <input type="password" class="form-control" id="psdAgain" placeholder="Again">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">Email地址</label>
                    <div class="col-sm-4">
                        <input type="email" class="form-control" id="email" placeholder="Email">
                    </div>
                </div>
                <!-- 员工个人信息 -->
                <div class="page-header">
                    <h5>
                        员工个人信息
                        <small>Subtext for header</small>
                    </h5>
                </div>
                <div class="form-group">
                    <label for="realname" class="col-sm-2 control-label">真实姓名</label>
                    <div class="col-sm-2">
                        <input type="text" class="form-control" id="realname" placeholder="Real name">
                    </div>
                </div>
                <div class="form-group">
                    <label for="telphone" class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-4">
                        <label class="radio-inline">
                            <input type="radio" name="sex" id="boy" value="1" checked>
                            男
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="sex" id="girl" value="2">
                            女
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="telphone" class="col-sm-2 control-label">联系电话</label>
                    <div class="col-sm-4">
                        <input type="tel" class="form-control" id="telphone" placeholder="Telphone number">
                    </div>
                </div>
                <div class="form-group">
                    <label for="birthday" class="col-sm-2 control-label">出生日期</label>
                    <div class="col-sm-4">
                        <input type="date" class="form-control" id="birthday" placeholder="Date of birth">
                    </div>
                </div>
                <div class="form-group">
                    <label for="address" class="col-sm-2 control-label">居住地址</label>
                    <div class="col-sm-4">
                        <textarea class="form-control" id="address" placeholder="Address" rows="3"></textarea>
                        <span class="form-help">提示：请填写真实的居住地址</span>
                    </div>
                </div>

                <!-- 其他 -->
                <div class="page-header">
                    <h5>
                        其他
                        <small>Subtext for header</small>
                    </h5>
                </div>

                <div class="form-group">
                    <label for="fromDept" class="col-sm-2 control-label">所属部门</label>
                    <div class="col-sm-4">
                        <select class="form-control" id="fromDept">
                            <option value="-1" selected>请选择</option>
                            <option value="1">销售部</option>
                            <option value="2">开发部</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="role" class="col-sm-2 control-label">角色分配</label>
                    <div class="col-sm-4">
                        <select class="form-control" id="role">
                            <option value="-1" selected>请选择</option>
                            <option>总经理</option>
                            <option>部门主管</option>
                            <option>普通员工</option>
                            <option>实习生</option>
                        </select>
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-default btn-lg mr5" onclick="window.history.back()">返回
                        </button>
                        <button type="reset" class="btn btn-warning btn-lg mr5">重置</button>
                        <button type="submit" class="btn btn-success btn-lg mr5" style="width: 100px">保存</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="col-xs-12 clearfix">
        <br>
        <hr style="border-color: rgba(255,255,255,0.35)"/>
    </div>
</div>

<script src="../../js/jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../bootstrap-3.3.7-dist/dataTables/js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="../../bootstrap-3.3.7-dist/dataTables/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="../../bootstrap-3.3.7-dist/dataTables/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
<script src="../../dist/js/jquery-ui.js" type="text/javascript"></script>

<script>

    window.onload = function () {
        var _partent = window.parent;
    }


</script>
<script src="../../js/custom-scripts.js" type="text/javascript"></script>

</body>
</html>