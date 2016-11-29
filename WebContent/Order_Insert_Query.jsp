<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*"%> 
<%request.setCharacterEncoding("EUC-KR");%>
    <%
    		int count = Integer.parseInt(request.getParameter("count"));
    
    
    %>
<jsp:useBean id="bean" class="project.OrderBean"/>
<jsp:useBean id="mMgr" class="project.OrderMgr"/>
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
int onum = mMgr.getOnum()+1;
for(int i = 1; i<=count; i++){
    String str = "test"+i;
    String str2 = "value"+i;
    if(request.getParameter(str) != null){
    	String opanme = request.getParameter(str);
    	String opamount = request.getParameter(str2);
    	int j = mMgr.getOpnum(opanme);
    	boolean result = mMgr.insertOrder(onum,j,opanme,opamount);
    	if(result){
    		
    	}else{
    		
    	}
    	
    }
}


%>

<jsp:forward page="Template.jsp" >
  <jsp:param name="CONTENTPAGE" value="Order_Insert.jsp"/>
</jsp:forward>
</body>
</html>