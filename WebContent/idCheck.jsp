
<%@ page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<html>
<head>
<jsp:useBean id="mMgr" class="project.MemberMgr" />
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("Branch_Owner_Id");
	
	boolean result = mMgr.checkId(id);
%>
<title>ID �ߺ�üũ</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
	<div align="center">
		<br /> <b><%=id%></b>
	<%
	
		if(result){
			out.println("�� �̹� �����ϴ� ID�Դϴ�.<p>");
		}else{
			out.println("�� ��� �����մϴ�.<p>");
		}

	 %>



		<a href="#" onClick="self.close()">�ݱ�</a>
	</div>
</body>
</html>