<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">


<title>jü���� ���� �ý���</title>

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

	<div id="sidetreecontrol"><a href="?#">��ü�ݱ�</a> | <a href="?#">��ü����</a></div>
	<ul id="tree">
		<li>
			<strong>��������</strong>
			<ul>
				<LI><A href="Branch_Insert_Forword.jsp"><font size="2" color="blue"></font>���� ���</A><p></LI>
				<LI><A href="Branch_Delete_Forword.jsp"><font size="2" color="blue"></font>���� ����</A><p></LI>
				<LI><A href="Branch_Select_Forword.jsp"><font size="2" color="blue"></font>���� ��ȸ</A><p></LI>
				<LI><A href="Branch_Update_Forword.jsp"><font size="2" color="blue"></font>���� ����</A><p></LI>
			</ul>
		</li>
		
		<li>
			<strong>���</strong>
			<ul>
				<LI><A href="Branch_Insert_Forword.jsp"><font size="2" color="blue"></font>���� ���</A><p></LI>
			</ul>
		</li>
		
		<li>
			<strong>����</strong>
			<ul>
				<LI><A href="#"><font size="2" color="blue"></font>����</A><p></LI>
			</ul>
		</li>
		
		<li>
			<strong>�������װ���</strong>
			<ul>
				<LI><A href="Notice_Forward.jsp"><font size="2" color="blue"></font>��������</A><p></LI>
			</ul>
		</li>

	</ul>
</div>

</body>
</html>