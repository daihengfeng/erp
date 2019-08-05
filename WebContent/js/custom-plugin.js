;(function ($) {

    "use strict";

    $.fn.extend({
        // 切换显示 & 隐藏
        toggleDisplay: function () {
            this.stop().animate({
                height: 'toggle',
                opacity: 'toggle'
            }, 300);
        },

        // 隐藏侧边栏
        hideSidebar: function () {
            var sidebar = this;
            this.children('.sidebar').fadeOut('fast', function () {
                sidebar.addClass('hide-sidebar');
            });
        },

        // 显示侧边栏
        showSidebar: function () {
            var sidebar = this;
            this.removeClass('hide-sidebar');
            setTimeout(function () {
                sidebar.children('.sidebar').fadeIn('fast');
            }, 300)
        }
    });

    // 错误提示框
    $.errorBox = function () {
        // 提示框结构
        var modalBox = "<div class=\"modal fade iconModal\" id=\"dangerModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\n" +
            "    <div class=\"modal-dialog\" style=\"width:285px;\">\n" +
            "        <div class=\"modal-content transparent-bg bsn\" id=\"dangerBox\">\n" +
            "            <div class=\"modal-body opacity-black p15\">\n" +
            "                <div class=\"iconModal-center\">\n" +
            "                    <a class=\"icon-wrap\">\n" +
            "                        <img src=\"../img/icon/cancel.png\" class=\"img-responsive\">\n" +
            "                    </a>\n" +
            "                    <span class=\"s18 my-color\">系统内部错误,操作失败</span>\n" +
            "                </div>\n" +
            "            </div>\n" +
            "        </div>\n" +
            "    </div>\n" +
            "</div>";
        var mymodal = $(modalBox);
        mymodal.modal('show');
        this.append("#dangerModal");
    };

    //  成功提示框
    $.successBox = function () {
        var modalBox = "<div class=\"modal fade iconModal\" id=\"successModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\"\n" +
            "     aria-hidden=\"true\">\n" +
            "    <div class=\"modal-dialog \" style=\"width: 175px;margin-top:10px;\">\n" +
            "        <div class=\"modal-content transparent-bg bsn\" id=\"successBox\">\n" +
            "            <div class=\"modal-body opacity-black p15\">\n" +
            "                <div class=\"iconModal-center\">\n" +
            "                    <a class=\"icon-wrap\">\n" +
            "                        <img src=\"../img/icon/ok.png\" class=\"img-responsive\">\n" +
            "                    </a>\n" +
            "                    <span class=\"s18 my-color\">设置成功</span>\n" +
            "                </div>\n" +
            "            </div>\n" +
            "        </div>\n" +
            "    </div>\n" +
            "</div>";
        var mymodal = $(modalBox);
        mymodal.modal('show');
        this.append("#successModal");
    }

    // 替换bootstrap modal原生背景颜色
    var modalBackdrop = function () {
        // 模态框开启时更换遮罩背景颜色
        $(".modal:not(.iconModal)").on('show.bs.modal', function () {
            $(".my-backdrop").fadeIn();
        });

        // 模态框关闭时更换遮罩背景颜色
        $(".modal:not(.iconModal)").on('hide.bs.modal', function () {
            $(".my-backdrop").fadeOut();
        });
    };

    //  初始化
    var initMethod = function () {
        // 侧边栏切换显示
        $("#sidebarBtn").on("click", function () {

            var obj = $(this).attr('href');
            var sidebar = $(obj);

            if (!sidebar.hasClass('hide-sidebar')) {
                sidebar.hideSidebar();
            } else {
                sidebar.showSidebar();
            }
        });

        // boot下拉菜单的显示方式更改为鼠标移入显示
        $(".dropdown-hover").hover(
            function () {
                $(this).find(".dropdown-menu").toggleDisplay();
            },
            function () {
                $(this).find(".dropdown-menu").toggleDisplay();
            }
        );


        // 阻止默认操作
        $(".slidersMenu").on("click", function (e) {
            e.stopPropagation();
        });
        // 侧边栏目录 初始化
        $.sidebarMenu($('.sidebar-menu'));

        // 自定义动态生成滚动条 初始化
        $("#sidebar").perfectScrollbar({});
    };

    // 刷新页面 iframe保持不变
    var holdiframe = function () {
        $(document.body).on("click", "a[data-hash]", function (event) {
            location.hash = $(this).data('hash');
        });
        if (location.hash) {
            $(location.hash).parents('.treeview-menu').addClass('menu-open');
            $(location.hash).parent('li').addClass('active');
            $(location.hash).parents('.treeview').addClass('active');
            var iframeURL = $(location.hash).attr('href');
            $("#frame-contect").attr('src', iframeURL);
        }

        $(".treeview-menu").find('a').on("click", function () {
            $(this).parent('li').addClass('active');
            $(this).parent('li').siblings().removeClass('active');
            $(this).parents('li.treeview').siblings('li.treeview').find('.treeview-menu li').removeClass('active');
        });
    };

    // 更换背景图片
    var toggleBackdrop = function () {

        var backgroundModal = $("#backgroundImgToggleModal");

        // 点击更换背景图片
        $(".bgImgBox").on("click", function () {
            var backImg = $(this).find('img').attr('src');
            $(".main-bg").css("background-image", "url(" + backImg + ")");
            $.cookie('backimg-cookie', backImg, {expires: 7, path: '/'});
            backgroundModal.modal('hide');
            alertSuccess();
        });

        // 获取cookie中设置的背景图片
        var backimg = $.cookie('backimg-cookie');
        if (backimg) {
            $(".main-bg").css("background-image", "url(" + backimg + ")");
        }

    };


    $(function () {
        modalBackdrop();
        initMethod();
        holdiframe();
        toggleBackdrop();
    });
})(jQuery);

function exportTo(type) {

    $('.table').tableExport({
        filename: 'table_%DD%-%MM%-%YY%',
        format: type,
        cols: '2,3,4'
    });

    /*
    日期格式：
        %DD% ? day
        %MM% ? month
        %YY% ? year
        %hh% ? hours
        %mm% ? minutes
        %ss% ? seconds
    配置参数：
        filename：导出文件的名称。
        format：导出文件的格式。
        cols：指定导出的表格列。
        head_delimiter：导出时分离标题。
        column_delimiter：导出时隔离的列。
        before(this)：回调函数。
        onafter(this)：回调函数。

     */
}