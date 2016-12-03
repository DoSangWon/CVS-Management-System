<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "project.ProductBean" %>
<jsp:useBean id="bean" class="project.ProductBean"/>
<jsp:useBean id="mMgr" class="project.ProductMgr"/> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<script language="javascript">
 var count = 1;
 var addCount;
 
//행추가
function addInputBox() {
 for(var i=1; i<=count; i++) {
  if(!document.getElementsByName("test"+i)[0]) {
   addCount = i;
   break;
  }
  else addCount = count;
 }
 //alert(document.all.gForm.gu_1.value);
 
 var addStr = "<td width=40><input type=checkbox name=checkList value="+addCount+" size=40 ></td>";
 var table = document.getElementById("dynamic_table");
 var newRow = table.insertRow();
 var newCell = newRow.insertCell();
 newCell.innerHTML = addStr;
 
 
 
 var addStr = "<td width=140><input type=text  value ="+document.all.gForm.gu_1.value+" name=test"+addCount+" size=40></td>";
 var newCell = newRow.insertCell();
 newCell.innerHTML = addStr;

 var addStr = "<td width=140><input type=text  value ="+addCount+" name=value"+addCount+" size=40></td>";
 var newCell = newRow.insertCell();
 newCell.innerHTML = addStr;
 count++;
}

//행삭제
function subtractInputBox() {
 var table = document.getElementById("dynamic_table");
 //var max = document.gForm.checkList.length;
 //alert(max);
 var rows = dynamic_table.rows.length;
 var chk = 0;
 if(rows > 1){
  for (var i=0; i<document.gForm.checkList.length; i++) {
   if (document.gForm.checkList[i].checked == true) {
    table.deleteRow(i+1);
    i--;
    count--;
    chk++;
   }
  }
  if(chk <= 0){
   alert("삭제할 행을 체크해 주세요.");
  }
   }else{
    alert("더이상 삭제할 수 없습니다.");
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


<BODY -nLoad="addInputBox()">
<input type="button" value="행 추가" onclick="javascript:addInputBox();"> : <input type="button" value="행 삭제" onclick="javascript:subtractInputBox();"><br><br>
<input type="button" value="전송" onclick="javascript:submitbutton();">
<form name="gForm" action="Order_Insert_Query_Forward.jsp" method="post">


<body -nLoad="addInputBox()">
<div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">

   <h2>발주</h2>
   <h5>발주 정보를 정확하게 입력하여 주십시오.</h5>
   <hr />
   <center>
<input type="button" value="행 추가" onclick="javascript:addInputBox();"> : <input type="button" value="행 삭제" onclick="javascript:subtractInputBox();"><br><br>

<form name="gForm" action="./test2.jsp" method="post">


<% 
Vector<ProductBean> vlist = mMgr.getProduct();
out.println("<select name = gu_1>");
for (int i = 0; i < 4; i++) {
	//bean = vlist.get(i);
	String pname = bean.getPname();
	out.println("<option value="+pname+">"+pname+"");
	
}
out.println("</select>");
%>
  
  <input type="hidden" name="count">

<table id="dynamic_table" class='table table-striped table-bordered table-hover' border=2>
<thead><tr><td align=center>선택</td><td align=center>상품명</td><td align=center>개수</td></tr></thead>
</table>

</form>
</center>

   <Form Action="Branch_Insert_Query_Forward.jsp" method="post">

      <input type="button" class="btn btn-default" value="발주하기" onclick="javascript:submitbutton();">
   </Form>
   
   </div>
                </div>              
                 
                    </div>
                                     <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
</body>
</html>