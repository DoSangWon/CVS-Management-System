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
<center><h1>���� ���� ����</h1></center>
<%
String bid=request.getParameter("branch_Id");
String bLoc=request.getParameter("branch_Loc");
String bName=request.getParameter("branch_Owner_Name");
String bTel=request.getParameter("branch_tel");
String bOTel=request.getParameter("branch_Owner_tel");
String _branch_Id= bid;
%>
<center>
<form action = "Branch_Update_Query_Forward.jsp" method="post">
			    <input type=hidden name="bid" value=<%=bid %>>
   <!-- ���� ID   : 		<input type=text name = "branch_Id" value=<%=bid %>><p> -->
   ���� ��ġ      : 		<input type=text name = "bLoc" value=<%=bLoc%>><p>
   �����          : 		<input type=text name ="bName" value=<%=bName %>><p>
   ���� ����ó   : 		<input type=text name ="bTel" value=<%=bTel %>><p>
   ���� ����ó   : 		<input type=text name ="bOTel" value=<%=bOTel %>><p>
<input type = submit value = "����">
</form>
</center>
</body>
</html>