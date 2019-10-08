<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="login.css" rel="stylesheet" type="text/css">
   
       <link href='../../css/join_style.css' rel='stylesheet' style='text/css'/>
 	<title>회원가입</title>
    <script type="text/javascript">
    
    function checkvalue(){
    	if(!document.userInfo.id.value){
    		alert("아이디를 입력하세요");
    		return false;
    	}
    	if(!document.userInfo.password.value){
    		alert("비밀번호를 입력하세요");
    		return false;
    	}
    	if(!document.userInfo.email.value){
    		alert("이메일을 입력하세요");
    		return false;
    	}
    	if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
            alert("비밀번호를 동일하게 입력하세요.");
            return false;
        }
    	return true;
    }
    function goLoginForm(){
    	location.href="login.jsp";
    }
    function sucessForm(){
    	alert("감사합니다 가입완료되었습니다");
    	location.href="login.jsp";
    }
    /*window.addEventListener('load', function() {
		var signup = document.querySelector('#signup');
    
    })
    signup.addEventListner('click',function(){
    	var id = document.querySelector(#id);
    	var pwd = document.querySelector(#pwd);
    	var email = document.querySelector(#email);
    	var name = document.querySelector(#name);
    })*/
    
    </script>
  </head><body>
  <jsp:include page="top2.jsp"/>
  	<div id="wrap">
        <br><br>
        <b><font size="6" color="gray">회원가입</font></b>
        <br><br><br>
        
        <form id="mf" method="post" action="registerEnd.do" name="userInfo" onsubmit="return checkValue()">
        <table>
        	<tr>
        		<td id="title">아이디</td>
        		<td>
        			<input type="text" name="id" maxlength="30" id="id">
        			<input type="button" value="중복확인">
        		</td>
        	</tr>
        	
        	<tr>
        		<td id="title">비밀번호</td>
        		<td>
        			<input type="password" name="pwd" maxlength="9" id="pwd">
        		</td>
        	</tr>
        	
        	<tr>
        		<td id="title">이메일</td>
        		<td>
        			<input type="text" name="email" maxlength="30" id="email">
        			
        		</td>
        	</tr>
        	
        	<tr>
        		<td id="title">이름</td>
        		<td>
        			<input type="text" name="name" maxlength="30" id="name">
        		</td>
        	</tr>
        	
        	<tr>
        		<td id="title">성별</td>
        		<td>
        			<input type="radio" name="gender" value="남" checked>남
        			<input type="radio" name="gender" value="여" checked>여
        		</td>
        	</tr>
        	
        </table>
        <br>
        <input type="submit" value="가입" onclick="sucessForm()"/>  
        <input type="button" value="취소" onclick="goLoginForm()">
  <jsp:include page="foot.jsp"/>