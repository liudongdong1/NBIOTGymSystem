<%--
  Created by IntelliJ IDEA.
  User: ldd
  Date: 2019/6/18
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑会员信息</title>
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
<div id="header" style="padding-bottom: 80px"></div>
<div class="col-xs-6 col-md-offset-3" style="position: relative;">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">编辑会员信息 ${member.member_id}</h3>
        </div>
        <div class="panel-body">
            <form action="member_edit_do.html?member_id=${member.member_id}" method="post" id="memberedit" >
                <div class="input-group">
                    <span class="input-group-addon">会员ID</span>
                    <input type="text" class="form-control" name="member_id" id="member_id" value="${member.member_id}" >
                </div>
                <div class="input-group">
                    <span class="input-group-addon">姓名</span>
                    <input type="text" class="form-control" name="name" id="name" value="${member.name}" >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">性别</span>
                    <input type="text" class="form-control" name="sex" id="sex"  value="${member.sex}" >
                </div>
                <div class="input-group">
                    <span class="input-group-addon">生日</span>
                    <input type="datetime-local" value="2019-06-24T13:59:59" class="form-control" name="birth" id="birth"  value="${member.birth}" >
                </div>
                <div class="input-group" >
                    <span class="input-group-addon">注册</span>
                    <input type="datetime-local" value="2019-06-24T13:59:59" class="form-control" name="registor_date" id="registor_date" value="${member.registor_date}" >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">地址</span>
                    <input type="text" class="form-control" name="address" id="address"  value="${member.address}" >
                </div>
                <div class="input-group">
                    <span class="input-group-addon">电话</span>
                    <input type="text" class="form-control" name="phone" id="phone" value="${member.phone}" >
                </div>
                <input type="submit" value="确定" class="btn btn-success btn-sm" class="text-left">
                <script>
                    $("#memberedit").submit(function () {
                        if($("#name").val()==''||$("#sex").val()==''||$("#birth").val()==''||$("#registor_date").val()==''||$("#address").val()==''||$("#phone").val()==''){
                            alert("请填入完整会员信息！");
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
