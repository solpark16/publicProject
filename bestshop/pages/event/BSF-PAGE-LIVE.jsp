<%@ page contentType="text/html; charset=utf-8" %>
<jsp:include page="../../templates/common/header.jsp" />

<!-- container -->
<div class="container" id="content">
    <div class="page-header">
        <h2 class="title">베샵 더 라이브</h2>
    </div>
    <!-- contents -->
    <div class="contents">
        <div class="cont-wrap w100">
            <!-- 이벤트배너 -->
            <div class="img-slide-wrap">
                <div class="swiper img-slide">
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide slide-bg" style="background-image: url('../../images/slide-event-live.png');">
                            <div class="li-wrap">
                                <dl class="time-deal-countdown ty-small">
                                    <dt><span>남은시간</span></dt>
                                    <dd>
                                        <div style="display: none;"><span class="days">0</span>일</div>
                                        <div><span class="hours">12</span>시간</div>
                                        <div><span class="minutes">00</span>분</div>
                                        <div><span class="seconds">00</span>초</div>
                                    </dd>
                                </dl>
                                <dfn class="tit">강남본점 리뉴얼 오픈 매장소개 LIVE</dfn>
                                <span class="date">2202.02.14 오후 7시</span>
                                <span class="txt">라이브에서 더 많은 혜택을 만나보세요!</span>
                                <div class="btn-area"><a href="javascript:void(0);" class="btn border-white">자세히 보기</a></div>
                            </div>
                        </li>
                        <li class="swiper-slide slide-bg" style="background-image: url('../../images/slide-event-live.png');">
                            <div class="li-wrap">
                                <strong class="flag-on-air">On-Air</strong>
                                <dfn class="tit">강남본점 리뉴얼 오픈 매장소개 LIVE</dfn>
                                <span class="date">2202.02.14 오후 7시</span>
                                <span class="txt">라이브에서 더 많은 혜택을 만나보세요!</span>
                                <div class="btn-area"><a href="javascript:void(0);" class="btn border-white">자세히 보기</a></div>
                            </div>
                        </li>
                        <li class="swiper-slide slide-bg" style="background-image: url('../../images/slide-event-live.png');">
                            <div class="li-wrap">
                                <dfn class="tit">강남본점 리뉴얼 오픈 매장소개 LIVE</dfn>
                                <span class="date">2202.02.14 오후 7시</span>
                                <span class="txt">라이브에서 더 많은 혜택을 만나보세요!</span>
                                <div class="btn-area"><a href="javascript:void(0);" class="btn border-white">자세히 보기</a></div>
                            </div>
                        </li>
                    </ul>
                    <div class="slide-navi">
                        <div class="slide-navi-detail">
                            <div class="swiper-pager">
                                <button type="button" class="slideBtn btn-prev">이전 슬라이드</button>
                                <div class="pager-fraction"></div>
                                <button type="button" class="slideBtn btn-next">다음 슬라이드</button>
                            </div>
                            <div class="swiper-auto">
                                <button type="button" class="slideBtn btn-play">슬라이드 재생</button>
                                <button type="button" class="slideBtn btn-stop active">슬라이드 일시정지</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //이벤트배너 -->
            <div class="notice-bar">
                <p class="txt-notice">사전 알림 신청으로 베스트샵 Live의 특별한 혜택을 놓치지 마세요.</p>
                <a href="#popup-alert-login" class="btn border btnPopOpen">알림 신청</a>
            </div>
            <div class="sec-area">
                <section class="sec">
                    <div class="sec-wrap">
                        <div class="tit-area-sec">
                            <h3 class="tit01">Live 이벤트</h3>
                        </div>
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
                            </ul>
                            <!-- 더보기 -->
                            <div class="btn-area floating-rt">
                                <a href="BSF-EVE-BSTAB.jsp" class="btn-txt-more"><span>전체보기</span></a>
                            </div>
                            <!-- //더보기 -->
                        </div>
                        <!-- //event-list -->
                    </div>
                </section>
                <section class="sec">
                    <div class="sec-wrap">
                        <div class="tit-area-sec">
                            <h3 class="tit01">Live 다시보기</h3>
                        </div>
                        <!-- live-list -->
                        <div class="live-list">
                            <div class="total-list-area">
                                <p class="txt-total-list"><strong>총 6개</strong></p>
                            </div>
                            <ul>
                                <li>
                                    <a href="BSF-EVE-MEDIA-LIST-LIVE.jsp">
                                        <div class="thum">
                                            <dl class="play-time"><dt class="blind">재생시간</dt><dd>01:30</dd></dl>
                                            <img src="../../images/temp-live-list.png" alt="&nbsp;" />
                                        </div>
                                        <div class="infor"><strong class="tit">[더현대 서울] 1주년 기념 매장 소개 Live! 1주년 기념 매장 소개 Live! 기념 매장 소개 Live!</strong></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="BSF-EVE-MEDIA-LIST-LIVE.jsp">
                                        <div class="thum">
                                            <dl class="play-time"><dt class="blind">재생시간</dt><dd>01:30</dd></dl>
                                            <img src="../../images/temp-live-list.png" alt="&nbsp;" />
                                        </div>
                                        <div class="infor"><strong class="tit">[더현대 서울] 1주년 기념 매장 소개 Live! 1주년 기념 매장 소개 Live! 기념 매장 소개 Live!</strong></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="BSF-EVE-MEDIA-LIST-LIVE.jsp">
                                        <div class="thum">
                                            <dl class="play-time"><dt class="blind">재생시간</dt><dd>01:30</dd></dl>
                                            <img src="../../images/temp-live-list.png" alt="&nbsp;" />
                                        </div>
                                        <div class="infor"><strong class="tit">[더현대 서울] 1주년 기념 매장 소개 Live! 1주년 기념 매장 소개 Live! 기념 매장 소개 Live!</strong></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="BSF-EVE-MEDIA-LIST-LIVE.jsp">
                                        <div class="thum">
                                            <dl class="play-time"><dt class="blind">재생시간</dt><dd>01:30</dd></dl>
                                            <img src="../../images/temp-live-list.png" alt="&nbsp;" />
                                        </div>
                                        <div class="infor"><strong class="tit">[더현대 서울] 1주년 기념 매장 소개 Live! 1주년 기념 매장 소개 Live! 기념 매장 소개 Live!</strong></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="BSF-EVE-MEDIA-LIST-LIVE.jsp">
                                        <div class="thum">
                                            <dl class="play-time"><dt class="blind">재생시간</dt><dd>01:30</dd></dl>
                                            <img src="../../images/temp-live-list.png" alt="&nbsp;" />
                                        </div>
                                        <div class="infor"><strong class="tit">[더현대 서울] 1주년 기념 매장 소개 Live! 1주년 기념 매장 소개 Live! 기념 매장 소개 Live!</strong></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="BSF-EVE-MEDIA-LIST-LIVE.jsp">
                                        <div class="thum">
                                            <dl class="play-time"><dt class="blind">재생시간</dt><dd>01:30</dd></dl>
                                            <img src="../../images/temp-live-list.png" alt="&nbsp;" />
                                        </div>
                                        <div class="infor"><strong class="tit">[더현대 서울] 1주년 기념 매장 소개 Live! 1주년 기념 매장 소개 Live! 기념 매장 소개 Live!</strong></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="BSF-EVE-MEDIA-LIST-LIVE.jsp">
                                        <div class="thum">
                                            <dl class="play-time"><dt class="blind">재생시간</dt><dd>01:30</dd></dl>
                                            <img src="../../images/temp-live-list.png" alt="&nbsp;" />
                                        </div>
                                        <div class="infor"><strong class="tit">[더현대 서울] 1주년 기념 매장 소개 Live! 1주년 기념 매장 소개 Live! 기념 매장 소개 Live!</strong></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="BSF-EVE-MEDIA-LIST-LIVE.jsp">
                                        <div class="thum">
                                            <dl class="play-time"><dt class="blind">재생시간</dt><dd>01:30</dd></dl>
                                            <img src="../../images/temp-live-list.png" alt="&nbsp;" />
                                        </div>
                                        <div class="infor"><strong class="tit">[더현대 서울] 1주년 기념 매장 소개 Live! 1주년 기념 매장 소개 Live! 기념 매장 소개 Live!</strong></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="BSF-EVE-MEDIA-LIST-LIVE.jsp">
                                        <div class="thum">
                                            <dl class="play-time"><dt class="blind">재생시간</dt><dd>01:30</dd></dl>
                                            <img src="../../images/temp-live-list.png" alt="&nbsp;" />
                                        </div>
                                        <div class="infor"><strong class="tit">[더현대 서울] 1주년 기념 매장 소개 Live! 1주년 기념 매장 소개 Live! 기념 매장 소개 Live!</strong></div>
                                    </a>
                                </li>
                                <li>
                                    <a href="BSF-EVE-MEDIA-LIST-LIVE.jsp">
                                        <div class="thum">
                                            <dl class="play-time"><dt class="blind">재생시간</dt><dd>01:30</dd></dl>
                                            <img src="../../images/temp-live-list.png" alt="&nbsp;" />
                                        </div>
                                        <div class="infor"><strong class="tit">[더현대 서울] 1주년 기념 매장 소개 Live! 1주년 기념 매장 소개 Live! 기념 매장 소개 Live!</strong></div>
                                    </a>
                                </li>
                            </ul>
                            <!-- 더보기 -->
                            <div class="btn-area center">
                                <a href="javascript:void(0);" class="btn border s02 more"><span>더보기</span></a>
                            </div>
                            <!-- //더보기 -->
                        </div>
                        <!-- //live-list -->
                    </div>
                </section>
            </div>
        </div>
    </div>
    <!-- // contents -->
</div>
<!-- // container -->

<!-- dim -->
<div class="dim"> </div>
<!-- //dim -->

<!-- 팝업: (로그인) -->
<div class="popup alert" id="popup-alert-login">
    <div class="pop-wrap">
        <div class="pop-cont">
            <p class="txt-pop01">
                <span class="block">로그인하시겠습니까?</span>
            </p>
        </div>
        <div class="btn-area m-full-flex">
            <button type="button" class="btn s01 gray btnPopCancel">취소</button>
            <a href="#none" class="btn s01">로그인</a>
        </div>
    </div>
</div>
<!-- 팝업: (로그인) -->

<!-- 팝업: (알림 신청 완료) -->
<div class="popup alert" id="popup-alert-notice-apply-complete">
    <div class="pop-wrap">
        <div class="pop-cont">
            <p class="txt-pop01">
                <span class="block">알림 신청이 완료되었습니다.<br /> 방송 10분 전 SMS가 발송됩니다.</span>
            </p>
        </div>
        <div class="btn-area m-full-flex">
            <button type="button" class="btn s01 btnPopCancel">확인</button>
        </div>
    </div>
</div>
<!-- 팝업: (알림 신청 완료) -->

<!-- 팝업: (알림 신청 취소) -->
<div class="popup alert" id="popup-alert-notice-apply-cancel">
    <div class="pop-wrap">
        <div class="pop-cont">
            <p class="txt-pop01">
                <span class="block">알림 신청을 취소하시겠습니까?</span>
            </p>
        </div>
        <div class="btn-area m-full-flex">
            <button type="button" class="btn s01 gray btnPopCancel">취소</button>
            <button type="button" class="btn s01">해제하기</button>
        </div>
    </div>
</div>
<!-- 팝업: (알림 신청 취소) -->

<script>
    // 슬라이드
    var imgSwiper = new Swiper(".img-slide", {
        speed : 800,
        slidesPerView: 1,
        autoplay: {
            delay:5000
        },
        pagination: {
            el: ".img-slide .slide-navi .pager-fraction",
            type: "fraction"
        },
        navigation: {
            nextEl: ".img-slide .slide-navi .slideBtn.btn-next",
            prevEl: ".img-slide .slide-navi .slideBtn.btn-prev"
        }
    });

    // 슬라이드 (autoplay control)
    $('.img-slide .swiper-auto > button').on('click', function(){
        $('.img-slide .swiper-auto > button').toggleClass('active');

        if ($(this).hasClass('btn-play')){
            imgSwiper.autoplay.start();
        } 
        else {
            imgSwiper.autoplay.stop();
        };
    });

    // countdown
    $(function(){
        var countWrap = $(".time-deal-countdown dd");

        countWrap.each(function() {
            var obj = this,
				d = parseInt($(obj).find(".days").text()) * 86400,
		        h = parseInt($(obj).find(".hours").text()) * 3600,
			    m = parseInt($(obj).find(".minutes").text()) * 60,
				s = parseInt($(obj).find(".seconds").text()),
	            number = d + h + m + s;

			$(obj).attr("data-sec", number);

            getDateCount(obj);
        });

        function getDateCount(obj){
            var second = $(obj).attr("data-sec");

            $(obj).attr("data-timer", setInterval(function() {
                setTimeSaleTimer($(obj), second);
                second -= 1;
            }, 1000));
        };

        function setTimeSaleTimer(obj, objSec) {
            var days = parseInt( objSec / 86400 );
            var hours = parseInt( objSec / 3600 ) % 24;
            var minutes = parseInt( objSec / 60 ) % 60;
            var seconds = objSec % 60;

            if (days == 0 && hours == 0 && minutes == 0 && seconds == 0) {
                clearInterval($(obj).attr("data-timer"));
                return false;
            };

            if (hours == 0) {
                if (days > 0){
                    days --;
                    hours = 24;
                };
            };

            if (minutes == 0) {
                if (hours > 0){
                    hours --;
                    minutes = 60;
                };
            };

            if (seconds == 0) {
                if (minutes > 0){
                    minutes --;
                    seconds = 59;
                };
            }
            else {
                seconds --;
            };

            $(obj).find(".days").text(days);
            $(obj).find(".hours").text(hours);
            $(obj).find(".minutes").text(minutes);
            $(obj).find(".seconds").text(seconds);
        };
    });
</script>

<jsp:include page="../../templates/common/footer.jsp" />