<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��������</title>
</head>
<body>
	<form id=form action="usermodify" method="post">
		�����й�ȣ <input type="password" id=password name="user_pwd" placeholder="��й�ȣ�� �Է��ϼ���" required><br>
			��й�ȣ <input type="password" id=password2 name="user_pwd2" value=""><br>
			��й�ȣȮ�� <input type="password" id=password_check value=""><br>
			�г��� <input type="text" id=nickname value="${user.user_nickname }" name="user_nickname" ><br>
			��ȭ��ȣ <input type="text" id=phone value="${user.user_phone }" name="user_phone"><br> 			
	
		<input type="submit" class="btn" id=modify value="�����ϱ�">
		<input type="button" class="btn" value="��������" onclick="location.href='mypageinfo'">
	</form>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
	 $('#form').submit(function() {
         let password = $('#password').val();
         if(password=='') {
         	alert("���� ��й�ȣ�� �Է��ϼ���.");
         	$('#password').focus();
         	return false;
         }
         let password2 = $('#password2').val();
         if(password2=='') {
         	alert("������ ��й�ȣ�� �Է��ϼ���.");
         	$('#password2').focus();
         	return false;
         }
     	
         let phone = $('#phone').val();
         if(phone=='') {
         	alert("��ȭ��ȣ�� �Է��ϼ���.");
         	$('#phone').focus();
         	return false;
         }
         let password_check = $('#password_check').val();
         if(password2!=password_check){
         	alert("��й�ȣ Ȯ���� ��ġ���� �ʽ��ϴ�.")
         	$('#password_check').focus();
         	return false;
         }
     });
	</script>
</body>
</html>