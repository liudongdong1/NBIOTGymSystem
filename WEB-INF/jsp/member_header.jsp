<%--
  Created by IntelliJ IDEA.
  User: ldd
  Date: 2019/6/21
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav style="position:fixed;z-index: 999;width: 100%;background-color: #25c6fc" class="navbar navbar-default"
     role="navigation">
    <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
            <a class="navbar-brand " href="member_main.html"><p class="text-primary" style="font-family: 华文行楷; font-size: 200%; ">我的健身房</p></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav navbar-left">
                <li >
                    <a href="member_instruments.html">
                        器械查询
                    </a>
                </li>
                <li>
                    <a href="member_info.html" >
                        个人信息
                    </a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
                        我的健身
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="myExercise.html">健身日志</a></li>
                        <li class="divider"></li>
                        <li><a href="member_diary.html?type=1">健身笔记</a></li>
                    </ul>
                </li>
                <li >
                    <a href="member_repasswd.html" >
                        密码修改
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="member_info.html">${MemberPssw.username}, 已登录</a></li>
                <li><a href="login.html">退出</a></li>
            </ul>
        </div>
    </div>
</nav>
