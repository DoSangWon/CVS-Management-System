<%@ page contentType="text/html;charset=EUC-KR" import="java.sql.*"%>
<%@ page import="java.util.*, project.*"%>
<%request.setCharacterEncoding("EUC-KR");%>
<%
   String contentPage = request.getParameter("CONTENTPAGE");
%>


<html>
<head>
<title>JSP에서 데이터베이스 연동</title>
</head>
<style >

#상단영역{

	background-color: pink;

	height:100px;

}

#좌측영역{

	background-color: LightGray;

	height:550px;

	width:300px;

	float:left;

}

#내용영역{

	background-color: yellow;

	height:550px;

	

}

#하단영역{

	background-color: orange;

	height:50px;

	

}

</style>


<body>
<div id="상단영역" >

	<jsp:include page="Top.jsp" flush="false"/>

</div>

<div id="좌측영역" >

	<jsp:include page="Left.jsp" flush="false">

		<jsp:param value="{제목:\"메뉴제목12222\",메뉴들:[{제목:\"메뉴1222\",href:\"url17777\"},{제목:\"메뉴244\",href:\"url2\"}]}"  name="메뉴"/>

	</jsp:include>	

</div>

<div id="내용영역" >

	<jsp:include page="<%= contentPage %>" flush="false" />

</div>

<div id="하단영역" >

	<jsp:include page="Bottom.jsp" flush="false"/>

</div>

</body>
</html>