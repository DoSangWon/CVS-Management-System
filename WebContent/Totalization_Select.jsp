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

<script>
function form_submit(){
		document.test.action="Totalization_Update_Forword.jsp";
		document.test.submit();

}
function form_submit2(){
	document.test.action="Totalization_Delete_Query_Forward.jsp";
	document.test.submit();

}
</script>

<div id="page-wrapper" >
            <div id="page-inner"><form name="test" action="Totalization_Update_Forword.jsp" method="post">
                <div class="row">
                    <div class="col-md-12">

 <div class="panel panel-default">
                        <div class="panel-heading">
                            결산 내역
                        </div>

<%
System.out.println((String)session.getAttribute("id"));
Vector<TotalizationBean> vlist = mMgr.getTotalization((String)session.getAttribute("id"));
int rev=0;
int expen=0;
int profit=0;

	out.println("<center><table class='table table-striped table-bordered table-hover' border=2><thead>" + "<tr>" +"<td align=center>선택</td>"+ "<td align=center> 결산 번호 </td>" +"<td align=center> 지점 ID </td>" +"<td align=center>수익</td>"+"<td align=center> 지출 </td>" + "<td align=center> 결산날짜 </td>" + "<td align=center> 순이익 </td>" + "</tr></thead>");
			
	out.println("<tbody>");int cnt=0;
	for (int i = 0; i < vlist.size(); i++) {
				bean = vlist.get(i);
				String tnum = bean.getTnum();
				String tbid = bean.getTbid();
				String trevenue = bean.getTrevenue();
				String texpenditure = bean.getTexpenditure();
				String tdate = bean.getTdate();
				rev = Integer.parseInt(trevenue);
				expen = Integer.parseInt(texpenditure);
				profit = rev - expen;
				
				out.println("<td align=center><input type=checkbox name=item value="+i+"> </td>");
				out.println("<td align=center><input type=hidden name=tnum value="+bean.getTnum() + ">"+bean.getTnum()+"</td>");
				//out.println("<tr><a href='Branch_Delete_Query_Forward.jsp?branch_Id="+bean.getBid()+"&branch_Loc="+bean.getbLoc()+"&branch_Owner_Name="+bean.getbName()+"&branch_tel="+bean.getbTel()+"&branch_Owner_tel="+bean.getbOTel()+"'>");
				//out.println("<a href='Branch_Delete.jsp?branch_Id="+branch_Id+"&branch_Loc="+branch_Loc+"&branch_Owner_Name="+branch_Owner_Name+"&branch_tel="+branch_tel+"&branch_Owner_tel="+branch_Owner_tel+"'</a>"+branch_Id+"</td>");
				//out.println("<td align=center><a href='Branch_Delete_List_Forward.jsp?branch_Id="+bean.getBid()+"&branch_Loc="+bean.getbLoc()+"&branch_Owner_Name="+bean.getbName()+"&branch_tel="+bean.getbTel()+"&branch_Owner_tel="+bean.getbOTel()+"'>"+bean.getBid() + "</a></td>");
				out.println("<td align=center>"+bean.getTbid() + "</td>");
				out.println("<td align=center>"+bean.getTrevenue() + "</td>");
				out.println("<td align=center>"+bean.getTexpenditure() + "</td>");
				out.println("<td align=center>"+bean.getTdate() + "</td>");
				out.println("<td align=center>"+profit + "</td>");
				out.println("</tr></a>");cnt++;
			}

			out.println("</tbody></table></center>");

%>

</center>
 </div>
 <!-- <a href="#" class="btn btn-primary">변경ddd</a> -->
<input type="button" id="num" onclick="form_submit();" value="변경" class="btn btn-primary">

 <input type="hidden" name=cnt value="<%=cnt %>"/>
<input type="button" id="num" onclick="form_submit2();" value="삭제" class="btn btn-danger">
 </div>              
</div>
</form>
                                     <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
</body>
</html>