<%--
  Created by IntelliJ IDEA.
  User: ldd
  Date: 2019/6/21
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${memberinfo.name}的主页</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
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
                信息修改
            </h3>
        </div>
        <div class="panel-body">
            <form action="member_edit_do_r.html" method="post" id="edit" >
                <div class="input-group">
                    <span  class="input-group-addon">会员证号</span>
                    <input type="text" readonly="readonly" class="form-control" name="member_id" id="member_id" value="${memberinfo.member_id}">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">姓名</span>
                    <input type="text" class="form-control" name="name" id="name" value="${memberinfo.name}" >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">性别</span>
                    <input type="text" class="form-control" name="sex" id="sex"  value="${memberinfo.sex}" >
                </div>
                <div class="input-group">
                    <span class="input-group-addon">生日</span>
                    <input type="datetime-local" value="2019-06-24T13:59:59" class="form-control" name="birth" id="birth"  value="${memberinfo.birth}" >
                </div>
                <div class="input-group">
                    <span class="input-group-addon">注册</span>
                    <input type="datetime-local" value="2019-06-24T13:59:59" class="form-control" name="registor_date" id="registor_date"  value="${memberinfo.registor_date}" >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">地址</span>
                    <input type="text" class="form-control" name="address" id="address"  value="${memberinfo.address}" >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">电话</span>
                    <input type="text" class="form-control" name="phone" id="phone"  value="${memberinfo.phone}" >
                </div>
                <br/>
                <input type="submit" value="确定" class="btn btn-success btn-sm" class="text-left">
                <script>
                    $("#edit").submit(function () {
                        if($("#name").val()==''||$("#sex").val()==''||$("#birth").val()==''||$("#address").val()==''||$("#phone").val()==''||$("#registor_date").val()==''){
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

