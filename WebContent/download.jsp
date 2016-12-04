<%@ page contentType="application;charset=euc-kr"%>
<jsp:useBean id="bMgr" class="project.BoardMgr" />
<%
	  bMgr.downLoad(request, response,out,pageContext);
%>