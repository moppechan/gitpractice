<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Kadai" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>課題</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String errorCode = request.getParameter("error");
		if(errorCode != null && errorCode.equals("1")){
			Kadai ac = (Kadai)session.getAttribute("input_data");
	%>
		<p style="color:red">登録に失敗しました。</p>
		<h3>新規会員登録</h3>
		<form action="KadaiConfirm" method="post">
		名前：<input type="text" name="name" value="<%=ac.getName()%>"><br>
		年齢：<input type="text" name="age"value="<%=ac.getAge()%>"><br>
		メール：<input type="email" name="mail"value="<%=ac.getMail()%>"><br>
		パスワード：<input type="password" name="pw"><br>
		性別：男<input type="radio" name="gender" value="0">
 		      女<input type="radio" name="gender" value="1"><br>
 		tel：<input type="text" name="tel" value="<%=ac.getTel()%>"><br>  
			<input type="submit" value="登録">
		</form>
	<%
		} else {
	%>
	<h3>新規会員登録</h3>
	<form action="KadaiConfirm" method="post">
		名前：<input type="text" name="name"><br>
		年齢：<input type="text" name="age"><br>
		メール：<input type="email" name="mail"><br>
		パスワード：<input type="password" name="pw"><br>
		性別：男<input type="radio" name="gender" value="0">
 		      女<input type="radio" name="gender" value="1"><br>
 		tel：<input type="text" name="tel"><br>      
		<input type="submit" value="登録">
	</form>
	<%
		}
	%>
</body>
</html>