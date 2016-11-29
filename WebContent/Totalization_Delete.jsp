<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center><h1>결산 삭제</h1></center>
<%
String Tnum=request.getParameter("Tnum");
String branch_Id=request.getParameter("branch_Id");
String revenue=request.getParameter("revenue");
String expenditure=request.getParameter("expenditure");
String _Tnum= Tnum;
%>
<center>
<form action = "Totalization_Delete_Query_Forward.jsp" method="post">
			    <input type=hidden name="_Tnum" value=<%=_Tnum %>>
   지정 ID   : 		<input type=text name = "branch_Id" value=<%=branch_Id %>><p>
   수익             : 		<input type=text name = "revenue" value=<%=revenue%>><p>
   지출             : 		<input type=text name ="expenditure" value=<%=expenditure %>><p>

<input type = submit value = "삭제">
</form>
</center>
</body>
</html>