<%@ page contentType="text/html;charset=EUC-KR" import="java.sql.*"%>
<%@ page import="java.util.*, project.*"%>
<%request.setCharacterEncoding("EUC-KR");%>
<%
   String contentPage = request.getParameter("CONTENTPAGE");
%>


<html>
<head>
<title>JSP���� �����ͺ��̽� ����</title>
</head>
<style >

#��ܿ���{

	background-color: pink;

	height:100px;

}

#��������{

	background-color: LightGray;

	height:550px;

	width:300px;

	float:left;

}

#���뿵��{

	background-color: yellow;

	height:550px;

	

}

#�ϴܿ���{

	background-color: orange;

	height:50px;

	

}

</style>


<body>
<div id="��ܿ���" >

	<jsp:include page="Top.jsp" flush="false"/>

</div>

<div id="��������" >

	<jsp:include page="Left.jsp" flush="false">

		<jsp:param value="{����:\"�޴�����12222\",�޴���:[{����:\"�޴�1222\",href:\"url17777\"},{����:\"�޴�244\",href:\"url2\"}]}"  name="�޴�"/>

	</jsp:include>	

</div>

<div id="���뿵��" >

	<jsp:include page="<%= contentPage %>" flush="false" />

</div>

<div id="�ϴܿ���" >

	<jsp:include page="Bottom.jsp" flush="false"/>

</div>

</body>
</html>