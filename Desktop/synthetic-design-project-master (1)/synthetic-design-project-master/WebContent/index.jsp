<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>커넥툰: 홈</title>
    <link rel="stylesheet" href="src/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
</head>
<body>
    <div class="wrap">
        <%@include file="header.jsp" %>
        <section class="section">
            <div class="clear_fix">
                <div class="section_inner clear_fix">
                    <div class="login_wrap">
                        <%@include file="form_login.jsp" %>
                    </div>
                    <div class="category_wrap">
                        <h2 class="blind">카테고리</h2>
                        <form name="category_form">
                            <fieldset>
                                <legend class="blind">
                                	카테고리 선택
                                </legend>
                                <ul class="list_category">
                                    <li class="item_category">
                                        <ul class="list_inner_category clear_fix">
                                            <li class="item_inner_category">
                                                <input type="checkbox" id="story" class="category_input">
                                                <label for="story" class="category_label">스토리</label>
                                            </li>
                                            <li class="item_inner_category">
                                                <input type="checkbox" id="episode" class="category_input">
                                                <label for="episode" class="category_label">에피소드</label>
                                            </li>
                                            <li class="item_inner_category">
                                                <input type="checkbox" id="omnibus" class="category_input">
                                                <label for="omnibus" class="category_label">옴니버스</label>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="item_category">
                                        <ul class="list_inner_category clear_fix">
                                            <li class="item_inner_category">
                                                <input type="checkbox" id="daily" class="category_input">
                                                <label for="daily" class="category_label">일상</label>
                                            </li>
                                            <li class="item_inner_category">
                                                <input type="checkbox" id="gag" class="category_input">
                                                <label for="gag" class="category_label">개그</label>
                                            </li>
                                            <li class="item_inner_category">
                                                <input type="checkbox" id="fantasy" class="category_input">
                                                <label for="fantasy" class="category_label">판타지</label>
                                            </li>
                                            <li class="item_inner_category">
                                                <input type="checkbox" id="action" class="category_input">
                                                <label for="action" class="category_label">액션</label>
                                            </li>
                                            <li class="item_inner_category">
                                                <input type="checkbox" id="romance" class="category_input">
                                                <label for="romance" class="category_label">순정</label>
                                            </li>
                                            <li class="item_inner_category">
                                                <input type="checkbox" id="academy" class="category_input">
                                                <label for="academy" class="category_label">학원</label>
                                            </li>
                                            <li class="item_inner_category">
                                                <input type="checkbox" id="history" class="category_input">
                                                <label for="history" class="category_label">역사</label>
                                            </li>
                                            <li class="item_inner_category">
                                                <input type="checkbox" id="thriller" class="category_input">
                                                <label for="thriller" class="category_label">스릴러</label>
                                            </li>
                                            <li class="item_inner_category">
                                                <input type="checkbox" id="bl" class="category_input">
                                                <label for="bl" class="category_label">BL</label>
                                            </li>
                                            <li class="item_inner_category">
                                                <input type="checkbox" id="gl" class="category_input">
                                                <label for="gl" class="category_label">GL</label>
                                            </li>
                                            <li class="item_inner_category">
                                                <input type="checkbox" id="adult" class="category_input">
                                                <label for="adult" class="category_label">성인</label>
                                            </li>
                                            <li class="item_inner_category">
                                                <button type="submit" class="button_search_category">검색</button>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </fieldset>
                        </form>
                    </div>
                </div>
                <div class="notice_wrap">
                    <a href="#" role="button" class="button_notice">공지사항</a>
                    <ul class="list_notice">
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항공지사항</a></li>
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항</a></li>
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항</a></li>
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항</a></li>
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항</a></li>
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항</a></li>
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항</a></li>
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항</a></li>
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항</a></li>
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항</a></li>
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항</a></li>
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항</a></li>
                        <li class="item_notice"><a href="#" class="link_notice elip1">공지사항</a></li>
                    </ul>
                </div>
            </div>
            <div class="webtoon_wrap">
                <div class="button_wrap clear_fix">
                    <a href="#" role="button" class="button_webtoon popular selected">인기 웹툰</a>
                    <a href="#" role="button" class="button_webtoon recent">최신 웹툰</a>
                </div>
                <div class="list_chart popular">
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">1</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">인기 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">2</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">인기 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">3</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">인기 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">4</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">인기 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">5</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">인기 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">6</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">인기 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">7</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">인기 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">8</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">인기 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">9</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">인기 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">10</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">인기 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                </div>
                <div class="list_chart recent hidden">
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">1</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">최신 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">2</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">최신 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">3</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">최신 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">4</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">최신 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">5</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">최신 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">6</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">최신 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">7</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">최신 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">8</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">최신 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">9</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">최신 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                    <div class="item_chart clear_fix">
                        <div class="item_column_chart">10</div>
                        <div class="item_column_chart wide"><a href="#" class="link_chart">최신 웹툰</a></div>
                        <div class="item_column_chart wide">웹툰 작가</div>
                        <div class="item_column_chart"><a href="#" class="button_favorite"><span class="blind">즐겨찾기</span></a></div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script src="src/lib/jquery-3.3.1.js"></script>
    <script src="src/js/app.js"></script>
</body>
</html>