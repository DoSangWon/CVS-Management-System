<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

    <%request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%	
	  request.setCharacterEncoding("EUC-KR");
%>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<link href="style.css" rel="stylesheet" type="text/css">
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
<table width="80%" cellspacing="0" cellpadding="3">
	<tr class="info">
		<h1><td height="25" align="center">공지사항 작성</td></h1>
	</tr>
</table>
<br/>
<form  class="form-inline" name="postFrm" method="post" action="postProc.jsp" enctype="multipart/form-data">
<div class=form-group>
<table width="80%" cellspacing="0" cellpadding="3" align="center">
	<tr>
		<td align=center>
		<table class="table" border="0" width="100%" >
			<tr>
				<td>성&nbsp;명&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td>
				<input type="text" class="form-control"  name="name" size="15" maxlength="8"></td>
				
			</tr>
			<tr>
				<td width="60px">제 목</td>
				<td>
				<input type="text" class="form-control" name="subject" size="70" maxlength="130"></td>
			</tr>
			<tr>
				<td width="60px">내 용</td>
				<td><textarea class="form-control" name="content" rows="15" cols="69"></textarea></td>
			</tr>
			<tr>
				<td width="60px">비밀 번호</td>
				<td ><input type="password" class="form-control" name="pass" size="15" maxlength="15"></td>
			</tr>
			<tr>
			 <tr>
     			<td width="60px">파일찾기</td> 
     			<td  ><input type="file" class="form-control" name="filename" size="70" maxlength="50"></td>
     		</tr>
 		
			<tr>
				<td colspan="2">
					 <input class="btn btn-warning btn-xs" type="submit" value="등록">&nbsp;
					 <input class="btn btn-primary btn-xs" type="reset" value="다시쓰기">&nbsp;
					 <input class="btn btn-success btn-xs" type="button" value="리스트" onClick="javascript:location.href='Main.jsp'">
				</td>
				
			</tr>
		
			
		</table>
		</td>
	</tr>
</table>
</div>
<input type=hidden name="contentType" value="TEXT">
<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
</form>
</div>

</div>
                                     <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
 </body>
</html>