<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<%@page import="project.BoardBean"%>
<jsp:useBean id="bMgr" class="project.BoardMgr" />
<%
	request.setCharacterEncoding("EUC-KR");
	String nowPage = request.getParameter("nowPage");
	//out.println("nowPage"+ nowPage);
	int num = Integer.parseInt(request.getParameter("num"));
	//out.println("num �� : "+ num);
	//out.println("keyField : "+ request.getParameter("keyField"));
	//out.println("keyWord : "+ request.getParameter("keyWord"));
	

	if (request.getParameter("pass") != null) {
		//����� �Է��� �ؼ� ���ǿ� �ִ� pass �񱳿�û
		String inPass = request.getParameter("pass");
//		out.println("=======================================");
//		out.println("�Է��� ��й�ȣ : "+ inPass);
//		out.println("=======================================");
		BoardBean bean = (BoardBean) session.getAttribute("bean");
		String dbPass = bean.getPass();
//		out.println("=======================================");
//		out.println("db�Է�  ��й�ȣ : "+dbPass);
//		out.println("=======================================");
		
		if (inPass.equals(dbPass)) {
			bMgr.deleteBoard(num);
			%><script type="text/javascript">
   	opener.document.location.href="Main.jsp"
   self.close();
</script>
			<%
		} else {
%>
<script type="text/javascript">
	alert("�Է��Ͻ� ��й�ȣ�� �ƴմϴ�.");
	history.back();
</script>
<%}
	} else {
%>
<title>JSP Board</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function check() {
		if (document.delFrm.pass.value == "") {
			alert("�н����带 �Է��ϼ���.");
			document.delFrm.pass.focus();
			return false;
		}
		document.delFrm.submit();
	}
</script>
</head>
<body bgcolor="#FFFFCC">
	<div align="center">
		<br/><br/>
		<table width="50%" cellspacing="0" cellpadding="3">
			<tr>
				<td bgcolor=#dddddd height="21" align="center">
					������� ��й�ȣ�� �Է����ּ���.
				</td>
			</tr>
		</table>
		<form name="delFrm" method="post" action="delete.jsp">
			<table width="70%" cellspacing="0" cellpadding="2">
				<tr>
					<td align="center">
						<table align="center" border="0" width=91%>
							<tr>
								<td align="center">
									<input type="password" name="pass" size="17" maxlength="15">
								</td>
							</tr>
							<tr>
								<td><hr size="1" color="#eeeeee"></td>
							</tr>
							<tr>
								<td align="center">
									<input type="button" value="�����Ϸ�" onClick="check()"> 
									<input type="reset" value="�ٽþ���">
									<input type="button" value="�ڷ�" onClick="history.go(-1)">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<input type="hidden" name="nowPage" value="<%=nowPage%>"> 
			<input type="hidden" name="num" value="<%=num%>">
		</form>
	</div>
	<%}%>
</body>
</html>