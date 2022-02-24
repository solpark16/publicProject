<%@ page contentType="text/html; charset=utf-8" %>
<jsp:include page="../../templates/common/header.jsp" />

<!-- container -->
<div class="container" id="content">
    <div class="page-header">
        <h2 class="title">이벤트 전체보기</h2>
    </div>
    <!-- contents -->
    <div class="contents">
        <div class="cont-wrap">
            <!-- tab -->
            <div class="tab01 tabOn">
                <ul>
                    <li class="on">
                        <a href="javascript:void(0);">베스트샵 이벤트</a>
                        <div class="tab02 tabOn tabSlide">
                            <ul>
                                <li class="on"><a href="javascript:void(0);">전체</a></li>
                                <li><a href="javascript:void(0);">후기참여</a></li>
                                <li><a href="javascript:void(0);">SNS</a></li>
                                <li><a href="javascript:void(0);">매장</a></li>
                                <li><a href="javascript:void(0);">상담예약</a></li>
                                <li><a href="javascript:void(0);">타임딜</a></li>
                                <li><a href="javascript:void(0);">쿠폰</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="javascript:void(0);">제품 구매 혜택</a>
                        <div class="tab02 tabOn tabSlide">
                            <ul>
                                <li class="on"><a href="javascript:void(0);">전체</a></li>
                                <li><a href="javascript:void(0);">TV/AV</a></li>
                                <li><a href="javascript:void(0);">IT</a></li>
                                <li><a href="javascript:void(0);">주방가전</a></li>
                                <li><a href="javascript:void(0);">생활가전</a></li>
                                <li><a href="javascript:void(0);">에어컨/에어케어</a></li>
                                <li><a href="javascript:void(0);">뷰티디바이스</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- //tab -->
            <!-- sorting-area -->
            <div class="sorting-area">
                <div class="lt">
                    <div class="slt sltBox" data-txt-change="true">
                        <a href="javascript:void(0);" class="btn-slt">진행중인 이벤트</a>
                        <ul>
                            <li><a href="javascript:void(0);">진행중인 이벤트</a></li>
                            <li><a href="javascript:void(0);">종료된 이벤트</a></li>
                        </ul>
                        <select>
                            <option selected>진행중인 이벤트</option>
                            <option>종료된 이벤트</option>
                        </select>
                    </div>
                    <div class="slt sltBox" data-txt-change="true">
                        <a href="javascript:void(0);" class="btn-slt">유형전체</a>
                        <ul>
                            <li><a href="javascript:void(0);">유형전체</a></li>
                            <li><a href="javascript:void(0);">구매혜택</a></li>
                            <li><a href="javascript:void(0);">사은품</a></li>
                            <li><a href="javascript:void(0);">경품</a></li>
                            <li><a href="javascript:void(0);">체험단 신청</a></li>
                        </ul>
                        <select>
                            <option selected>유형전체</option>
                            <option>구매혜택</option>
                            <option>사은품</option>
                            <option>경품</option>
                            <option>체험단 신청</option>
                        </select>
                    </div>
                </div>
                <div class="rt">
                    <span class="check-box small">
                        <input type="checkbox" id="sortingWinner" />
                        <label for="sortingWinner">당첨자 발표</label>
                    </span>
                </div>
            </div>
            <!-- //sorting-area -->
            <!-- event-list -->
            <div class="event-list">
                <ul>
                    <li>
                        <a href="BSF-EVE-DETAIL-COUPON.jsp">
                            <span class="thumb">
                                <span class="icon-timedeal"><img src="../../images/icons/icon-timedeal.svg" alt="타임딜"></span>
                                <img src="../../images/@box-list-thumb-01.jpg" alt="스타일러 이미지">
                            </span>
                            <div class="info">
                                <div class="flag-wrap">
                                    <span class="flag">구매혜택</span>
                                    <span class="flag">타임딜</span>
                                </div>
                                <p class="tit"><span class="blind">이벤트 제목</span>스타일러 5% 할인 쿠폰 24시간 타임딜!</p>
                                <p class="date"><span class="blind">이벤트 기간</span>2022.02.25 ~ 2022.02.26</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="BSF-EVE-DETAIL.jsp">
                            <span class="thumb">
                                <img src="../../images/@box-list-thumb-02.jpg" alt="스타일러 이미지">
                            </span>
                            <div class="info">
                                <div class="flag-wrap">
                                    <span class="flag">사은품</span>
                                    <span class="flag">SNS</span>
                                </div>
                                <p class="tit"><span class="blind">이벤트 제목</span>3월 방문 상담 후기 이벤트</p>
                                <p class="date"><span class="blind">이벤트 기간</span>2022.03.10 ~ 2022.10.31</p>
                            </div>
                        </a>
                    </li>
                    <li class="end-event">
                        <a href="BSF-EVE-DETAIL-END.jsp">
                            <span class="thumb">
                                <span class="end-msg"><em>종료된 이벤트</em></span>
                                <img src="../../images/@box-list-thumb-03.jpg" alt="스타일러 이미지">
                            </span>
                            <div class="info">
                                <div class="flag-wrap">
                                    <span class="flag">사은품</span>
                                    <span class="flag">선착순</span>
                                </div>
                                <p class="tit"><span class="blind">이벤트 제목</span>LG 틔움 신상품 출시 제품증정 이벤트!</p>
                                <p class="date"><span class="blind">이벤트 기간</span>2021.11.15 ~ 2021.11.16</p>
                            </div>
                        </a>
                        <a href="javascript:void(0);" onclick="window.open('../event/BSF-EVE-WINNER-P.jsp', 'new', 'scrollbars=yes, resizable=no, width=912, height=760'); return false" class="btn-link"><span>당첨자 발표</span></a>
                    </li>
                    <li class="end-event">
                        <a href="BSF-EVE-DETAIL-END.jsp">
                            <span class="thumb">
                                <span class="end-msg"><em>종료된 이벤트</em></span>
                                <span class="icon-timedeal"><img src="../../images/icons/icon-timedeal.svg" alt="타임딜"></span>
                                <img src="../../images/@box-list-thumb-04.jpg" alt="스타일러 이미지">
                            </span>
                            <div class="info">
                                <div class="flag-wrap">
                                    <span class="flag">구매혜택</span>
                                    <span class="flag">방문후기</span>
                                </div>
                                <p class="tit"><span class="blind">이벤트 제목</span>LG 베스트샵 방문후기 이벤트!</p>
                                <p class="date"><span class="blind">이벤트 기간</span>2021.11.15 ~ 2021.11.16</p>
                            </div>
                        </a>
                        <a href="javascript:void(0);" onclick="window.open('../event/BSF-EVE-WINNER-P.jsp', 'new', 'scrollbars=yes, resizable=no, width=912, height=760'); return false" class="btn-link"><span>당첨자 발표</span></a>
                    </li>
                </ul>
            </div>
            <!-- //event-list -->
            <!-- no-data -->
            <div class="no-data">
                <p>설정하신 필터에 맞는 이벤트가 없습니다.</p>
            </div>
            <!-- //no-data -->
            <!-- no-data (ty-bg)
            <div class="no-data ty-bg">
                <p>등록된 기획전이 없습니다.</p>
            </div>
            //no-data (ty-bg) -->
            <!-- time-deal (data-flag="false"시 숨김처리) -->
            <div class="point-container bg-tangible02 time-deal" data-flag="true">
                <div class="point-wrap">
                    <p class="txt-time-deal"><a href="BSF-EVE-DETAIL-COUPON.jsp">오전 10시 <strong>&acute;타임딜&acute;</strong>이 시작됩니다</a></p>
                    <div class="today-close">
                        <span class="check-box white">
                            <input type="checkbox" id="chk-today-close" />
                            <label for="chk-today-close">오늘 하루 보지 않기</label>
                        </span>
                        <button type="button" class="btn-today-close">닫기</button>
                    </div>
                </div>
            </div>
            <!-- //time-deal (data-flag="false"시 숨김처리) -->
        </div>
    </div>
    <!-- // contents -->
</div>
<!-- // container -->

<script>

    // time-deal
    $(function(){
        var winWidth = $(window).width(),
            mobile = 767,
            popup = $(".time-deal"),
            bar = $(".mobile-status-bar");

        // position: 초기값
        popup.css("bottom", "-100%");

        // position: load
        function toastPopupLoad(){
            var barHeight = bar.outerHeight();

            if ( popup.attr("data-flag") != "false" ){
                popup.addClass("on");

                if ( winWidth <= mobile ){ popup.css("bottom", barHeight); }
                else { popup.css("bottom", "0"); };
            };
        };

        // close
        function toastPopupClose(){
            $(this).parents(".time-deal").removeClass("on").attr("data-flag", "false").css("bottom", "-100%");
        };
        $(document).on("click", ".btn-today-close", toastPopupClose);

        // load
        $(window).on("load", function(){
            toastPopupLoad();
        });

        // resize
        $(window).on("resize", function(){
            winWidth = $(window).width();
            toastPopupLoad();
        });
    });

</script>

<jsp:include page="../../templates/common/footer.jsp" />