<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="models.Student"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>履修科目一覧</title>
<!-- Normalize.css -->
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" type="text/css" href="css/courseTable.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
	<div class="Button__container">
		<a class="Button--element btn"
			href="SelectGrade?selection=${student.department}">戻る</a> <a
			class="Button--element next" href="">次へ</a>
		<p class="Button--element MON">月</p>
		<p class="Button--element TUE">火</p>
		<p class="Button--element WED">水</p>
		<p class="Button--element THU">木</p>
		<p class="Button--element FRI">金</p>

		<p class="Button--element NUM1">1</p>
		<p class="Button--element NUM2">2</p>
		<p class="Button--element NUM3">3</p>
		<p class="Button--element NUM4">4</p>
		<p class="Button--element NUM5">5</p>
		<%
			String[] dayOfWeekStr = {"MON", "TUE", "WED", "THU", "FRI"};
			for (int dayOfWeek = 1; dayOfWeek <= 5; dayOfWeek++) {
				for (int hour = 1; hour <= 5; hour++) {
					//String storedOrNot = "";
					// 				if(dayOfWeek == 3 && hour == 2) {
					// 					storedOrNot = " stored";
					// 				}
		%>
		<a class="Button--element HOVER stored"
			id="<%=dayOfWeekStr[dayOfWeek - 1]%><%=hour%>"
			href="SelectCourse?dayOfWeek=<%=dayOfWeek%>&hour=<%=hour%>">
			<div class="close-button" id="<%=dayOfWeekStr[dayOfWeek - 1]%><%=hour%>close">
				<svg fill="#FFFFFF" height="26" viewBox="0 0 24 24" width="26"
					xmlns="http://www.w3.org/2000/svg">
                        <path
						d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z" />
                        <path d="M0 0h24v24H0z" fill="none" />
                    </svg>
			</div>サンプル
		</a>
		<%
			}
			}
		%>

	</div>
	<script type="text/javascript">
		var i = 1;
		var id = "#MON";
		var array = [ '#MON', '#TUE', '#WED', '#THU', '#FRI' ];

		function test() {
			var id2 = array[j] + i;
			console.log(id2);
			$(id2).hover(function() {
				$(id2 + "close").css('display', 'flex');
			}, function() {
				$(id2 + "close").hide();
			});

			$(id2 + "close").click(function() {
				$(id2).text("+");
				$(id2).toggleClass("stored");
			});
		}
		for (var j = 0; j < 5; j++) {
			for (var i = 1; i <= 5; i++) {
				test();
			}
		}
	</script>
</body>
</html>