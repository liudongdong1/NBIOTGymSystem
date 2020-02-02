<%--
  Created by IntelliJ IDEA.
  User: ldd
  Date: 2019/6/22
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>锻炼日志</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#header').load('member_header.html');
        })
    </script>
</head>
<body background="img/u5.jpeg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div id="header"></div>

<div style="position: relative;padding-top: 100px">
    <c:if test="${!empty succ}">
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${succ}
        </div>
    </c:if>
    <c:if test="${!empty error}">
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${error}
        </div>
    </c:if>
</div>
<div class="panel panel-default" style="width: 90%;margin-left: 5%">
    <div class="panel-heading">
        <h3 class="panel-title">
            锻炼日志
        </h3>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>流水号</th>
                <th>设备号</th>
                <th>会员证号</th>
                <th>开始日期</th>
                <th>结束日期</th>
                <%-- <th>Sencor参数</th>--%>
                <th>详情</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="alog">
                <tr>
                    <td><c:out value="${alog.ser_num}"></c:out></td>
                    <td><c:out value="${alog.instr_id}"></c:out></td>
                    <td><c:out value="${alog.member_id}"></c:out></td>
                    <td><c:out value="${alog.begin_date}"></c:out></td>
                    <td><c:out value="${alog.end_date}"></c:out></td>
                    <td>
                        <a href="exercisedetail.html?ser_num=<c:out value='${alog.ser_num}'></c:out>">
                        detail</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
