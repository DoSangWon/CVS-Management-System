<%@ page contentType="text/html;charset=EUC-KR"%>
<html>
<head>
<title>ȸ������</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
	function idCheck(Branch_Owner_Id) {
		frm = document.regFrm;
		if (Branch_Owner_Id == "") {
			alert("���̵� �Է��� �ּ���.");
			frm.id.focus();
			return;
		}
		url = "idCheck.jsp?Branch_Owner_Id=" + Branch_Owner_Id;
		window.open(url, "IDCheck", "width=300,height=150");

	}

	function zipCheck() {
		url = "zipCheck.jsp?check=y";
		window
				.open(url, "ZipCodeSearch",
						"width=500,height=300,scrollbars=yes");
	}
</script>
</head>
<body bgcolor="#FFFFCC" onLoad="regFrm.Branch_Owner_Id.focus()">
	<div align="center">
		<br /><br />
		<form name="regFrm" method="post" action="memberProc.jsp">
			<table align="center" border="0" cellspacing="0" cellpadding="5">
				<tr>
					<td align="center" valign="middle" bgcolor="#FFFFCC">
						<table border="1" cellspacing="0" cellpadding="2" align="center" width="600">
							<tr align="center" bgcolor="#996600">
								<td colspan="3"><font color="#FFFFFF"><b>ȸ�� ����</b></font></td>
							</tr>
							<tr>
								<td width="20%">���̵�</td>
								<td width="50%"><input type="text" name="id" size="15"
									value=""> <input type="button" value="ID�ߺ�Ȯ��"
									onClick="idCheck(this.form.id.value)"></td>
							</tr>
							<tr>
								<td>�н�����</td>
								<td><input type="password" name="pw" size="15" value=""></td>
							</tr>
							<tr>
								<td>�н����� Ȯ��</td>
								<td><input type="password" name="repass" size="15" value=""></td>
							</tr>
							<tr>
								<td>�̸�</td>
								<td><input type="text" name="name" size="15" value="">
								</td>
							</tr>
							<tr>
								<td>��ȭ��ȣ</td>
								<td><input type="text" name="tel" size="15" value="">
								</td>
							</tr>
							<tr>
								<td>��¥</td>
								<td><input type="text" name="date" size="15" value="">
								</td>
							</tr>
							<tr>
								<td colspan="3" align="center"><input type="submit"
									value="ȸ������" onclick="inputCheck()"> &nbsp; &nbsp; <input
									type="reset" value="�ٽþ���">&nbsp; &nbsp; <input
									type="button" value="�α���"
									onClick="javascript:location.href='login.jsp'"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
