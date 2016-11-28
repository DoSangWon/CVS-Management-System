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
<center><h1>지점 삭제</h1></center>
<%
String branch_Id=request.getParameter("branch_Id");
String branch_Loc=request.getParameter("branch_Loc");
String branch_Owner_Name=request.getParameter("branch_Owner_Name");
String branch_tel=request.getParameter("branch_tel");
String branch_Owner_tel=request.getParameter("branch_Owner_tel");
String _branch_Id= branch_Id;
%>
<center>
<form action = "Branch_Delete_Query_Forward.jsp" method="post">
			    <input type=hidden name="_branch_Id" value=<%=_branch_Id %>>
   지정 ID   : 		<input type=text name = "branch_Id" value=<%=branch_Id %>><p>
   지점 위치      : 		<input type=text name = "branch_Loc" value=<%=branch_Loc%>><p>
   점장명          : 		<input type=text name ="branch_Owner_Name" value=<%=branch_Owner_Name %>><p>
   지점 연락처   : 		<input type=text name ="branch_tel" value=<%=branch_tel %>><p>
   점장 연락처   : 		<input type=text name ="branch_Owner_tel" value=<%=branch_Owner_tel %>><p>
<input type = submit value = "삭제">
</form>
</center>
</body>
</html>