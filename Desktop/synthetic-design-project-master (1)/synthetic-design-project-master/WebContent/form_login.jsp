<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% if(session.getAttribute("login_user") == null && session.getAttribute("login_admin") == null){ %>
    <form name="login_form" action="memberLogin.do" method="POST">
		<fieldset class="form_fieldset">
			<legend class="blind">로그인 정보</legend>
			<div class="form_inner clear_fix">
			    <label for="id" class="form_label">아이디</label>
	            <div class="form_input_wrap"><input type="text" id="id" name="input_id" class="form_input"></div>
			</div>
			<div class="form_inner clear_fix">
			    <label for="pw" class="form_label">비밀번호</label>
			    <div class="form_input_wrap"><input type="password" id="pw" name="input_password" class="form_input"></div>
			</div>
			<div class="form_inner">
			    <label for="pw_show" class="custom_label">
			    <input type="checkbox" id="pw_show" class="custom_input blind">
			    <span class="custom_check"></span>비밀번호 보기
				</label>
			</div>
			<div class="form_button_wrap">
			    <button onclick="submit" class="button_form">로그인</button>
			    <a href="sign.jsp" role="button" class="button_form">회원가입</a>
			    <a href="find_password.jsp" role="button" class="button_form">비밀번호 찾기</a>
			</div>
		</fieldset>
	</form>
<%} else { %>
    <form name="login_form" action="memberLogout.do" method="POST">
		<fieldset class="form_fieldset">
			<legend class="blind">로그인 정보</legend>
			<div class="form_inner login clear_fix">
			<% if(session.getAttribute("login_user")!=null) {%>
				<span class="highlight"><%= session.getAttribute("login_user") %></span>님 환영합니다.
				<%}else{ %>
				<span class="highlight"><%= session.getAttribute("login_admin") %></span>님 환영합니다.
				
				<%} %>
			</div>
			<div class="form_button_wrap">
				<button type="submit" class="button_form logout">로그아웃</button>
			</div>
		</fieldset>
	</form>
<% } %>