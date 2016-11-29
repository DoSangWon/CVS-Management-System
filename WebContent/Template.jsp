<%@ page contentType="text/html;charset=EUC-KR" import="java.sql.*"%>
<%@ page import="java.util.*, project.*"%>
<%request.setCharacterEncoding("EUC-KR");%>
<%
   String contentPage = request.getParameter("CONTENTPAGE");
	
String id ="";
id = (String)session.getAttribute("id");            // request에서 id 파라미터를 가져온다

if(id==null||id.equals("")){                            // id가 Null 이거나 없을 경우
	%>
	<script>
	alert("잘못된 접근입니다.");
</script>
	<%
response.sendRedirect("index.html");    // 로그인 페이지로 리다이렉트 한다.
}
%>



<html>
<head>
<title>체인점 관리 시스템</title>
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>체인점 관리 시스템</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<style >

</style>


<body>
<div id="상단영역" style="overflow:auto;" >

	<jsp:include page="Top.jsp" flush="false"/>

</div>

<div id="좌측영역" style="overflow:auto;">

	<jsp:include page="Left.jsp" flush="false">

		<jsp:param value="{제목:\"메뉴제목12222\",메뉴들:[{제목:\"메뉴1222\",href:\"url17777\"},{제목:\"메뉴244\",href:\"url2\"}]}"  name="메뉴"/>

	</jsp:include>	

</div>

<div id="내용영역" style="overflow:auto;" >

	<jsp:include page="<%= contentPage %>" flush="false" />

</div>

<div id="하단영역" style="overflow:auto;" >

	<jsp:include page="Bottom.jsp" flush="false"/>

</div>
 <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- MORRIS CHART SCRIPTS -->
     <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
</body>
</html>