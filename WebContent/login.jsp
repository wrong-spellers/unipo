<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ログイン</title>
<link rel="stylesheet" href="main.css">
</head>
<body>
	<%
		if (session.getAttribute("login") != null && !(Boolean) session.getAttribute("login")) {
			out.println("<p>ユーザ名またはパスワードが違います</p>");
		}
	%>

	<!--
		<dl>
			<dt>ユーザ名</dt>
			<dd>
				<input type="text" name="name" />
			</dd>
			<dt>パスワード</dt>
			<dd>
				<input type="password" name="pass" />
			</dd>
		</dl>
		<button type="submit" name="login">ログイン</button>
		-->

	<div class="container">
		<form action="LoginController" method="post">
			<div class="LoginForm ">
				<h1 class="LoginForm__title">UNIPO</h1>

				<div class="LoginForm__student">
					<input type="text" placeholder="STUDENT ID" name="name" />
				</div>

				<div class="LoginForm__password">
					<input type="password" placeholder="PASSWORD" name="pass" />
				</div>

				<div class="LoginForm__submit">
					<input type="submit" value="ログイン" />
				</div>
			</div>
		</form>
	</div>


</body>
</html>