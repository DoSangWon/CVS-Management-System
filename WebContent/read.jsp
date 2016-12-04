<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

    <%request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import="project.BoardBean"%>
<jsp:useBean id="bMgr" class="project.BoardMgr" />
<%
	  request.setCharacterEncoding("EUC-KR");
	  int num = Integer.parseInt(request.getParameter("num"));
	  String nowPage = request.getParameter("nowPage");
	  String keyField = request.getParameter("keyField");
	  String keyWord = request.getParameter("keyWord");
	  bMgr.upCount(num);//조회수 증가
	  BoardBean bean = bMgr.getBoard(num);//게시물 가져오기
	  String name = bean.getName();
	  String subject = bean.getSubject();
    String regdate = bean.getRegdate();
	  String content = bean.getContent();
	  String filename = bean.getFilename();
	  int filesize = bean.getFilesize();
	  String ip = bean.getIp();
	  int count = bean.getCount();
	  session.setAttribute("bean", bean);//게시물을 세션에 저장
%>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function list(){
	 	document.listFrm.action="Main.jsp";
	    document.listFrm.submit();
	 } 
	
	function down(filename){
		 document.downFrm.filename.value=filename;
		 document.downFrm.submit();
	}
</script>
<%	
	  request.setCharacterEncoding("EUC-KR");
%>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>
</head>
<body>
<div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">

<h2>공지사항</h2>
<hr/>
<div class="panel panel-default">
               
<br/><br/>
<table class="table" align="center" width="70%" border=0 cellspacing="3" cellpadding="0">
 <tr>
  <td class="active" height="25" align="center">글읽기</td>
 </tr>
 <tr>
  <td colspan="2">
   <table class="table" border="0" cellpadding="3" cellspacing="0" width=100%> 
    <tr> 
  <td align="center"  width="10%"> 이 름 </td>
  <td ><%=name%></td>
  <td align="center"  width=10%> 등록날짜 </td>
  <td ><%=regdate%></td>
 </tr>
 <tr> 
    <td align="center"> 제 목</td>
    <td  colspan="3"><%=subject%></td>
   </tr>
   <tr> 
     <td align="center" >첨부파일</td>
     <td  colspan="3">
     <% if( filename !=null && !filename.equals("")) {%>
  		<a href="javascript:down('<%=filename%>')"><%=filename%></a>
  		 &nbsp;&nbsp;<font color="blue">(<%=filesize%>KBytes)</font>  
  		 <%} else{%> 등록된 파일이 없습니다.<%}%>
     </td>
   </tr>
   <tr> 
    <td colspan="4"><br/><%=content%><br/></td>
   </tr>
   <tr>
    <td colspan="4" align="right">
     <%=ip%>로 부터 글을 남기셨습니다./  조회수  <%=count%>
    </td>
   </tr>
   </table>
  </td>
 </tr>
 <tr>
  <td align="center" colspan="2"> 
 <hr/>
 [ <a href="javascript:list()" >리스트</a> | 
 <a href="Update_Forward.jsp?nowPage=<%=nowPage%>&num=<%=num%>" >수 정</a> |
 <a target="_blank" href="delete.jsp?nowPage=<%=nowPage%>&num=<%=num%>" onClick="window.open(this.href, '', 'width=500, height=300'); return false;" >삭 제</a> ]<br>
  </td>
 </tr>
</table>

<form name="downFrm" action="download.jsp" method="post">
	<input type="hidden" name="filename">
</form>

<form name="listFrm" method="post">
	<input type="hidden" name="num" value="<%=num%>">
	<input type="hidden" name="nowPage" value="<%=nowPage%>">
	<%if(!(keyWord==null || keyWord.equals("null"))){ %>
	<input type="hidden" name="keyField" value="<%=keyField%>">
	<input type="hidden" name="keyWord" value="<%=keyWord%>">
	<%}%>
</form>

</div>
                                     <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
 </body>
</html>