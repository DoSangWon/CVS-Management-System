<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mMgr" class="project.MemberMgr" />
<%request.setCharacterEncoding("EUC-KR");%>
<%
	  request.setCharacterEncoding("euc-kr");
	  String id = request.getParameter("txtID");
	  String pass = request.getParameter("txtPwd");
	  String url = "Main.jsp";
	  String msg = "";
	  boolean flag=false;
	  flag = mMgr.loginMember(id,pass);
	  if(flag){
		  session.setAttribute("id", id);                 // ���ǿ� "id" �̸����� id ���
		  response.sendRedirect("Main.jsp");               // �α��� ���� ���������� �̵�
	  }else{ 
%>
<script type="text/javascript">
	alert("�α��� ����");
	history.go(-1);                                   
</script>	
<%
	  }

%>
