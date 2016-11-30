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

   <h2>지점 등록</h2>
   <h5>지점 정보를 정확하게 입력하여 주십시오.</h5>
   <hr />
   <center>
   <Form Action="Branch_Insert_Query_Forward.jsp" method="post">
   <div class="form-group">
     <label>지점 ID</label>
     <input class="form-control" name = "bid"/>
   </div> 
   <div class="form-group">
     <label>지점명</label>
     <input class="form-control" name = "bName"/>
   </div> 
    <div class="form-group">
     <label>지점 위치</label>
     <input class="form-control" name = "bLoc"/>
   </div>
   <input type="hidden" name=bOName value="<%=(String)session.getAttribute("id") %>"/>
     <div class="form-group">
     <label>지점 연락처</label>
     <input class="form-control" name = "bTel"/>
   </div> 
   <input type="hidden" name=bOTel value="test"/> 
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