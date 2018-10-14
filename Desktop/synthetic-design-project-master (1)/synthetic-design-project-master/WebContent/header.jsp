<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div class="header">
    <header>
        <h1 class="title">CONNECTOON</h1>
        <!-- 임시 버튼 start -->
       	<button type="button" class="button_toggle_admin" style="position: fixed; top: 0; right: 0;">관리자</button>
        <!-- 임시 버튼 end -->
        <nav class="nav">
            <ul class="nav_list clear_fix">
                <li class="nav_item"><a href="index.jsp" class="nav_link">홈</a></li>
                <li class="nav_item">
                	
                	<% if(session.getAttribute("login_admin")!= null){%>
                	<a href="admin.jsp" class="nav_link">웹툰 관리</a>
                	<%}else{%>
                	 <a href="favorite.jsp" class="nav_link">즐겨찾기</a>
                	<%} %>
                </li>
                <li class="nav_item"><a href="list.jsp" class="nav_link">웹툰 목록</a></li>
                <% if(session.getAttribute("login_user") == null && session.getAttribute("login_admin")==null){ %>
                	<li class="nav_item"><a href="login.jsp" role="button" class="nav_link">로그인</a></li>
                <%} else { %>
               		<li class="nav_item"><a href="memberLogout.do" role="button" class="nav_link">로그아웃</a></li>
              	<%} %>
                <li class="nav_item"><a href="config.jsp" class="nav_link">설정</a></li>
                <li class="nav_item">
                    <div class="search">
                        <form name="search_form">
                            <fieldset>
                                <legend class="blind">검색</legend>
                                <label for="search_input" class="search_label">
                                    <input type="text" id="search_input" class="search_input" placeholder="통합 검색" onclick="location.href='search.jsp'">
                                    <button type="submit" class="button_search"><span class="blind">검색</span></button>
                                </label>
                            </fieldset>
                        </form>
                    </div>
                </li>
            </ul>
        </nav>
    </header>
</div>
