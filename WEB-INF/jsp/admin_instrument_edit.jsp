<%--
  Created by IntelliJ IDEA.
  User: ldd
  Date: 2019/6/21
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑 ${detail.name}</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script>
        $(function () {
            $('#header').load('admin_header.html');
        })
    </script>
</head>
<body background="../../static/img/instrument2.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<div id="header" style="padding-bottom: 80px"></div>

<div class="col-xs-6 col-md-offset-3" style="position: relative;">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">编辑 ${detail.name}</h3>
        </div>
        <div class="panel-body">
            <form action="instrument_edit_do.html" method="post" id="editInstrument" >
                <div class="input-group">
                    <span  class="input-group-addon">设备ID</span>
                    <input type="text" class="form-control" name="instr_id" id="instr_id" value="${detail.instr_id}">
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">设备名</span>
                    <input type="text" class="form-control" name="name" id="name" value="${detail.name}">
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">价格</span>
                    <input type="text" class="form-control" name="price"  id="price" value="${detail.price}">
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">数量</span>
                    <input type="text" class="form-control" name="quantity"  id="quantity" value="${detail.quantity}">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">采购日期</span>
                    <input type="datetime-local"   class="form-control" name="order_date" id="order_date" value="${detail.order_date}">
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">详情</span>
                    <input type="text" class="form-control" name="description" id="description"  value="${detail.description}" >
                </div>
                <div class="input-group">
                    <span  class="input-group-addon">分类号</span>
                    <input type="text" class="form-control" name="class_id" id="class_id" value="${detail.class_id}">
                </div>
               
                <input type="submit" value="确定" class="btn btn-success btn-sm" class="text-left">
                <script>
                    $("#editInstrument").submit(function () {
                        if($("#name").val()==''||$("#description").val()==''||$("#price").val()==''||$("#order_date").val()==''||$("#class_id").val()==''||$("#quantity").val()==''){
                            alert("请填入完整设别信息！");
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
