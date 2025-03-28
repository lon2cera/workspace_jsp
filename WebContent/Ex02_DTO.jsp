<%@page import="org.joonzis.bean.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 클래스 파일(bean)을 이용하여 데이터 저장, 사용
	MemberDTO m=new MemberDTO();
	
	m.setId("admin");
	m.setPw("asdf");
	m.setName("김");
	m.setAge(20);
	m.setAddr("서울");
	m.setGender("남");
	String[] h={"독서","게임"};
	m.setHobbies(h);
	String[] lf={"삼겹살","김치"};
	m.setLikeFoods(lf);
	String[] df={"국수","카레"};
	m.setDislikeFoods(df);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li>아이디 : <%=m.getId() %></li>	
		<li>비밀번호 : <%=m.getPw() %></li>	
		<li>이름 : <%=m.getName() %></li>	
		<li>나이 : <%=m.getAge() %></li>	
		<li>주소 : <%=m.getAddr() %></li>	
		<li>성별 : <%=m.getGender() %></li>	
		<li>취미 : 
		<%	for(String hobby:m.getHobbies()){
				out.print(hobby+"");
			}%>
		</li>
		<li>좋아하는 음식 : 
		<%	for(String likefood:m.getLikeFoods()){
				out.print(likefood+"");
			}%>		
		</li>	
		<li>싫어하는 음식 : 
		<%	for(String dislikefood:m.getDislikeFoods()){
				out.print(dislikefood+"");
			}%>	
		</li>	

	</ul>
</body>
</html>