function inputCheck(){
	if(document.regFrm.Branch_Owner_Id.value==""){
		alert("���̵� �Է��� �ּ���.");
		document.regFrm.Branch_Owner_Id.focus();
		return;
	}
	if(document.regFrm.Branch_Owner_Pw.value==""){
		alert("��й�ȣ�� �Է��� �ּ���.");
		document.regFrm.Branch_Owner_Pw.focus();
		return;
	}
	if(document.regFrm.reBranch_Owner_Pw.value==""){
		alert("��й�ȣ�� Ȯ���� �ּ���");
		document.regFrm.reBranch_Owner_Pw.focus();
		return;
	}
	if(document.regFrm.reBranch_Owner_Pw.value != document.regFrm.reBranch_Owner_Pw.value){
		alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
		document.regFrm.reBranch_Owner_Pw.value="";
		document.regFrm.reBranch_Owner_Pw.focus();
		return;
	}
	if(document.regFrm.Branch_Owner_Name.value==""){
		alert("�̸��� �Է��� �ּ���.");
		document.regFrm.Branch_Owner_Name.focus();
		return;
	}
	if(document.regFrm.Branch_Owner_tel.value==""){
		alert("�̸��� �Է��� �ּ���.");
		document.regFrm.Branch_Owner_tel.focus();
		return;
	}
	if(document.regFrm.Branch_Owner_date.value==""){
		alert("�̸��� �Է��� �ּ���.");
		document.regFrm.Branch_Owner_date.focus();
		return;
	}
	alert("<%=bean.getBranch_Owner_Pw()%>");
	document.regFrm.submit();
}

function win_close(){
	self.close();
}
