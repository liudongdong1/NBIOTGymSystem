<%--
  Created by IntelliJ IDEA.
  User: ldd
  Date: 2019/7/27
  Time: 0:46
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> ${detail.name}</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#header').load('member_header.html');
        })
    </script>
</head>
<body background="../../static/img/instrument2.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div id="header" style="padding-bottom: 80px"></div>

<div class="col-xs-6 col-md-offset-3">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">《 ${detail.name}》</h3>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <tbody>
                <tr>
                    <th width="15%">设备名</th>
                    <td>${detail.name}</td>
                </tr>
                <tr>
                    <th>价格</th>
                    <td>${detail.price}</td>
                </tr>
                <tr>
                    <th>数量</th>
                    <td>${detail.quantity}</td>
                </tr>
                <tr>
                    <th>采购日期</th>
                    <td>${detail.order_date}</td>
                </tr>
                <tr>
                    <th>类别号</th>
                    <td>${detail.class_id}</td>
                </tr>
                <tr>
                    <th>详情</th>
                    <td>${detail.description}</td>
                </tr>

                </tbody>
            </table>
        </div>
    </div>

</div>

</body>
</html>


