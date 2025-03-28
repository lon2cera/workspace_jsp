<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Ex04_servlet">
		<p>아이디 <input type="text" name="id"> </p>
		<p>비밀번호 <input type="password" name="pw"> </p>
		<p>이름 <input type="text" name="name"> </p>
		<p>이메일 <input type="text" name="email"> </p>
		<p>성별 
			<input type="radio" name="gender" value="남" checked>남
			<input type="radio" name="gender" value="여">여
		</p>
		<p>취미
			<input type="checkbox" name="hobbies" value="게임">게임
			<input type="checkbox" name="hobbies" value="영화">영화
			<input type="checkbox" name="hobbies" value="수면">수면
			<input type="checkbox" name="hobbies" value="운동">운동
		</p>
		<input type="button" value="전송" onclick="send(this.form)">
	</form>
</body>
<script type="text/javascript">
	function send(f) {
		if(f.id.value==''){
			alert('아이디 미입력')
			return;
		}
		if(f.pw.value==''){
			alert('비밀번호 미입력')
			return;
		}
		if(f.name.value==''){
			alert('이름 미입력')
			return;
		}
		if(f.email.value==''){
			alert('이메일 미입력')
			return;
		}
		let count=0;
		for(let i=0;i<f.hobbies.length;i++){
			if(f.hobbies[i].checked==true){
				count++;
			}
		}
		if(count==0){
			alert('취미 미선택');
			return;
		}


		f.submit();
	}
</script>
</html>