<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学科選択</title>
</head>
<body>
	<ul>
		<li><a href="selectFaculty.jsp">戻る</a></li>
		<li>学科を選んでください。</li>
		<%
			String[][] array = (String[][]) session.getAttribute("watasareshiarray");
			for (int i = 0; i < array.length; i++) {
		%>
		<li><a href="SelectGradeController?selection=<%=array[i][0]%>">
				<%
					for (int j = 0; j < array[i].length; j++) {
							out.print(array[i][j] + " ");
						}
				%>
		</a></li>
		<%
			}
		%>
	</ul>
</body>
</html>