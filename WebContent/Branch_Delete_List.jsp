<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "project.BranchBean" %>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="bean" class="project.BranchBean"/>
<jsp:useBean id="mMgr" class="project.BranchMgr"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center><h1>지점 삭제</h1></center>
<%

Vector<BranchBean> vlist = mMgr.getBranch((String)session.getAttribute("id"));


	out.println("<center><table width =800 height = 300 border=2>" + "<tr>" + "<td align=center> 지점 ID </td>" + "<td align=center> 지점 위치 </td>" + "<td align=center> 점장명 </td>" + "<td align=center> 지점 연락처 </td>" + "<td align=center> 점장 연락처 </td>" + "</tr>");
			
	
	for (int i = 0; i < vlist.size(); i++) {
				bean = vlist.get(i);
				String branch_Id = bean.getBid();
				String branch_Loc = bean.getbLoc();
				String branch_Owner_Name = bean.getbName();
				String branch_tel = bean.getbTel();
				String branch_Owner_tel = bean.getbOTel();

				//out.println("<tr><a href='Branch_Delete_Query_Forward.jsp?branch_Id="+bean.getBid()+"&branch_Loc="+bean.getbLoc()+"&branch_Owner_Name="+bean.getbName()+"&branch_tel="+bean.getbTel()+"&branch_Owner_tel="+bean.getbOTel()+"'>");
				//out.println("<a href='Branch_Delete.jsp?branch_Id="+branch_Id+"&branch_Loc="+branch_Loc+"&branch_Owner_Name="+branch_Owner_Name+"&branch_tel="+branch_tel+"&branch_Owner_tel="+branch_Owner_tel+"'</a>"+branch_Id+"</td>");
				out.println("<td align=center><a href='Branch_Delete_List_Forward.jsp?branch_Id="+bean.getBid()+"&branch_Loc="+bean.getbLoc()+"&branch_Owner_Name="+bean.getbName()+"&branch_tel="+bean.getbTel()+"&branch_Owner_tel="+bean.getbOTel()+"'>"+bean.getBid() + "</a></td>");
				out.println("<td align=center>"+bean.getbLoc() + "</td>");
				out.println("<td align=center>"+bean.getbName() + "</td>");
				out.println("<td align=center>"+bean.getbTel() + "</td>");
				out.println("<td align=center>"+bean.getbOTel() + "</td>");
				out.println("</tr></a>");
			}

			out.println("</table></center>");

%>
</body>
</html>