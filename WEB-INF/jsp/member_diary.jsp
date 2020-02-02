<%--
  Created by IntelliJ IDEA.
  User: ldd
  Date: 2019/6/30
  Time: 12:55
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> ${member.name}王小伟的主页</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#header').load('member_header.html');
        })
    </script>
</head>
<body background="../../static/img/u5.jpeg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div id="header" style="padding-bottom: 80px"></div>

<div class="col-xs-6 col-md-offset-3">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title"> ${member.name}锻炼日记</h3>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <tbody>
                <tr>
                    <th width="15%">Date</th>
                    <td>2019-7-7</td>
                </tr>
                <tr>
                    <th>Content</th>
                    <td>
                        ${content}
                    </td>
                </tr>

                </tbody>
            </table>
        </div>
    </div>

</div>

</body>
</html>

