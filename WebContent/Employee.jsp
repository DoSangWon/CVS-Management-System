<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "project.EmployeeBean" %>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bean" class="project.EmployeeBean"/>
<jsp:useBean id="mMgr" class="project.EmployeeMgr"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<script>
function form_submit(){
		document.test.action="Employee_Update_Forword.jsp";
		document.test.submit();

}
function form_submit2(){
	document.test.action="Employee_Delete_Query_Forward.jsp";
	document.test.submit();

}
</script>

<div id="page-wrapper" >
            <div id="page-inner"><form name="test" action="Branch_Update_Forword.jsp" method="post">
                <div class="row">
                    <div class="col-md-12">
<h2>���� ����</h2>
<h5>������ ������ ������ �����մϴ�.</h5>
<hr/>
 <div class="panel panel-default">
                        <div class="panel-heading">
                            ���� ���
                        </div>

<%
System.out.println((String)session.getAttribute("id"));
Vector<EmployeeBean> vlist = mMgr.getEmployee((String)session.getAttribute("id"));


out.println("<center><table class='table table-striped table-bordered table-hover' border=2><thead>" + "<tr>" +"<td align=center>����</td>"+ "<td align=center> ���� ID </td>" +"<td align=center>����</td>"+"<td align=center> ����ó </td>" + "<td align=center> ������� </td>" + "<td align=center> �ñ�(��) </td>" + "<td align=center> ���� </td>" + "</tr></thead>");

out.println("<tbody>");
for (int i = 0; i < vlist.size(); i++) {
			bean = vlist.get(i);
			String branch_Id = bean.getBid();
			String Employee_Id = bean.getEid();
			String Employee_Name = bean.getEname();
			String Employee_tel = bean.getEtel();
			String Employee_Date = bean.getEdate();
			int Employee_hw = bean.getEhw();
			out.println("<td align=center><input type=checkbox name=item value="+i+"> </td>");
			out.println("<td align=center><input type=hidden name=bid value="+bean.getEid() + ">"+bean.getEid()+"</td>");
			//out.println("<tr><a href='Branch_Delete_Query_Forward.jsp?branch_Id="+bean.getBid()+"&branch_Loc="+bean.getbLoc()+"&branch_Owner_Name="+bean.getbName()+"&branch_tel="+bean.getbTel()+"&branch_Owner_tel="+bean.getbOTel()+"'>");
			//out.println("<a href='Branch_Delete.jsp?branch_Id="+branch_Id+"&branch_Loc="+branch_Loc+"&branch_Owner_Name="+branch_Owner_Name+"&branch_tel="+branch_tel+"&branch_Owner_tel="+branch_Owner_tel+"'</a>"+branch_Id+"</td>");
			//out.println("<td align=center><a href='Branch_Delete_List_Forward.jsp?branch_Id="+bean.getBid()+"&branch_Loc="+bean.getbLoc()+"&branch_Owner_Name="+bean.getbName()+"&branch_tel="+bean.getbTel()+"&branch_Owner_tel="+bean.getbOTel()+"'>"+bean.getBid() + "</a></td>");
			out.println("<td align=center>"+bean.getEname() + "</td>");
			out.println("<td align=center>"+bean.getEtel() + "</td>");
			out.println("<td align=center>"+bean.getEdate() + "</td>");
			out.println("<td align=center>"+bean.getEhw() + "</td>");
			out.println("<td align=center>"+bean.getBid() + "</td>");
			out.println("</tr></a>");
		}

		out.println("</tbody></table></center>");

%>

</center>
 </div>
 <!-- <a href="#" class="btn btn-primary">����ddd</a> -->
<input type="button" id="num" onclick="form_submit();" value="����" class="btn btn-primary">
<input type="button" id="num" onclick="form_submit2();" value="����" class="btn btn-danger">
 </div>              
</div>
</form>
                                     <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
</body>
</html>