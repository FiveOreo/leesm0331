<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="login.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
    function loginform(){
    	
    }
    function goRegisterForm(){
    	location.href="register.jsp";
    }
    function checkValue(){
    	if(!inputID3){
    		alert("아이디를 입력하세요");
    		return false;
    	}
    	if(!inputPassword3){
    		alert("비밀번호를 입력하세요");
    		return false;
    	}
    }
   
    </script>
  </head><body>
  <jsp:include page="top2.jsp"/>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <form class="form-horizontal" method="POST" role="form" action="loginsucess.do" name="loginform">
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="inputID3" class="control-label">ID</label>
                </div>
                <div class="col-sm-5">
                  <input type="text" class="form-control" id="inputID3" placeholder="ID" name="id">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-2">
                  <label for="inputPassword3" class="control-label">Password</label>
                </div>
                <div class="col-sm-5">
                  <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="pwd">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <div class="checkbox">
                    
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-default" style="margin-right:10px" onclick="loginsucess()">Sign in</button>
                  <button type="button" class="btn btn-default" style="margin-right:10px" onclick="goRegisterForm()">Register</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  <jsp:include page="foot.jsp"/>

</body></html>