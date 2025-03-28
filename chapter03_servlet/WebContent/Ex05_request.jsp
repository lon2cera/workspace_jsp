<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- form을 이용하여 이름, 국어, 영어, 수학 점수 전달
		 name, kor, eng, mat 파라미터를 이용
		 서블릿에서 정보 출력 (이름, 평균, 학점)
	 -->
	 <form action="Ex05_servlet">
		 <div>이름 <input type="text" name="name"></div>
		 <div>국어 <input type="text" name="kor"></div>
		 <div>영어 <input type="text" name="eng"></div>
		 <div>수학 <input type="text" name="mat"></div>
		 <input type="button" value="전송" onclick="send(this.form)">
	 </form>
</body>
<script type="text/javascript">
	function send(f) {
		f.submit();
	}
</script>
</html>