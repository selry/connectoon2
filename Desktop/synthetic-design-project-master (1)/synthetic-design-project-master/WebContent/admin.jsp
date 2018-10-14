<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
    <title>커넥툰: 홈</title>
    <link rel="stylesheet" href="src/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
</head>
<% if(session.getAttribute("login_admin")==null){ %>

		<script type = "text/javascript">
			alert('로그인을 먼저 해주세요!');
			location.href=('index.jsp');
		</script>
<%} %>
<body>
	<%@include file="header.jsp" %>
    <div class="wrap">
        <table class="table_webtoon">
            <caption>웹툰 관리</caption>
            <colgroup>
                <col class="col_name">
                <col class="col_author">
                <col class="col_genre">
                <col class="col_page">
                <col class="col_url">
                <col class="col_admin">
            </colgroup>
            <thead>
                <tr class="row_webtoon">
                    <th scope="col">이름</th>
                    <th scope="col">작가</th>
                    <th scope="col">장르</th>
                    <th scope="col">연재처</th>
                    <th scope="col">URL</th>
                    <th scope="col">관리</th>
                </tr>
            </thead>
            <tbody>
                <tr class="row_webtoon">
                    <td>웹툰 이름</td>
                    <td>웹툰 작가</td>
                    <td>웹툰 장르</td>
                    <td>웹툰 연재처</td>
                    <td><a href="#">웹툰 URL</a></td>
                    <td>
                        <a href="#" role="button" class="button_admin_webtoon edit">수정</a>
                        <a href="#" role="button" class="button_admin_webtoon delete">삭제</a>
                    </td>
                    <!-- [D] .button_admin_webtoon.edit 클릭 시 아래처럼 넣어 주세요.
                    <td>
                        <label for="webtoon_name" class="blind">웹툰 이름</label>
                        <input type="text" class="input_webtoon" id="webtoon_name" name="input_webtoon_name" placeholder="웹툰 이름">
                    </td>
                    <td>
                        <label for="webtoon_author" class="blind">작가</label>
                        <input type="text" class="input_webtoon" id="webtoon_author" name="input_webtoon_author" placeholder="웹툰 작가">
                    </td>
                    <td>
                        <label for="webtoon_genre" class="blind">장르</label>
                        <input type="text" class="input_webtoon" id="webtoon_genre" name="input_webtoon_genre" placeholder="웹툰 장르">
                    </td>
                    <td>
                        <label for="webtoon_page" class="blind">연재처</label>
                        <input type="text" class="input_webtoon" id="webtoon_page" name="input_webtoon_page" placeholder="웹툰 연재처">
                    </td>
                    <td>
                        <label for="webtoon_url" class="blind">URL</label>
                        <input type="text" class="input_webtoon" id="webtoon_url" name="input_webtoon_url" placeholder="웹툰 URL">
                    </td>
                    <td><a href="#" role="button" class="button_admin_webtoon add">추가</a></td>
                     -->
                </tr>
                <tr class="row_webtoon">
                    <td>웹툰 이름</td>
                    <td>웹툰 작가</td>
                    <td>웹툰 장르</td>
                    <td>웹툰 연재처</td>
                    <td><a href="#">웹툰 URL</a></td>
                    <td>
                        <a href="#" role="button" class="button_admin_webtoon edit">수정</a>
                        <a href="#" role="button" class="button_admin_webtoon delete">삭제</a>
                    </td>
                </tr>
                <tr class="row_webtoon">
                    <td>웹툰 이름</td>
                    <td>웹툰 작가</td>
                    <td>웹툰 장르</td>
                    <td>웹툰 연재처</td>
                    <td><a href="#">웹툰 URL</a></td>
                    <td>
                        <a href="#" role="button" class="button_admin_webtoon edit">수정</a>
                        <a href="#" role="button" class="button_admin_webtoon delete">삭제</a>
                    </td>
                </tr>
                <tr class="row_webtoon">
                    <td>
                        <label for="webtoon_name" class="blind">웹툰 이름</label>
                        <input type="text" class="input_webtoon" id="webtoon_name" name="input_webtoon_name" placeholder="웹툰 이름">
                    </td>
                    <td>
                        <label for="webtoon_author" class="blind">작가</label>
                        <input type="text" class="input_webtoon" id="webtoon_author" name="input_webtoon_author" placeholder="웹툰 작가">
                    </td>
                    <td>
                        <label for="webtoon_genre" class="blind">장르</label>
                        <input type="text" class="input_webtoon" id="webtoon_genre" name="input_webtoon_genre" placeholder="웹툰 장르">
                    </td>
                    <td>
                        <label for="webtoon_page" class="blind">연재처</label>
                        <input type="text" class="input_webtoon" id="webtoon_page" name="input_webtoon_page" placeholder="웹툰 연재처">
                    </td>
                    <td>
                        <label for="webtoon_url" class="blind">URL</label>
                        <input type="text" class="input_webtoon" id="webtoon_url" name="input_webtoon_url" placeholder="웹툰 URL">
                    </td>
                    <td><a href="#" role="button" class="button_admin_webtoon add">추가</a></td>
                </tr>
            </tbody>
        </table>
    </div>
    <script src="src/lib/jquery-3.3.1.js"></script>
    <script src="src/js/app.js"></script>
    
</body>
</html>
