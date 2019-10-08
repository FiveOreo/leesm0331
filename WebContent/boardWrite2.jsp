<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script language=javascript>
	function writeCheck(){
		var form = document.writeform;
		
		if(!form.name.value){
			alert("이름을 적어주세요");
			 form.name.focus();
			 return;
		}
		if(!form.password.value){
			alert("비밀번호를 적어주세요");
			form.password.focus();
			return;
		}
		if(!form.title.value){
			alert("제목을 적어주세요");
			form.title.focus();
			return;
		}
		if( !form.memo.value )
		   {
		    alert( "내용을 적어주세요" );
		    form.memo.focus();
		    return;
		   }
		 
		  form.submit();
		  }
</script>
<!DOCTYPE html>
<html>
<jsp:include page="top.jsp" />
<head>
<meta charset="UTF-8">
<title>공유게시판 글쓰기</title>
</head>
<body>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr
			style="background: url('image/table_mid.gif') repeat-x; text-align: center">
			<td width="5"><img src="image/table_left.gif" width="5"
				height="30" /></td>
			<td>글쓰기</td>
			<td width="5"><img src="image/table_right.gif" width="5"
				height="30" /></td>
		</tr>
	</table>
	<table align="center">
		<form name=writeform method=post action="write_ok.jsp">
		<tr>
			<td>&nbsp;</td>
			<td align="center">제목</td>
			<td><input name="title" size="50" maxlength="100"></td>
			<td>&nbsp;</td>
		</tr>
		<tr height="1" bgcolor="#dddddd">
			<td colspan="4"></td>
		</tr>
		<tr>
      <td>&nbsp;</td>
      <td align="center">이름</td>
      <td><input name="name" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
		<tr>
			<td>&nbsp;</td>
			<td align="center">비밀번호</td>
			<td><input type="password" name="password" size="50" maxlength="50"></td>
			<td>&nbsp;</td>
		</tr>
		<tr height="1" bgcolor="#dddddd">
			<td colspan="4"></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td align="center">내용</td>
			<td><textarea name="memo" cols="50" rows="13"></textarea></td>
			<td>&nbsp;</td>
		</tr>
	<tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center">
     	<td>&nbsp;</td>
     	<td colspan="2"><input type="button" value="등록" OnClick="javascript:writeCheck();">
     	<input type="button" value="취소" OnClick="javascript:history.back(-1)">
     	<td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
       <tr>
       	<td>&nbsp;</td>
       	<td style="width:15%">첨부파일</td>
       	<td><input type="file" value="파일 업로드" ></td>
       </tr>
       <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
		</form>
	</table>
</body>
<jsp:include page="foot.jsp" />
</html>