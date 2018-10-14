<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>커넥툰: 회원 가입</title>
    <link rel="stylesheet" href="src/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
</head>
<body>
    <div class="wrap">
        <%@include file="header.jsp" %>
        <section class="section">
            <div class="form_wrap">
                <form name="sign_form" action="memberJoin.do" method="POST">
                    <fieldset class="form_fieldset">
                        <legend class="blind">기본 정보</legend>
                        <div class="form_inner clear_fix">
                            <label for="id" class="form_label">아이디</label>
                            <div class="form_input_wrap">
                                <input type="text" id="id" name="input_id" class="form_input">
                            </div>
                        </div>
                        <div class="form_inner clear_fix">
                            <label for="pw" class="form_label">비밀번호</label>
                            <div class="form_input_wrap"><input type="password" id="pw" name="input_password" class="form_input"></div>
                        </div>
                        <div class="form_inner clear_fix">
                            <label for="phone" class="form_label">전화번호</label>
                            <div class="form_input_wrap"><input type="number" id="phone" name="input_phone" class="form_input"></div>
                        </div>
                        <div class="form_button_wrap">
                            <button type="submit" class="button_form sign">회원가입</button>
                            <button type="reset" class="button_form reset">취소</button>
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