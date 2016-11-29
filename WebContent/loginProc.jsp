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
		  session.setAttribute("id", id);                 // 세션에 "id" 이름으로 id 등록
		  response.sendRedirect("Main.jsp");               // 로그인 성공 메인페이지 이동
	  }else{ 
%>
<script type="text/javascript">
	alert("로그인 실패");
	history.go(-1);                                   
</script>	
<%
	  }

%>
