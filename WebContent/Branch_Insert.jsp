<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
   <h1>���� ���</h1>
   <Form Action="Branch_Insert_Query_Forward.jsp" method="post">
   ���� ID   :		<INPUT TYPE="text" name = "bid"><p> 
   ���� ��ġ      :		<INPUT TYPE="text" name = "bLoc"><p> 
   �����          :		<INPUT TYPE="text" name = "bName"><p> 
   ���� ����ó   :		<INPUT TYPE="text" name = "bTel"><p>
   ���� ����ó   :		<INPUT TYPE="text" name = "bOTel"><p>
      <INPUT TYPE="submit" value="�� ��">
   </Form>
   </center>
</body>
</html>