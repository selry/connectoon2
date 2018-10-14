(function (window) {
	'use strict';
	var CONNECTOON = (function() {
		function changeList(e) {
			if ($(e.target).hasClass("button_webtoon")) {
				$(e.target).addClass("selected");
				$(".button_webtoon").not($(this)).removeClass("selected");
				if ($(e.target).hasClass("popular")) {
					$(".list_chart.popular").removeClass("hidden");
					$(".list_chart.recent").addClass("hidden");
				} else if ($(e.target).hasClass("recent")) {
					$(".list_chart.popular").addClass("hidden");
					$(".list_chart.recent").removeClass("hidden");
				}
			} else if ($(e.target).hasClass("button_search_word")) {
				$(e.target).addClass("selected");
				$(".search_button_wrap .button_search_word").not($(this)).removeClass("selected");
				if ($(e.target).hasClass("popular")) {
					$(".list_search.popular").removeClass("hidden");
					$(".list_search.recent").addClass("hidden");
				} else if ($(e.target).hasClass("recent")) {
					$(".list_search.popular").addClass("hidden");
					$(".list_search.recent").removeClass("hidden");
				}
			}
		}

		function show(e) {
			if ($(e.target).hasClass("button_edit_favorite")) {
				$(".button_delete").toggleClass("hidden");
			} else if ($(e.target).hasClass("button_notice")) {
				$(this).next(".list_notice").toggleClass("hidden");
			} else if ($(e.target).hasClass("button_align")) {
				$(this).toggleClass("selected");
				$(e.target).next(".list_align").toggleClass("hidden");
			}
		}

		function deleteItem(e) {
			$(e.target).closest(".item_webtoon").remove();
		}

		function deleteAll(e) {
			if($(".list_search.popular").hasClass("hidden") === false) {
				$(".list_search.popular").empty().append("<li class=\"item_search\">검색 기록이 존재하지 않습니다.</li>");
			} else if($(".list_search.recent").hasClass("hidden") === false) {
				$(".list_search.recent").empty().append("<li class=\"item_search\">검색 기록이 존재하지 않습니다.</li>");
			}
		}

		function changeView(e) {
			if ($(e.target).hasClass("list")) {
				$(".list_webtoon").addClass("list").removeClass("grid");
			} else if ($(e.target).hasClass("grid")) {
				$(".list_webtoon").addClass("grid").removeClass("list");
			}
		}

		function check(e) {
			$(e.target).toggleClass("checked");
		}
		
		function admin() {
    		$(".nav_item:nth-child(2)").html('<a href="admin.jsp" class="nav_link">웹툰 관리</a>');
		}

		function init() {
			$(".wrap")
				.on("click", ".button_webtoon", changeList)
				.on("click", ".button_search_word.clear", deleteAll)
				.on("click", ".button_edit_favorite", show)
				.on("click", ".button_align", show)
				.on("click", ".button_delete", deleteItem)
				.on("click", ".button_view", changeView)
				.on("click", ".custom_input", check);
			
			$(".search_button_wrap")
				.on("click", ".button_search_word", changeList)

			$(".notice")
				.on("click", ".button_notice", show);
			
			$(".button_toggle_admin").on("click", admin);
		}
		
		return {
			init: init
		}
	})();

	CONNECTOON.init();
})(window);
