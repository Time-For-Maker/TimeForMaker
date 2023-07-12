<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form class="pure-form">
   <p>비밀번호: <input type="password" name="join_pw" required></p>
	<p>비밀번호 확인: <input type="password" name="join_pw2" required></p>	
</form>
<% 
$join_pw = $_POST['join_pw'];
$join_pw2 = $_POST['join_pw2'];

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;

if(!$check){ //사용가능ID
	if($join_pw != $join_pw2){ //비밀번호 불일치
		echo "<script>alert('비밀번호가 일치하지 않습니다.'); history.back();</script>";
	} else { //비밀번호 일치
		if($res){
			echo "<script>alert('회원가입이 완료되었습니다.');";
			echo "window.location.replace('login.php');</script>";
			exit;
		}
		else { //쿼리문의 결과가 없으면 로그인 fail을 출력한다.
			echo "<script>alert('저장에 문제가 생겼습니다. 관리자에게 문의해주세요.');";
			echo mysqli_error($conn);
		}
	} 
} else { //사용불가ID
	echo "<script>alert('아이디가 중복됩니다.'); history.back();</script>";
}

%>


</body>
</html>