<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>커넥툰: 비밀번호 찾기</title>
    <link rel="stylesheet" href="src/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
</head>
<body>
    <div class="wrap">
        <%@include file="header.jsp" %>
        <section class="section">
            <div class="form_wrap">
                <form name="find_password_form">
                    <fieldset class="form_fieldset">
                        <legend class="blind">비밀번호 찾기</legend>
                        <div class="form_inner clear_fix">
                            <label for="id" class="form_label">아이디</label>
                            <div class="form_input_wrap"><input type="text" id="id" class="form_input"></div>
                        </div>
                        <div class="form_inner clear_fix">
                            <label for="pw" class="form_label">전화번호</label>
                            <div class="form_input_wrap"><input type="number" id="pw" class="form_input"></div>
                        </div>
                        <div class="form_button_wrap">
                            <button type="submit" class="button_form send">비밀번호 전송</button>
                        </div>
                    </fieldset>
                </form>
            </div>
        </section>
    </div>
    <script src="src/lib/jquery-3.3.1.js"></script>
    <script src="src/js/app.js"></script>
</body>
</html>
