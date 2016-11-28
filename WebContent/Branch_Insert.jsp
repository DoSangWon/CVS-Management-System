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
   <h1>지점 등록</h1>
   <Form Action="Branch_Insert_Query_Forward.jsp" method="post">
   지정 ID   :		<INPUT TYPE="text" name = "bid"><p> 
   지점 위치      :		<INPUT TYPE="text" name = "bLoc"><p> 
   점장명          :		<INPUT TYPE="text" name = "bName"><p> 
   지점 연락처   :		<INPUT TYPE="text" name = "bTel"><p>
   점장 연락처   :		<INPUT TYPE="text" name = "bOTel"><p>
      <INPUT TYPE="submit" value="등 록">
   </Form>
   </center>
</body>
</html>