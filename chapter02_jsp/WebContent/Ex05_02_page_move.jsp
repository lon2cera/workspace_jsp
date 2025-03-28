<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name=request.getParameter("name");
	String age=request.getParameter("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>페이지 이동 중간 페이지</h1>
	<div>이름 : <%=name %></div>
	<div>나이 : <%=age %></div>
	
	<br> <hr> <br>
	
	<!-- html영역에서 이동 폼, a태그 -->
	<!-- java영역에서 이동 forward, redirect -->
	
	
	<!-- 1. a 태그로 이동하기 -->
	<!-- 파라미터 전달 x -->
	<a href="Ex05_03_page_move.jsp">파라미터x</a>
	<!-- 파라미터 전달 o -->
	<a href="Ex05_03_page_move.jsp?name=<%=name%>&age=<%=age%>">파라미터o</a>

	<br> <hr> <br>
	
	<!-- 2. location 객체로 이동하기 -->
	<button onclick="location.href='Ex05_03_page_move.jsp'">파라미터X</button>
	<button onclick="location.href='Ex05_03_page_move.jsp?name=<%=name%>&age=<%=age%>'">파라미터O</button>
	
	<br> <hr> <br>
	
	<!-- 3. forward로 이동하기 -->
	<%
		//request.getRequestDispatcher("Ex05_03_page_move.jsp").forward(request, response);	
	%>
	
	<br> <hr> <br>
	
	<!-- 4. redirect로 이동화기 -->
	<%
		response.sendRedirect("Ex05_03_page_move.jsp");
	%>
</body>
</html>