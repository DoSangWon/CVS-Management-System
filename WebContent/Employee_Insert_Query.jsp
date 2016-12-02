<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*"%> 
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bean" class="project.EmployeeBean"/>
<jsp:useBean id="mMgr" class="project.EmployeeMgr"/>
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
System.out.println(bean.getEid());
System.out.println(bean.getEname());
System.out.println(bean.getEtel());
System.out.println(bean.getEdate());
System.out.println(bean.getEhw());
System.out.println(bean.getBid());
	boolean result = mMgr.insertEmployee(bean);
	if(result){
		
	}else{
		
	}
%>

<jsp:forward page="Template.jsp" >
  <jsp:param name="CONTENTPAGE" value="Branch_Insert.jsp"/>
</jsp:forward>
</body>
</html>