<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%request.setCharacterEncoding("EUC-KR");%>
<%@ page import = "java.util.*" %>
<%@ page import = "project.BranchBean" %>
<jsp:useBean id="bean" class="project.BranchBean"/>
<jsp:useBean id="mMgr" class="project.BranchMgr"/>
<jsp:setProperty name="bean" property="*"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center><h1>지점 정보 변경</h1></center>
<%
request.setCharacterEncoding("EUC-KR");
String[] items = request.getParameterValues("item");
String[] bid = request.getParameterValues("bid");
String[] bName = request.getParameterValues("bName");
String[] bLoc = request.getParameterValues("bLoc");
String[] bTel = request.getParameterValues("bTel");

System.out.println((String)session.getAttribute("id"));
Vector<BranchBean> vlist = new Vector<BranchBean>();

	
	for (int i = 0; i < items.length; i++) {
		
		
		boolean result = mMgr.updateBranch(bid[i],bName[i],bLoc[i],bTel[i]);
			}

%>

<jsp:forward page="Template.jsp" >
  <jsp:param name="CONTENTPAGE" value="Branch_Select.jsp"/>
</jsp:forward>

</body>
</html>