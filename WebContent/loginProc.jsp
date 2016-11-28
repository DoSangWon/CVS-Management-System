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
		  msg = "로그인에 성공 하였습니다.";
%>
<script type="text/javascript">
	  location.href="Main.jsp";
</script>
<%
	  }else{
		  msg = "로그인에 실패 하였습니다.";  
%>
<script type="text/javascript">
	  location.href="index.html";
</script>
<%
	  }
		 




%>
<script>
	alert("<%=msg%>");	
	location.href="<%=url%>";
	alert("<%=id%>");	
	
</script>