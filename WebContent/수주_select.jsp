<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "project.OrderBean" %>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bean" class="project.OrderBean"/>
<jsp:useBean id="mMgr" class="project.OrderMgr"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="page-wrapper" >
            <div id="page-inner"><form name="test" action="Branch_Update_Forword.jsp" method="post">
                <div class="row">
                    <div class="col-md-12">
<center><h1>발주 내역</h1>
<form name="zipFrm" method="post">
	<input type="text" name="onum">
	<input type="submit" value="검색">
</form>
<%
request.setCharacterEncoding("EUC-KR");
int onum=1;
if(request.getParameter("onum")=="" || request.getParameter("onum") == null){
	onum=0;
}else{
onum = Integer.parseInt(request.getParameter("onum"));

Vector<OrderBean> vlist = mMgr.getOrder(onum);


	out.println("<center><table width =800 height = 300 border=2>" + "<tr>" + "<td align=center> 발주 번호 </td>" + "<td align=center> 제품명 </td>" + "<td align=center> 수량 </td>" + "<td align=center> 발주일 </td>" + "</tr>");
			
	
	for (int i = 0; i < vlist.size(); i++) {
				bean = vlist.get(i);
				String Onum = bean.getOnum();
				String Opname = bean.getOpname();
				String Opamount = bean.getOpamount();
				String Odate = bean.getOdate();
				

				out.println("<td align=center>"+bean.getOnum() + "</td>");
				//out.println("<tr><a href='Branch_Delete_Query_Forward.jsp?branch_Id="+bean.getBid()+"&branch_Loc="+bean.getbLoc()+"&branch_Owner_Name="+bean.getbName()+"&branch_tel="+bean.getbTel()+"&branch_Owner_tel="+bean.getbOTel()+"'>");
				//out.println("<a href='Branch_Delete.jsp?branch_Id="+branch_Id+"&branch_Loc="+branch_Loc+"&branch_Owner_Name="+branch_Owner_Name+"&branch_tel="+branch_tel+"&branch_Owner_tel="+branch_Owner_tel+"'</a>"+branch_Id+"</td>");
				//out.println("<td align=center><a href='Branch_Delete_List_Forward.jsp?branch_Id="+bean.getBid()+"&branch_Loc="+bean.getbLoc()+"&branch_Owner_Name="+bean.getbName()+"&branch_tel="+bean.getbTel()+"&branch_Owner_tel="+bean.getbOTel()+"'>"+bean.getBid() + "</a></td>");
				out.println("<td align=center>"+bean.getOpname() + "</td>");
				out.println("<td align=center>"+bean.getOpamount() + "</td>");
				out.println("<td align=center>"+bean.getOdate() + "</td>");
				out.println("</tr></a>");
			}

			out.println("</table></center>");
}
%>
</center>
                                     <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
</body>
</html>