<%--
  Created by IntelliJ IDEA.
  User: ldd
  Date: 2019/6/22
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>全部器材信息</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#header').load('member_header.html');
        })
    </script>
</head>
<body background="img/lizhi.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<div id="header"></div>

<div style="padding: 20px 550px 10px">
    <form method="post" action="member_queryinstrument_do.html" class="form-inline" id="searchform">
        <div class="input-group">
            <input type="text" placeholder="输入设备名" class="form-control" id="search" name="searchWord"
                   class="form-control">
            <span class="input-group-btn">
                <input type="submit" value="搜索" class="btn btn-default">
            </span>
        </div>
    </form>
    <script>
        $("#searchform").submit(function () {
            var val = $("#search").val();
            if (val == '') {
                alert("请输入关键字");
                return false;
            }
        })
    </script>
</div>
<div style="position: relative;top: 10%">
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
    <div class="panel-heading" style="background-color: #fff">
        <h3 class="panel-title">
            全部设备
        </h3>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>设备名</th>
                <th>价格</th>
                <th>数量</th>
                <th>采购日期</th>
                <th>详情</th>
                <th>预约</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${instruments}" var="instruments">
                <tr>
                    <td><c:out value="${instruments.name}"></c:out></td>
                    <td><c:out value="${instruments.price}"></c:out></td>
                    <td><c:out value="${instruments.quantity}"></c:out></td>
                    <td><c:out value="${instruments.order_date}"></c:out></td>
                        <%--  <td><c:out value="${instruments.description}"></c:out></td>--%>
                    <td><a href="member_instrument_detail.html?instrumentsId=<c:out value="${instruments.instr_id}"></c:out>">
                        <button type="button" class="btn btn-success btn-xs">详情</button>
                    </a></td>
                    <td><a href="reserve_instrument.html?instrumentsId=<c:out value="${instruments.instr_id}"></c:out>">
                        <button type="button" class="btn btn-success btn-xs">预约</button>
                    </a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>

