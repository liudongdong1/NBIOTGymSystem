<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ldd
  Date: 2019/7/24
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>exerciseData</title>
</head>
<body>
    <div id="echarts"></div>
    <p align="center">${content}</p>
    <script type="text/javascript" src="js/echarts.min.js"></script>
    <script type="text/javascript">
        var container = document.getElementById('echarts');
        //用于使chart自适应高度和宽度,通过窗体高宽计算容器高宽
        var resizeContainer = function () {
            //屏幕宽度
            w = window.innerWidth;
            //屏幕高度
            h = window.innerHeight
            container.style.width = w*0.98 +'px';
            container.style.height = h*0.9 +'px';
        };
        //设置容器高宽
        resizeContainer();
        var myChart=echarts.init(document.getElementById('echarts'));
        option = {
            chart:{
                zoomType:'x',
            },
            title: {
                text: '腿弯举机数据'
            },
            tooltip:{
                trigger : 'axis',
                axisPointer : {
                    show : true,
                    type : 'cross',
                    lineStyle : {
                        type : 'dashed',
                        width : 1
                    }
                }
            },
            legend : {
                data : ['X轴','Y轴','Z轴'],
                bottom : 10,

            },
            calculable : true,     //拖拽手柄过程中实时更新图表视图
            // dataZoom : [{       //显示区域进度条（已屏蔽）
            //     xAxisIndex:0,
            //     show : true,
            //     realtime : true,
            //     start : 0,
            //     end : 100
            // }],
            grid:{
                left:40,
                top:50,
                right:30,
                bottom:75
            },
            xAxis: {
                type: 'category',
                data:${index}
            },
            yAxis: {
                type: 'value',
            },
            series:[
                {
                    name :  'X轴',
                    // type : 'scatter',
                    type : 'line',
                    data :  ${data1}
                },
                {
                    name :  'Y轴',
                    // type : 'scatter',
                    type : 'line',
                    data :  ${data2}
                },
                {
                    name :  'Z轴',
                    // type : 'scatter',
                    type : 'line',
                    data :  ${data3}
                },
            ]
        };
        myChart.setOption(option);
        window.onresize = function () {
            //重置容器高宽
            resizeContainer();
            myChart.resize();
        }
    </script>
</body>
</html>
