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
<div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">

   <h2>결산 등록</h2>
   <h5>결산 정보를 정확하게 입력하여 주십시오.</h5>
   <hr />
   <center>
   <Form Action="Totalization_Insert_Query_Forward.jsp" method="post">
   <div class="form-group">
     <label>지점 ID</label>
     <input class="form-control" name = "tbid"/>
   </div> 
   <div class="form-group">
     <label>수익</label>
     <input class="form-control" name = "trevenue"/>
   </div> 
    <div class="form-group">
     <label>지출</label>
     <input class="form-control" name = "texpenditure"/>
   </div> 
      <button type="submit" class="btn btn-default">등록하기</button>
   </Form>
   </center>
   </div>
                </div>              
                 
                    </div>
                                     <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
</body>
</html>