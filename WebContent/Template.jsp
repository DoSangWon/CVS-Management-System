<%@ page contentType="text/html;charset=EUC-KR" import="java.sql.*"%>
<%@ page import="java.util.*, project.*"%>
<%request.setCharacterEncoding("EUC-KR");%>
<%
   String contentPage = request.getParameter("CONTENTPAGE");
	
String id ="";
id = (String)session.getAttribute("id");            // request���� id �Ķ���͸� �����´�

if(id==null||id.equals("")){                            // id�� Null �̰ų� ���� ���
	%>
	<script>
	alert("�߸��� �����Դϴ�.");
</script>
	<%
response.sendRedirect("index.html");    // �α��� �������� �����̷�Ʈ �Ѵ�.
}
%>



<html>
<head>
<title>ü���� ���� �ý���</title>
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ü���� ���� �ý���</title>
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
<div id="��ܿ���" style="overflow:auto;" >

	<jsp:include page="Top.jsp" flush="false"/>

</div>

<div id="��������" style="overflow:auto;">

	<jsp:include page="Left.jsp" flush="false">

		<jsp:param value="{����:\"�޴�����12222\",�޴���:[{����:\"�޴�1222\",href:\"url17777\"},{����:\"�޴�244\",href:\"url2\"}]}"  name="�޴�"/>

	</jsp:include>	

</div>

<div id="���뿵��" style="overflow:auto;" >

	<jsp:include page="<%= contentPage %>" flush="false" />

</div>

<div id="�ϴܿ���" style="overflow:auto;" >

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