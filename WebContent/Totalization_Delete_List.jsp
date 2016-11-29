<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "project.TotalizationBean" %>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bean" class="project.TotalizationBean"/>
<jsp:useBean id="mMgr" class="project.TotalizationMgr"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center><h1>결산 삭제</h1>

<%

Vector<TotalizationBean> vlist = mMgr.getTotalization();


	out.println("<center><table width =800 height = 300 border=2>" + "<tr>" + "<td align=center> 번호 </td>" + "<td align=center> 지점 ID </td>" + "<td align=center> 수익 </td>" + "<td align=center> 지출 </td>" + "<td align=center> 결산일 </td>" + "<td align=center> 순이익 </td>" + "</tr>");
	int total1=0;
	int total2=0;
	
	for (int i = 0; i < vlist.size(); i++) {
				bean = vlist.get(i);
				String Tnum = bean.getTnum();
				String branch_Id = bean.getTbid();
				String revenue = bean.getTrevenue();
				String expenditure = bean.getTexpenditure();
				String totalizaion_Date = bean.getTdate();
				
				total1 = Integer.parseInt(bean.getTrevenue()) - Integer.parseInt(bean.getTexpenditure());
				total2 = total2 + total1;
				
				
				//out.println("<td align=center>"+bean.getTbid() + "</td>");
				out.println("<td align=center><a href='Totaization_Delete_List_Forward.jsp?branch_Id="+bean.getTbid()+"&revenue="+bean.getTrevenue()+"&expenditure="+bean.getTexpenditure()+"&Tnum="+bean.getTnum()+"'>"+bean.getTnum() + "</a></td>");
				//out.println("<tr><a href='Branch_Delete_Query_Forward.jsp?branch_Id="+bean.getBid()+"&branch_Loc="+bean.getbLoc()+"&branch_Owner_Name="+bean.getbName()+"&branch_tel="+bean.getbTel()+"&branch_Owner_tel="+bean.getbOTel()+"'>");
				//out.println("<a href='Branch_Delete.jsp?branch_Id="+branch_Id+"&branch_Loc="+branch_Loc+"&branch_Owner_Name="+branch_Owner_Name+"&branch_tel="+branch_tel+"&branch_Owner_tel="+branch_Owner_tel+"'</a>"+branch_Id+"</td>");
				//out.println("<td align=center><a href='Branch_Delete_List_Forward.jsp?branch_Id="+bean.getBid()+"&branch_Loc="+bean.getbLoc()+"&branch_Owner_Name="+bean.getbName()+"&branch_tel="+bean.getbTel()+"&branch_Owner_tel="+bean.getbOTel()+"'>"+bean.getBid() + "</a></td>");
				out.println("<td align=center>"+bean.getTbid() + "</td>");
				out.println("<td align=center>"+bean.getTrevenue() + "</td>");
				out.println("<td align=center>"+bean.getTexpenditure() + "</td>");
				out.println("<td align=center>"+bean.getTdate() + "</td>");
				out.println("<td align=center>"+total1 + "</td>");
				out.println("</tr></a>");
				
				
			}

			out.println("</table></center>");
%>
</center>
</body>
</html>