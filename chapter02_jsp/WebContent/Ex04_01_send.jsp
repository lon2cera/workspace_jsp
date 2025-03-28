<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Ex04_02_receive.jsp">
		<p>이름 : <input type="text" name="name"></p>
		<p>나이 : <input type="text" name="age"></p>
		<p>전화번호 : <input type="text" name="tel"></p>
		<p>
			성별 : 
			<input type="radio" name="gender" value="남">남
			<input type="radio" name="gender" value="여">여
		</p>
		<p>
			취미 : 
			<input type="checkbox" name="hobbies" value="영화">영화
			<input type="checkbox" name="hobbies" value="게임">게임
			<input type="checkbox" name="hobbies" value="독서">독서
			<input type="checkbox" name="hobbies" value="여행">여행
			<input type="checkbox" name="hobbies" value="기타">기타
		</p>
		<p>
			주소 : 
			<select name="addr">
				<option value="s">서울</option>
				<option value="g">경기</option>
				<option value="i">인천</option>
			</select>
	  	</p>
	  	<p>
			좋아하는 음식 : 
		    <select name="foods" size="4" multiple>
  			    <option value="한식">한식</option>
   				<option value="중식">중식</option>
   				<option value="일식">일식</option>
    			<option value="양식">양식</option>
    		</select>
		</p>  
		<p>	  
			<button type="button" onclick="send(this.form)">전송</button>
        	<input type="reset" value="초기화">
        	<input type="hidden" name="nickname" value="ss">
        </p>  
	</form>
</body>
<script type="text/javascript">
	function send(f) {
		f.submit();
	}
</script>
</html>