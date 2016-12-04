<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

    <%request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page import="project.BoardBean"%>
<% 
	  int num = Integer.parseInt(request.getParameter("num"));
	  String nowPage = request.getParameter("nowPage");
	  BoardBean bean = (BoardBean)session.getAttribute("bean");
	  String subject = bean.getSubject();
	  String name = bean.getName(); 
	  String content = bean.getContent(); 
%>
<script>
	function check() {
	   if (document.updateFrm.pass.value == "") {
		 alert("수정을 위해 패스워드를 입력하세요.");
		 document.updateFrm.pass.focus();
		 return false;
		 }
	   document.updateFrm.submit();
	}
</script>

<link href="style.css" rel="stylesheet" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

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
               
<div align="center">
<br/><br/>
<table class="table" border="0" width="460" cellspacing="0" cellpadding="3">
  <tr>
   <td class="warning"  height="21" align="center">수정하기</td>
  </tr>
</table>
<form name="updateFrm" method="post" action="updateProc.jsp" >
<table class="table" width="70%" cellspacing="0" cellpadding="7">
 <tr>
  <td align="center">
   <table class="table" border="0">
    <tr>
     <td width="20%">성 명</td>
     <td width="80%">
	  <input type="text" name="name" value="<%=name%>" size="30" maxlength="20">
	 </td>
	</tr>
	<tr>
     <td width="20%">제 목</td>
     <td width="80%">
	  <input type="text" name="subject" size="50" value="<%=subject%>" maxlength="50">
	 </td>
    <tr>
     <td width="20%">내 용</td>
     <td width="80%">
	  <textarea name="content" rows="10" cols="50"><%=content%></textarea>
	 </td>
    </tr>
	<tr>
     <td width="20%">비밀 번호</td> 
     <td width="80%"><input type="password" name="pass" size="15" maxlength="15">
      수정시에는 비밀번호가 필요합니다.</td>
    </tr>
	
	<tr>
     <td colspan="2">
	  <input class="btn btn-warning btn-xs" type="button" value="수정완료" onClick="check()">
      <input class="btn btn-primary btn-xs" type="reset" value="다시수정"> 
      <input class="btn btn-success btn-xs" type="button" value="뒤로" onClick="history.go(-1)">
	 </td>
    </tr> 
   </table>
  </td>
 </tr>
</table>
 <input type="hidden" name="nowPage" value="<%=nowPage %>">
 <input type='hidden' name="num" value="<%=num%>">
</form> 
</div>

</div>
                                     <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
 </body>
</html>