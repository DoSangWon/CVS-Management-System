<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bean" class="project.BranchBean"/>
<jsp:useBean id="mMgr" class="project.BranchMgr"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center><h1>지점 삭제</h1></center>
<%
String _branch_Id=request.getParameter("_branch_Id");
boolean result = mMgr.deleteBranch(_branch_Id);
%>
<jsp:forward page="Template.jsp" >
  <jsp:param name="CONTENTPAGE" value="Branch_Delete_List.jsp"/>
</jsp:forward>

</body>
</html>