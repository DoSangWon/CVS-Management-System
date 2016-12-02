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
                        <a  href="#"><i class="fa fa-edit fa-3x"></i> 공지사항 </a>
                    </li>
                    <%
                    String id = (String)session.getAttribute("id");
                    if(!id.equals("admin")){ %>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i>발주 & 결산<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          <li>
                                <a href="#">결산<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="Totalization_Insert_Forword.jsp">결산 등록</a>
                                    </li>
                                    <li>
                                        <a href="Totalization_Select_Forword.jsp">결산 조회</a>
                                    </li>
                                </ul>
                               
                            </li>
							<li>
                                <a href="#">발주<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="Order_Insert_Forword.jsp">물품 발주</a>
                                    </li>
                                    <li>
                                        <a href="Order_Select_Forword.jsp">발주 내역</a>
                                    </li>
                                    <li>
                                        <a href="#">발주 내역 변경</a>
                                    </li>
                                    <li>
                                        <a href="#">발주 취소</a>
                                    </li>

                                </ul>
                               
                            </li>

                        </ul>
                        
                      </li>  
                    <li>
                        <a href="#"><i class="fa fa-desktop fa-3x"></i>점원관리<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          
							<li>
                                <a href="#">점원<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="Employee_Insert_Forword.jsp">점원 등록</a>
                                    </li>
                                    <li>
                                        <a href="Employee_Forward.jsp">점원 조회</a>
                                    </li>

                                </ul>
                               
                            </li>

                        </ul>
                        
                      </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i>지점관리<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          
							<li>
                                <a href="#">지점<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="Branch_Insert_Forword.jsp">지점 등록</a>
                                    </li>
                                    <li>
                                        <a href="Branch_Select_Forword.jsp">지점 조회</a>
                                    </li>

                                </ul>
                               
                            </li>

                        </ul>
                        
                      </li>
                      <%}else{%>
                    	  <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i>수주<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                          <li>
                                <a href="#">결산<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="Totalization_Insert_Forword.jsp">결산 등록</a>
                                    </li>
                                    <li>
                                        <a href="Totalization_Select_Forword.jsp">결산 조회</a>
                                    </li>
                                </ul>
                               
                            </li>
							<li>
                                <a href="#">발주<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="Order_Insert_Forword.jsp">물품 발주</a>
                                    </li>
                                    <li>
                                        <a href="Order_Select_Forword.jsp">발주 내역</a>
                                    </li>
                                    <li>
                                        <a href="#">발주 내역 변경</a>
                                    </li>
                                    <li>
                                        <a href="#">발주 취소</a>
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