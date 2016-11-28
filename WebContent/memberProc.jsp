<%@ page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bean" class="project.MemberBean"/>
<jsp:useBean id="mMgr" class="project.MemberMgr"/>
<jsp:setProperty name="bean" property="*"/>

<%
	  boolean result = mMgr.insertMember(bean);
	  if(result){
%>
<script type="text/javascript">
		alert("회원가입을 하였습니다.");
		location.href="index.html";
</script>
<% }else{%>
<script type="text/javascript">
		alert("회원가입에 실패 하였습니다.");
		history.back();
</script>
<%} %>
<script>
	alert("<%=bean.getId()%>");	
	
	
</script>