<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<script language="javascript">
 var count = 1;
 var addCount;
 
//���߰�
function addInputBox() {
 for(var i=1; i<=count; i++) {
  if(!document.getElementsByName("test"+i)[0]) {
   addCount = i;
   break;
  }
  else addCount = count;
 }
 var addStr = "<tr><td width=40><input type=checkbox name=checkList value="+addCount+" size=40 ></td><td width=140><input type=text  value ="+addCount+" name=test"+addCount+" size=40></td><td width=140><input type=text  value ="+addCount+" name=value"+addCount+" size=40></td></tr>";
 var table = document.getElementById("dynamic_table");
 var newRow = table.insertRow();
 var newCell = newRow.insertCell();
 newCell.innerHTML = addStr;
 count++;
}
 
//�����
function subtractInputBox() {
 var table = document.getElementById("dynamic_table");
 //var max = document.gForm.checkList.length;
 //alert(max);
 var rows = dynamic_table.rows.length;
 var chk = 0;
 if(rows > 1){
  for (var i=0; i<document.gForm.checkList.length; i++) {
   if (document.gForm.checkList[i].checked == true) {
    table.deleteRow(i);
    i--;
    count--;
    chk++;
   }
  }
  if(chk <= 0){
   alert("������ ���� üũ�� �ּ���.");
  }
   }else{
    alert("���̻� ������ �� �����ϴ�.");
   }
}
 
function submitbutton() {
// gForm.count.value = count;
 var gform = document.gForm;
 gform.count.value = count;
 alert(count);
 gForm.submit();
 return;
}
</script>


<body -nLoad="addInputBox()">
<center>
   <h1>��ǰ ����</h1>
   <input type="button" value="�� �߰�" onclick="javascript:addInputBox();"> : <input type="button" value="�� ����" onclick="javascript:subtractInputBox();"><br><br>
<input type="button" value="����" onclick="javascript:submitbutton();">
<form name="gForm" action="./Order_Insert_Query_Forward.jsp" method="post">
  <input type="hidden" name="count">
<table  cellpadding=0 cellspacing=0 id="" border="1">
<tr>
 <td width="20">no</td>
 <td width="340">��ǰ��</td>
 <td width="340">����</td>
</tr>
<tr>
<table cellpadding=0 cellspacing=0 id="dynamic_table" border="1">
</table>
</tr>
</table>
</form>
   </center>
</body>
</html>