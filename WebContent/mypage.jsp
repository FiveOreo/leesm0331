<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<jsp:include page="top.jsp"/>
<script>
$(function(){
	if(${msg ne null}){
		alert('${msg}');
	};
	
	if($("#pwform")).submit(function(){
		if($("#pw").val() !== $("#pw2").val()){
			alert("비밀번호가 다릅니다");
			$("#pw").val("").focus();
			$("#pw2").val("");
			
			return false;
		}else if ($("#pw").val().length < 9) {
			alert("비밀번호는 9자 이상으로 설정해야합니다");
			$("#pw").val("").focus();
			return false;
		}else if ($.trim($("#pw").val()) !== $("#pw").val()){
			alert("공백은 불가능 합니다");
			return false;
		}
	}));
	})
</script>
<title>마이페이지</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
				<h1>My Page</h1>
			</div>
			<div>
				<form id="myForm" action="../member/update_mypage.do" method="post">
					<p>
						<label>ID</label> 
						<input class="w3-input" type="text" id="id" name="id" readonly value="${ memberid }"> 
					</p>
					<p>
						<label>Email</label> 
						<input class="w3-input" type="text" id="email" name="email" value="${ email }" required> 
					</p>
					<p class="w3-center">
						<button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">회원정보 변경</button>
					</p>
				</form>
				<br />
				<form id="pwForm" action="../member/update_pw.do" method="post">	
					<input type="hidden" name="id" value="${ memberid }">
					<p>
						<label>Password</label>
						<input class="w3-input" id="old_pw" name="old_pw" type="password" required>
					</p>
					<p>
						<label>New Password</label> 
						<input class="w3-input" id="pw" name="pw" type="password" required>
					</p>
					<p>
						<label>Confirm</label>
						<input class="w3-input" type="password" id="pw2" type="password" required>
					</p>
					<p class="w3-center">
						<button type="submit" id="joinBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">비밀번호 변경</button>
					</p>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
<jsp:include page="foot.jsp"/>