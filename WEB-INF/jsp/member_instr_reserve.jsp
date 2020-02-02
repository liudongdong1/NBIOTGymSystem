<%--
  Created by IntelliJ IDEA.
  User: ldd
  Date: 2019/6/25
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>预约设备</title>
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
<div id="header" style="padding-bottom: 80px"></div>
<div class="col-xs-5 col-md-offset-3">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                预约设备
            </h3>
        </div>
        <div class="panel-body">
            <form action="member_reserve_do.html" method="post" id="reserve" >
                <div class="input-group">
                    <span  class="input-group-addon">设备id</span>
                    <input type="text" readonly="readonly" class="form-control" name="instr_id" id="instr_id" value="${instrument.instr_id}">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">设备名</span>
                    <input type="text" class="form-control" name="name" id="name" value="${instrument.name}" >
                </div>
                <div class="input-group">
                    <span class="input-group-addon">开始时间</span>
                    <input type="datetime-local" value="2019-06-24T13:59:59" class="form-control" name="begin_date" id="begin_date"  >
                </div>
                <div class="input-group">
                    <span class="input-group-addon">结束时间</span>
                    <input type="datetime-local" value="2019-06-24T14:59:59" class="form-control" name="end_date" id="end_date"  >
                </div>
                <div class="input-group">
                    <span class="input-group-addon">已预约信息</span>
                    <textarea name="reservedtime" id="reservedtime" cols="40" rows="10">${reservedtime}</textarea>
                </div>
                <br/>
                <input type="submit" value="确定" class="btn btn-success btn-sm" class="text-left">
                <script>
                    $("#reserve").submit(function () {
                        if($("#name").val()==''||$("#instr_id").val()==''||$("#begin_date").val()==''||$("#end_date").val()==''){
                            alert("请填入完整预约时间信息！");
                            return false;
                        }
                    })
                </script>
            </form>
        </div>
    </div>
</div>
</body>
</html>
