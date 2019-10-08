<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="member.model.*"%>
<jsp:useBean id="memberVO" class="member.model.memberVO"/>
<script type="text/javascript"
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/css/m main.css"
	rel="stylesheet" type="text/css">

<div class="navbar navbar-default navbar-static-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navbar-ex-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="navbar-ex-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="main.jsp">HOME</a></li>
				<li><a href="chart.jsp">CHART</a></li>
				<li><a href="music player.jsp">MUSIC</a></li>
				<li><a href="mypage.jsp">MY PAGE</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
			<li class="menu-bar"><a href="#">BOARD</a>
				<ul>
				<li><a href="BoardServlet?command=board_list">FREE</a></li>
				<li><a href="boardList2.jsp">CREATE MUSIC SHARE</a></li>
				</ul>
			</li>
			</ul>
			<p class="navbar-left navbar-text">Signed in as<%=memberVO.getName() %> <a href="#" class="navbar-link"></a></p></div>
		</div>
	</div>
</html>