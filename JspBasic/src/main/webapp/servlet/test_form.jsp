<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/JspBasic/basic" method="post">
	<!-- method가 기본은 get으로 되어있고, post라고 하니 개인정보가 나오지 않았다 -->
		# 아이디: <input type="text" name="account"> <br>
		# 비밀번호: <input type="password" name="password"> <br>
		# 이름: <input type="text" name="name"> <br>
		<input type="submit" value="확인">
	</form>

</body>
</html>