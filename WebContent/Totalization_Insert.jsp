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
   <h1>결산 등록</h1>
   <Form Action="Totalization_Insert_Query_Forward.jsp" method="post">
   지정 ID   :		<INPUT TYPE="text" name = "tbid"><p> 
   수익             :		<INPUT TYPE="text" name = "trevenue"><p> 
   지출             :		<INPUT TYPE="text" name = "texpenditure"><p> 
 
      <INPUT TYPE="submit" value="등 록">
   </Form>
   </center>
</body>
</html>