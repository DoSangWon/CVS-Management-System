<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">


<title>j체인점 관리 시스템</title>

<link rel="stylesheet" href="css/jquery.treeview.css" />
<link rel="stylesheet" href="css/screen.css" />

<script src="lib/jquery.js" type="text/javascript"></script>
<script src="lib/jquery.cookie.js" type="text/javascript"></script>
<script src="lib/jquery.treeview.js" type="text/javascript"></script>

<script type="text/javascript">
		$(function() {
			$("#tree").treeview({
				collapsed: true,
				animated: "medium",
				control:"#sidetreecontrol",
				persist: "location"
			});
		})
		
	</script>

</head>
<body>

<div id="sidetree">
	<div class="treeheader">&nbsp;</div>

	<div id="sidetreecontrol"><a href="?#">전체닫기</a> | <a href="?#">전체열기</a></div>
	<ul id="tree">
		<li>
			<strong>지점관리</strong>
			<ul>
				<LI><A href="Branch_Insert_Forword.jsp"><font size="2" color="blue"></font>지점 등록</A><p></LI>
				<LI><A href="Branch_Delete_Forword.jsp"><font size="2" color="blue"></font>지점 삭제</A><p></LI>
				<LI><A href="Branch_Select_Forword.jsp"><font size="2" color="blue"></font>지점 조회</A><p></LI>
				<LI><A href="Branch_Update_Forword.jsp"><font size="2" color="blue"></font>지점 변경</A><p></LI>
			</ul>
		</li>
		
		<li>
			<strong>결산</strong>
			<ul>
				<LI><A href="Branch_Insert_Forword.jsp"><font size="2" color="blue"></font>지점 등록</A><p></LI>
			</ul>
		</li>
		
		<li>
			<strong>발주</strong>
			<ul>
				<LI><A href="#"><font size="2" color="blue"></font>발주</A><p></LI>
			</ul>
		</li>
		
		<li>
			<strong>공지사항관리</strong>
			<ul>
				<LI><A href="Notice_Forward.jsp"><font size="2" color="blue"></font>공지사항</A><p></LI>
			</ul>
		</li>

	</ul>
</div>

</body>
</html>