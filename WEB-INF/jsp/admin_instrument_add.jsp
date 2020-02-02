<%--
  Created by IntelliJ IDEA.
  User: ldd
  Date: 2019/6/19
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>设备信息添加</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
        .form-group {
            margin-bottom: 0;
        }
    </style>
    <script>
        $(function () {
            $('#header').load('admin_header.html');
        })
    </script>
</head>
<body background="img/instruments1.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<div id="header"></div>
<div style="position: relative;padding-top: 60px; width: 80%;margin-left: 10%">
    <form action="instrument_add_do.html" method="post" id="addInstrument">
        <div class="form-group">
            <label for="name">设备名</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="请输入设备名">
        </div>
        <div class="form-group">
            <label for="price">价格</label>
            <input type="text" class="form-control" name="price" id="price" placeholder="请输入价格">
        </div>
        <div class="form-group">
            <label for="quantity">数量</label>
            <input type="text" class="form-control" name="quantity" id="quantity" placeholder="请输入设备数量">
        </div>
        <div class="form-group">
            <label for="order_date">采购日期</label>
            <input type="datetime-local" value="2019-06-24T13:59:59" class="form-control" name="order_date" id="order_date" placeholder="请输入采购日期">
        </div>
        <div class="form-group">
            <label for="class_id">类别号</label>
            <input type="text" class="form-control" name="class_id" id="class_id" placeholder="请输入分类号">
        </div>
        <div class="form-group">
            <label for="introduction">详情</label>
            <textarea class="form-control" rows="3" name="introduction" id="introduction"
                      placeholder="请输入设备详细功能和用法"></textarea>
        </div>
        <input type="submit" value="添加" class="btn btn-success btn-sm" class="text-left">
        <script>
            $("#addInstrument").submit(function () {
                if ($("#name").val() == '' || $("#introduction").val() == '' ||  $("#price").val() == '' || $("#order_date").val() == '' || $("#class_id").val() == '' ||  $("#quantity").val() == '') {
                    alert("请填入完整设备信息！");
                    return false;
                }
            })
        </script>
    </form>
</div>
</body>
</html>

