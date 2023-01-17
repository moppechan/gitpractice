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
	<p>下記の内容で登録します。よろしいですか？</p>
	<%
		Kadai account = (Kadai)session.getAttribute("input_data");
	%>
	名前：<%=account.getName() %><br>
	年齢：<%=account.getAge() %><br>
	<%
	String genderStr = request.getParameter("gender");
	int ka = Integer.parseInt(genderStr);
	String gender = ka == 0 ? "男" 
					            :"女";
	%>
	性別：<%=account.getGender() %><br>
	電話番号：<%=account.getTel() %><br>
	メール：<%=account.getMail() %><br>
	パスワード：********<br>
	<a href="KadaiExecute">OK</a><br>
	<a href="KadaiForm">戻る</a>
</body>
</html>