<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

    <meta charset="utf-8"/>

    <title>用户管理</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

    <meta content="" name="description"/>

    <meta content="" name="author"/>

    <!-- BEGIN GLOBAL MANDATORY STYLES -->

    <jsp:include page="../pageResources/css.jsp"></jsp:include>

    <!-- END GLOBAL MANDATORY STYLES -->

<%--    <!-- END PAGE LEVEL STYLES -->--%>

<%--    <link rel="shortcut icon" href="${pageContext.request.contextPath}/media/image/favicon.ico"/>--%>

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

<jsp:include page="../pageResources/head.jsp"></jsp:include>

<!-- BEGIN CONTAINER -->

<div class="page-container row-fluid">

    <!-- BEGIN SIDEBAR -->

    <div class="page-sidebar nav-collapse collapse">

        <jsp:include page="../pageResources/nav.jsp"></jsp:include>

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

            <jsp:include page="../pageResources/pagehead.jsp"></jsp:include>
            <!-- END PAGE HEADER-->

            <!-- BEGIN EXAMPLE TABLE PORTLET-->

            <div class="portlet box blue">

                <div class="portlet-title">

                    <div class="caption">
                        <i class="icon-edit"></i>书籍列表
                    </div>

                    <div class="tools">

                        <a href="javascript:;" class="collapse"></a> <a
                            href="#portlet-config" data-toggle="modal" class="config"></a> <a
                            href="javascript:;" class="reload"></a> <a href="javascript:;"
                                                                       class="remove"></a>

                    </div>

                </div>

                <div class="portlet-body">

                    <table class="table table-striped table-hover table-bordered"
                           id="sample_editable_1">

                        <thead>
                        <tr>
                            <th>书籍编号</th>
                            <th>书籍名字</th>
                            <th>书籍数量</th>
                            <th>书籍详情</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>

                        <c:forEach var="book" items="${list}">
                            <tr>
                                <td>${book.bookID}</td>
                                <td>${book.bookName}</td>
                                <td>${book.bookCounts}</td>
                                <td>${book.detail}</td>
								<td>
								<a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.getBookID()}">更改</a> |
								<a href="${pageContext.request.contextPath}/book/del/${book.getBookID()}"
                                   onclick="javascript:return confirm('确认删除吗？');">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>

                    </table>

                </div>

            </div>

            <!-- END EXAMPLE TABLE PORTLET-->


        </div>

        <!-- END PAGE CONTAINER-->

    </div>

    <!-- END PAGE -->

</div>

<!-- END CONTAINER -->

<!-- BEGIN FOOTER -->

<jsp:include page="../pageResources/foot.jsp"></jsp:include>

<!-- END FOOTER -->

<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

<!-- BEGIN CORE PLUGINS -->
<jsp:include page="../pageResources/js.jsp"></jsp:include>
<script>

    jQuery(document).ready(function () {

        App.init();

        TableEditable.init();

    });

</script>

</body>

<!-- END BODY -->

</html>