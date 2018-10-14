<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>커넥툰: 설정</title>
    <link rel="stylesheet" href="src/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
</head>
<body>
    <div class="wrap">
        <%@include file="header.jsp" %>
        <section class="section">
                <div class="notice">
                    <a href="#" role="button" class="button_notice">공지사항</a>
                    <ul class="list_notice hidden">
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항</a></li>
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항</a></li>
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항</a></li>
                    </ul>
                </div>
                <div class="clear_fix">
                    <div class="item_config">버전 정보</div>
                    <div class="item_config">1.00/1.21</div>
                </div>
                <div class="clear_fix">
                    <div class="item_config">알림 설정</div>
                    <div class="item_config">
                        <label for="noti_check" class="custom_label">
                            <input type="checkbox" id="noti_check" class="custom_input blind checked" checked>
                            <span class="custom_check"></span>푸시 알림 켜기
                        </label>
                    </div>
                </div>
        </section>
    </div>
    <script src="src/lib/jquery-3.3.1.js"></script>
    <script src="src/js/app.js"></script>
</body>
</html>
