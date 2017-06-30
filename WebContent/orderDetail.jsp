<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="models.Order,models.Textbook,models.CourseDAO,models.Course,java.text.SimpleDateFormat,java.util.Date,java.text.DateFormat,java.util.Locale,java.util.List"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注文詳細</title>
<!-- Normalize.css -->
<link rel="stylesheet" href="normalize.css">
<link rel="stylesheet" type="text/css" href="css/orderDetail.css">
</head>
<body>
	<%
		int num = (int) request.getAttribute("num");
		String[][] textbooks = (String[][]) request.getAttribute("textbooks");
		String[] dateArray = (String[]) request.getAttribute("date");
	%>
	<a class="btn back" href="OrderHistory">戻る</a>
	<div class="message__top">注文詳細</div>
	<div class="order__card">
		<span class="order__date">注文日時&nbsp; <span
			class="order__datetime__value"><%=dateArray[0]%></span>
		</span> <span class="order__sum">合計 <span class="order__sum__value">¥&nbsp;<%=dateArray[1]%></span>
		</span>
	</div>

	<div class="message__bottom">
		<span class="message__textbook">購入教科書</span> <span
			class="message__datetime">受取日時</span>
	</div>
	<div class="order">
		<div class="order__textbook">
			<%
				for (int i = 0; i < textbooks.length; i++) {
			%>
			<div class="textbook">
				<span class="DOW DOW-<%=textbooks[i][3]%>"><%=textbooks[i][0]%></span> <span
					class="course__name"><%=textbooks[i][1]%></span> <span
					class="textbook__name"><%=textbooks[i][2]%></span>
			</div>
			<%
				}
			%>
		</div>

		<div class="order__datetime">
			<div class="date__top L"><%=dateArray[2]%></div>
			<div class="date__middle"><%=dateArray[3]%></div>
			<div class="date__bottom"><%=dateArray[4]%></div>
		</div>
	</div>
	<div class="Button">
		<a class="btn order__edit" href="#">注文変更</a> <a
			class="btn datetime__edit" href="#">受取日時変更</a> <a class="btn cancel"
			href="CancelOrder?selection=<%=num%>">注文キャンセル</a>
	</div>
</body>
</body>
</html>