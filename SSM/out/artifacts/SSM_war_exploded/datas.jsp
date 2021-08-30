<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!-->
<html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

    <meta charset="utf-8"/>

    <title>修改用户信息页面</title>

    <script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>

    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

    <meta content="" name="description"/>

    <meta content="" name="author"/>

    <!-- BEGIN GLOBAL MANDATORY STYLES -->

    <jsp:include page="WEB-INF/pageResources/css.jsp"></jsp:include>

    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL STYLES -->

    <link rel="stylesheet" type="text/css" href="../../media/css/select2_metro.css"/>

    <link rel="stylesheet" href="../../media/css/DT_bootstrap.css"/>


    <!-- END PAGE LEVEL STYLES -->

    <link rel="shortcut icon" href="../../media/image/favicon.ico"/>

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">


<jsp:include page="WEB-INF/pageResources/head.jsp"></jsp:include>

<!-- BEGIN CONTAINER -->

<div class="page-container row-fluid">

    <!-- BEGIN SIDEBAR -->

    <div class="page-sidebar nav-collapse collapse">

        <jsp:include page="WEB-INF/pageResources/nav.jsp"></jsp:include>

    </div>

    <!-- END SIDEBAR -->

    <!-- BEGIN PAGE -->

    <div class="page-content">

        <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

        <div id="portlet-config" class="modal hide">

            <div class="modal-header">

                <button data-dismiss="modal" class="close" type="button"></button>

                <h3>portlet Settings</h3>

            </div>

            <div class="modal-body">

                <p>Here will be a configuration form</p>

            </div>

        </div>

        <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

        <!-- BEGIN PAGE CONTAINER-->

        <div class="container-fluid">

            <!-- BEGIN PAGE HEADER-->

            <jsp:include page="WEB-INF/pageResources/pagehead.jsp"></jsp:include>

            <!-- END PAGE HEADER-->

            <div id="main" style="width: 600px;height:400px;"></div>
            <script type="text/javascript">
                // 基于准备好的dom，初始化echarts实例
                var myChart = echarts.init(document.getElementById('main'));

                // 指定图表的配置项和数据
                var option = {
                    title: {
                        text: '书籍显示'
                    },
                    tooltip: {},
                    legend: {
                        data: ['书籍数量']
                    },
                    xAxis: {
                        type: 'category',
                        axisLabel: {
                            interval: 0
                        },
                        data: []
                    },
                    yAxis: {},
                    series: [{
                        name: '书籍数量',
                        type: 'bar',
                        data: []
                    }]
                };

                $.ajax({
                        url: '${pageContext.request.contextPath}/echarts/go',
                        dataType: 'json',
                        success: function (data) {
                            var book = eval(data);
                            console.log(book);
                            for (let x in book) {
                                console.log(book[x].bookName);
                                option.xAxis.data[x] = book[x].bookName;
                                option.series[0].data[x] = book[x].bookCounts;
                                console.log(option.xAxis.data[x]);
                            }
                            myChart.setOption(option);

                        }
                    }
                )

            </script>
        </div>

        <!-- END PAGE CONTAINER-->

    </div>

    <!-- END PAGE -->

</div>

<!-- END CONTAINER -->

<jsp:include page="WEB-INF/pageResources/foot.jsp"></jsp:include>

<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

<!-- BEGIN CORE PLUGINS -->

<jsp:include page="WEB-INF/pageResources/js.jsp"></jsp:include>

<script>

    jQuery(document).ready(function () {

        App.init();

        TableEditable.init();

    });

</script>

</body>

<!-- END BODY -->

</html>