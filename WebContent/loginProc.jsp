<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="mMgr" class="CVS.MemberMgr"/>
<%request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("txtID");
	String pw = request.getParameter("password");
	boolean flag = mMgr.loginMember(id, pw);
	if(flag==false){
	%>
	<script>
	alert("�α��ο� ���� �Ͽ����ϴ�.");	
</script>
<%}else{
	%>
	<%=id %> �� �ȳ��ϼ���?
	<%
}
%>

</body>
</html>