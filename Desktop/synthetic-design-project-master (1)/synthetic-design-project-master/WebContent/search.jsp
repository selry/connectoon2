<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>커넥툰: 검색</title>
    <link rel="stylesheet" href="src/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
</head>
<body>
    <div class="wrap">
        <%@include file="header.jsp" %>
        <section class="section search_wrap">
            <div class="search_button_wrap clear_fix">
                <a href="#" role="button" class="button_search_word popular selected">인기 검색어</a>
                <a href="#" role="button" class="button_search_word recent">최근 검색어</a>
            </div>
            <ul class="list_search popular">
                <li class="item_search">인기 검색어1</li>
                <li class="item_search">인기 검색어2</li>
                <li class="item_search">인기 검색어3</li>
                <li class="item_search">인기 검색어4</li>
                <li class="item_search">인기 검색어5</li>
                <li class="item_search">인기 검색어6</li>
                <li class="item_search">인기 검색어7</li>
                <li class="item_search">인기 검색어8</li>
                <li class="item_search">인기 검색어9</li>
                <li class="item_search">인기 검색어10</li>
                <li class="item_search">인기 검색어11</li>
                <li class="item_search">인기 검색어12</li>
                <li class="item_search">인기 검색어13</li>
                <li class="item_search">인기 검색어14</li>
                <li class="item_search">인기 검색어15</li>
                <li class="item_search">인기 검색어16</li>
                <li class="item_search">인기 검색어17</li>
                <li class="item_search">인기 검색어18</li>
                <li class="item_search">인기 검색어19</li>
                <li class="item_search">인기 검색어20</li>
            </ul>
            <ul class="list_search recent hidden">
                <li class="item_search">최근 검색어1</li>
                <li class="item_search">최근 검색어2</li>
                <li class="item_search">최근 검색어3</li>
                <li class="item_search">최근 검색어4</li>
                <li class="item_search">최근 검색어5</li>
                <li class="item_search">최근 검색어6</li>
                <li class="item_search">최근 검색어7</li>
                <li class="item_search">최근 검색어8</li>
                <li class="item_search">최근 검색어9</li>
                <li class="item_search">최근 검색어10</li>
                <li class="item_search">최근 검색어11</li>
                <li class="item_search">최근 검색어12</li>
                <li class="item_search">최근 검색어13</li>
                <li class="item_search">최근 검색어14</li>
                <li class="item_search">최근 검색어15</li>
                <li class="item_search">최근 검색어16</li>
                <li class="item_search">최근 검색어17</li>
                <li class="item_search">최근 검색어18</li>
                <li class="item_search">최근 검색어19</li>
                <li class="item_search">최근 검색어20</li>
            </ul>
            <a href="#" role="button" class="button_search_word clear">검색 기록 모두 삭제</a>
        </section>
    </div>
    <script src="src/lib/jquery-3.3.1.js"></script>
    <script src="src/js/app.js"></script>
</body>
</html>