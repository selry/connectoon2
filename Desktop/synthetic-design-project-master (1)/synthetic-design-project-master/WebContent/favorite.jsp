<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>커넥툰: 즐겨찾기</title>
    <link rel="stylesheet" href="src/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
</head>
<body>
	<% if(session.getAttribute("login_user")== null) { %>
		<script type = "text/javascript">
			alert('로그인을 먼저 해주세요!');
			location.href=('index.jsp');
		</script>
	<% } %>
    <div class="wrap">
        <%@include file="header.jsp" %>
        <section class="section">
            <div class="favorite_inner clear_fix">
                <a href="#" role="button" class="button_go_back"><span class="blind">뒤로 가기</span></a>
                <a href="#" role="button" class="button_edit_favorite">편집</a>
            </div>
            <div class="favorite_inner clear_fix">
                <div class="custom_select">
                    <a href="#" role="button" class="button_align">이름순</a>
                    <ul class="list_align hidden">
                        <li class="item_align"><a href="#" role="button" class="button_align view">조회순</a></li>
                        <li class="item_align"><a href="#" role="button" class="button_align new">최신순</a></li>
                        <li class="item_align"><a href="#" role="button" class="button_align name">이름순</a></li>
                    </ul>
                </div>
                <div class="view_button_wrap">
                    <a href="#" role="button" class="button_view list"><span class="blind">목록형으로 보기</span></a>
                    <a href="#" role="button" class="button_view grid"><span class="blind">그리드형으로 보기</span></a>
                    <a href="#" role="button" class="button_edit_favorite">편집</a>
                </div>
            </div>
            <ul class="list_webtoon grid clear_fix">
                <li class="item_webtoon">
                    <a href="#" class="link_webtoon clear_fix">
                        <div class="item_order">1</div>
                        <div class="item_img"><img src="https://via.placeholder.com/100x100" alt="#"></div>
                        <div class="item_title elip1">웹툰 제목</div>
                    </a>
                    <a href="#" role="button" class="button_delete hidden"><span class="blind">삭제</span></a>
                </li>
                <li class="item_webtoon">
                    <a href="#" class="link_webtoon clear_fix">
                        <div class="item_order">2</div>
                        <div class="item_img"><img src="https://via.placeholder.com/100x100" alt="#"></div>
                        <div class="item_title elip1">웹툰 제목</div>
                    </a>
                    <a href="#" role="button" class="button_delete hidden"><span class="blind">삭제</span></a>
                </li>
                <li class="item_webtoon">
                    <a href="#" class="link_webtoon clear_fix">
                        <div class="item_order">3</div>
                        <div class="item_img"><img src="https://via.placeholder.com/100x100" alt="#"></div>
                        <div class="item_title elip1">웹툰 제목</div>
                    </a>
                    <a href="#" role="button" class="button_delete hidden"><span class="blind">삭제</span></a>
                </li>
                <li class="item_webtoon">
                    <a href="#" class="link_webtoon clear_fix">
                        <div class="item_order">4</div>
                        <div class="item_img"><img src="https://via.placeholder.com/100x100" alt="#"></div>
                        <div class="item_title elip1">웹툰 제목</div>
                    </a>
                    <a href="#" role="button" class="button_delete hidden"><span class="blind">삭제</span></a>
                </li>
                <li class="item_webtoon">
                    <a href="#" class="link_webtoon clear_fix">
                        <div class="item_order">5</div>
                        <div class="item_img"><img src="https://via.placeholder.com/100x100" alt="#"></div>
                        <div class="item_title elip1">웹툰 제목</div>
                    </a>
                    <a href="#" role="button" class="button_delete hidden"><span class="blind">삭제</span></a>
                </li>
                <li class="item_webtoon">
                    <a href="#" class="link_webtoon clear_fix">
                        <div class="item_order">6</div>
                        <div class="item_img"><img src="https://via.placeholder.com/100x100" alt="#"></div>
                        <div class="item_title elip1">웹툰 제목</div>
                    </a>
                    <a href="#" role="button" class="button_delete hidden"><span class="blind">삭제</span></a>
                </li>
            </ul>
        </section>
    </div>
    <script src="src/lib/jquery-3.3.1.js"></script>
    <script src="src/js/app.js"></script>
</body>
</html>

