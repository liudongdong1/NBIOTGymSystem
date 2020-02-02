<%--
  Created by IntelliJ IDEA.
  User: ldd
  Date: 2019/6/18
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>全部会员</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script>
        $(function () {
            $('#header').load('admin_header.html');
        })
    </script>
</head>
<body background="img/u1.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div id="header"></div>
<c:if test="${!empty info}">
    <script>alert("${info}");window.location.href="allmembers.html"</script>
</c:if>

<div style="position: relative;top: 15%">
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


<div class="panel panel-default" style="position:relative;top: 80px;width: 90%;margin-left: 5%">
    <div class="panel-heading">
        <h3 class="panel-title">
            全部会员
        </h3>
    </div>
    <div class="panel-body">
        <table class="table table-hover" >
            <thead>
            <tr>
                <th>会员号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>生日</th>
                <th>注册</th>
                <th>地址</th>
                <th>电话</th>
                <th>编辑</th>
                <th>删除</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${members}" var="member">
                <tr>
                    <td><c:out value="${member.member_id}"></c:out></td>
                    <td><c:out value="${member.name}"></c:out></td>
                    <td><c:out value="${member.sex}"></c:out></td>
                    <td><c:out value="${member.birth}"></c:out></td>
                    <td><c:out value="${member.registor_date}"></c:out></td>
                    <td><c:out value="${member.address}"></c:out></td>
                    <td><c:out value="${member.phone}"></c:out></td>
                    <td><a href="member_edit.html?member_id=<c:out value="${member.member_id}"></c:out>"><button type="button" class="btn btn-info btn-xs">编辑</button></a></td>
                    <td><a href="member_delete.html?member_id=<c:out value="${member.member_id}"></c:out>"><button type="button" class="btn btn-danger btn-xs">删除</button></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
