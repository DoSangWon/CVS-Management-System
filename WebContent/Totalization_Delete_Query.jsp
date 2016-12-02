<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%request.setCharacterEncoding("EUC-KR");%>
<%@ page import = "java.util.*" %>
<%@ page import = "project.TotalizationBean" %>
<jsp:useBean id="bean" class="project.TotalizationBean"/>
<jsp:useBean id="mMgr" class="project.TotalizationMgr"/>
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
System.out.println((String)session.getAttribute("id"));
Vector<TotalizationBean> vlist = mMgr.getTotalization((String)session.getAttribute("id"));


	
	for (int i = 0; i < items.length; i++) {
		int j = Integer.parseInt(items[i]);
		System.out.println("현재 값 : "+j);
		
				bean = vlist.get(j);
				
				String totalization_num = bean.getTbid();
		boolean result = mMgr.deleteTotalization(Integer.parseInt(totalization_num));
			}

%>

<jsp:forward page="Template.jsp" >
  <jsp:param name="CONTENTPAGE" value="Employee.jsp"/>
</jsp:forward>

</body>
</html>