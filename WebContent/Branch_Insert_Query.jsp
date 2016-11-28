<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*"%> 
<%request.setCharacterEncoding("EUC-KR");%>
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
<%
request.setCharacterEncoding("EUC-KR");
System.out.println(bean.getBid());
System.out.println(bean.getbLoc());
System.out.println(bean.getbName());
System.out.println(bean.getbTel());
System.out.println(bean.getbOTel());
	boolean result = mMgr.insertBranch(bean);
	if(result){
		
	}else{
		
	}
%>

<jsp:forward page="Template.jsp" >
  <jsp:param name="CONTENTPAGE" value="Branch_Insert.jsp"/>
</jsp:forward>
</body>
</html>