<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
    width: 100%;
    background:#202020;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/find_user.png" class="user-image img-responsive"/>
                    	
					</li>
					 <li  >
                        <a  href="#"><i class="fa fa-edit fa-3x"></i> �������� </a>
                    </li>
                    <%
                    String id = (String)session.getAttribute("id");
                    if(!id.equals("admin")){ %>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i>���� & ���<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          <li>
                                <a href="#">���<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="Totalization_Insert_Forword.jsp">��� ���</a>
                                    </li>
                                    <li>
                                        <a href="Totalization_Select_Forword.jsp">��� ��ȸ</a>
                                    </li>
                                </ul>
                               
                            </li>
							<li>
                                <a href="#">����<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="Order_Insert_Forword.jsp">��ǰ ����</a>
                                    </li>
                                    <li>
                                        <a href="Order_Select_Forword.jsp">���� ����</a>
                                    </li>
                                    <li>
                                        <a href="#">���� ���� ����</a>
                                    </li>
                                    <li>
                                        <a href="#">���� ���</a>
                                    </li>

                                </ul>
                               
                            </li>

                        </ul>
                        
                      </li>  
                    <li>
                        <a href="#"><i class="fa fa-desktop fa-3x"></i>��������<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          
							<li>
                                <a href="#">����<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="Employee_Insert_Forword.jsp">���� ���</a>
                                    </li>
                                    <li>
                                        <a href="Employee_Forward.jsp">���� ��ȸ</a>
                                    </li>

                                </ul>
                               
                            </li>

                        </ul>
                        
                      </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i>��������<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          
							<li>
                                <a href="#">����<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="Branch_Insert_Forword.jsp">���� ���</a>
                                    </li>
                                    <li>
                                        <a href="Branch_Select_Forword.jsp">���� ��ȸ</a>
                                    </li>

                                </ul>
                               
                            </li>

                        </ul>
                        
                      </li>
                      <%}else{%>
                    	  <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i>����<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          <li>
                                <a href="#">���<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="Totalization_Insert_Forword.jsp">��� ���</a>
                                    </li>
                                    <li>
                                        <a href="Totalization_Select_Forword.jsp">��� ��ȸ</a>
                                    </li>
                                </ul>
                               
                            </li>
							<li>
                                <a href="#">����<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="Order_Insert_Forword.jsp">��ǰ ����</a>
                                    </li>
                                    <li>
                                        <a href="Order_Select_Forword.jsp">���� ����</a>
                                    </li>
                                    <li>
                                        <a href="#">���� ���� ����</a>
                                    </li>
                                    <li>
                                        <a href="#">���� ���</a>
                                    </li>

                                </ul>
                               
                            </li>

                        </ul>
                        
                      </li>  
                    <li>
                    	  
                    	  <%} %>
                </ul>
               
            </div>
            
        </nav>
</body>
</html>