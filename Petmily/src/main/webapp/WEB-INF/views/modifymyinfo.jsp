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
   <form id=form action="/modifymyinfo" method="post">
      �����й�ȣ <input type="password" id=password name="user_pwd" placeholder="��й�ȣ�� �Է��ϼ���" required><br>
         ��й�ȣ <input type="password" id=password2 name="user_pwd2" value=""><br>
         ��й�ȣȮ�� <input type="password" id=password_check value=""><br>
         ��ȭ��ȣ <input type="text" id=phone value="${user.user_phone }" name="user_phone"><br>          
         �г��� <input type="text" id=nickname value="${user.user_nickname }" name="user_nickname" ><br>
         �̸��� <input type="text" id=email  value="${user.user_email }" name="user_email" disabled><br>
   
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
         let email = $('#email').val();
         if(email=='') {
            alert("�̸����� �Է��ϼ���.");
            $('#email').focus();
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