<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<ul class="page-sidebar-menu">

	<li>
		<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

		<div class="sidebar-toggler hidden-phone"></div> <!-- BEGIN SIDEBAR TOGGLER BUTTON -->

	</li>

	<li>
		<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

		<form class="sidebar-search">

			<div class="">

				<a href="javascript:;" class="remove"></a> <input type="text"
					 />

			</div>

		</form> <!-- END RESPONSIVE QUICK SEARCH FORM -->

	</li>

	<li class="start active "><a href=""> <i
			class="icon-home"></i> <span class="title">后台首页</span> <span
			class="selected"></span>

	</a></li>


	<li class="last"><a href="javascript:;"> <i class="icon-user"></i>

			<span class="title">书籍信息</span> <span class="arrow "></span>

	</a>

		<ul class="sub-menu">

			<li><a href="${pageContext.request.contextPath}/book/book-list">书籍列表</a></li>
			<li><a href="${pageContext.request.contextPath}/book/toAddBook">添加书籍</a></li>
			

			
			
			
		</ul></li>
		


	<!--权限管理  -->
<%--	<li class="last"><a href="javascript:;"> <i--%>
<%--			class="icon-lock"></i> <span class="title">用户信息</span> <span--%>
<%--			class="arrow "></span>--%>

<%--	</a>--%>

<%--		<ul class="sub-menu">--%>

<%--			<li><a href="GoodsSelectServlet?do=goods-list">商品管理</a></li>--%>
<%--			<li><a href="${pageContext.request.contextPath}/book/book-list">添加商品</a></li>--%>
<%--			<li><a href="${pageContext.request.contextPath}/book/book-list">商品修改</a></li>--%>
<%--			<li><a href="${pageContext.request.contextPath}/book/book-list">商品删除</a></li>--%>
<%--            --%>
<%--            --%>

<%--		</ul></li>--%>

	<!--菜单管理  -->
	<li class="last"><a href="javascript:;"> <i
			class="icon-sitemap"></i> <span class="title">数据导出</span> <span
			class="arrow "></span>

	</a>

		<ul class="sub-menu">

			<li><a href="${pageContext.request.contextPath}/datas.jsp">展示</a></li>


		</ul></li>

</ul>