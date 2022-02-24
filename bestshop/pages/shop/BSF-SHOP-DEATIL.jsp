<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko" class="mdevice">
<head>
    <meta charset="utf-8" />
    <title>LG전자 베스트샵</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <link rel="shortcut icon" href="/bestshop/images/favicon.ico">
    <link rel="stylesheet" href="/bestshop/css/reset.min.css">
    <link rel="stylesheet" href="/bestshop/css/common.css">
    <link rel="stylesheet" href="/bestshop/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="/bestshop/css/base.css">
    <link rel="stylesheet" href="/bestshop/css/mobile.css">
    <link rel="stylesheet" href="/bestshop/css/jy.css">
    <link rel="stylesheet" href="/bestshop/css/haeun.css">
    <script type="text/javascript" src="/bestshop/js/libs/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="/bestshop/js/libs/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="/bestshop/js/common.js"></script>
</head>
<body>

<article id="popup" class="win-popup-wrap win-popup-shop">
    <input type="hidden" id="eventId">
    <header class="pop-header">
        <h1 class="tit"><span>강남본점</span><span>BEST SHOP</span></h1>
        <ul class="list-key-words">
            <li class="on">신규매장</li>
            <li>화상상담</li>
            <li>아이폰</li>
            <li>LX지인</li>
            <li>야간무인</li>
        </ul>
    </header>
    <div class="pop-conts">
        <!-- 매장 소개 -->
        <section class="shop-user">
            <div class="su-wrap">
                <div class="su-thum">
                    <div class="user-thum"><span><img src="../../images/temp_img_iphone.png" alt="&nbsp;" /></span></div>
                </div>
                <div class="su-infor">
                    <h2 class="tit-su">강남본점 지점장 <strong>이동휘</strong></h2>
                    <p class="txt01">LG전자 베스트샵 강남본점을 찾아주셔서 감사합니다.<br /> [ Z:IN 지인 인테리어 입점 ] 친철하고 편안하게 모시겠습니다.</p>
                    <div class="btn-area">
                        <span class="chk-favorite">
                            <input type="checkbox" id="chk-favorite" />
                            <label for="chk-favorite">단골매장등록</label>
                        </span>
                        <div class="tooltip-wrap share layer-click">
                            <a href="#none" class="btn-share">공유하기</a>
                            <div class="tooltip-box fixed-right layer-detail">
                                <strong class="title">공유하기</strong>
                                <div class="sns-wrap">
                                    <ul class="sns-list">
                                        <li><a href="#none" class="ico-btn fb" title="페이스북에 공유하기, 새창열림" data-link-name="facebook">페이스북<span class="blind">으로 페이지 공유하기</span></a></li>
                                        <li><a href="#none" class="ico-btn tw" title="트위터에 공유하기, 새창열림" data-link-name="twitter">트위터<span class="blind">로 페이지 공유하기</span></a></li>
                                        <li><a href="#none" data-url="" class="ico-btn kk" title="카카오톡에 공유하기, 새창열림" data-link-name="kakaotalk">카카오톡<span class="blind">으로 페이지 공유하기</span></a></li>
                                        <li><a href="#none" data-url="" class="ico-btn url" data-link-name="copy_url">URL복사<span class="blind">하기</span></a></li>
                                    </ul>
                                </div>
                                <button type="button" class="btn-close"><span class="blind">닫기</span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- //매장 소개 -->
        <!-- 매장 정보 -->
        <section class="sec-shop">
            <h2 class="tit08">매장 정보</h2>
            <ul class="list-infor">
                <li>
                    <dl class="dbl">
                        <dt>운영시간</dt>
                        <dd>
                            <ul class="llist-infor-detail">
                                <li>
                                    <dl class="dbl-detail">
                                        <dt class="wsp02">평 일</dt>
                                        <dd>10:30 - 20:30</dd>
                                    </dl>
                                </li>
                                <li>
                                    <dl class="dbl-detail">
                                        <dt>토요일</dt>
                                        <dd>10:30 - 20:30</dd>
                                    </dl>
                                </li>
                                <li>
                                    <dl class="dbl-detail">
                                        <dt>토요일</dt>
                                        <dd>10:30 - 20:30</dd>
                                    </dl>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                </li>
                <li>
                    <dl class="dbl">
                        <dt class="wsp01">주 소</dt>
                        <dd>
                            <ul class="llist-infor-detail">
                                <li>
                                    <dl class="dbl-detail">
                                        <dt class="wsp02">지 번</dt>
                                        <dd>
                                            <div class="txt-utill">
                                                <span class="txt">서울특별시 강남구 청담동 86-1 LG전자 베스트샵 강남본점</span>
                                                <button type="button" class="btn-txt-utill">복사</button>
                                            </div>
                                        </dd>
                                    </dl>
                                </li>
                                <li>
                                    <dl class="dbl-detail">
                                        <dt>도로명</dt>
                                        <dd>
                                            <div class="txt-utill">
                                                <span class="txt">서울특별시 강남구 청담동 86-1 LG전자 베스트샵 강남본점</span>
                                                <button type="button" class="btn-txt-utill">복사</button>
                                            </div>
                                        </dd>
                                    </dl>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                </li>
                <li>
                    <dl class="dbl">
                        <dt>전화번호</dt>
                        <dd>
                            <ul class="llist-infor-detail">
                                <li>
                                    <dl class="dbl-detail">
                                        <dt class="wsp02">전 화</dt>
                                        <dd>
                                            <div class="txt-utill">
                                                <span class="txt">02-3448-5191</span>
                                                <a href="tel:02-3448-5191" class="btn-txt-utill pc-hidden">전화걸기</a>
                                            </div>
                                        </dd>
                                    </dl>
                                </li>
                                <li>
                                    <dl class="dbl-detail">
                                        <dt class="wsp02">팩 스</dt>
                                        <dd>
                                            <div class="txt-utill">
                                                <span class="txt">02-3448-5190</span>
                                                <a href="tel:02-3448-5190" class="btn-txt-utill pc-hidden">전화걸기</a>
                                            </div>
                                        </dd>
                                    </dl>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                </li>
            </ul>
        </section>
        <!-- //매장 정보 -->
        <!-- 상담 예약 바로가기 -->
        <section class="sec-shop">
            <h2 class="tit08">상담 예약 바로가기</h2>
            <ul class="list-advice-reservation">
                <li><a href="javascript:void(0);"><span>화상 상담 예약</span></a></li>
                <li><a href="javascript:void(0);"><span>방문 상담 예약</span></a></li>
                <li><a href="javascript:void(0);"><span>아이폰 상담 예약</span></a></li>
                <li><a href="javascript:void(0);"><span>케어십 상담 예약</span></a></li>
                <li><a href="javascript:void(0);"><span>소모품 구매 예약</span></a></li>
            </ul>
        </section>
        <!-- //상담 예약 바로가기 -->
        <!-- 진행중인 이벤트 -->
        <section class="sec-shop">
            <h2 class="tit08">강남본점에서 진행중인 이벤트</h2>
            <div class="swiper event-slide">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide">
                        <a href="javascript:void(0);">
                            <div class="thum"><img src="/bestshop/images/img_main_event01.jpg" alt="&nbsp;" /></div>
                            <div class="infor">
                                <span class="date">2021.10.01~2021.10.31</span>
                                <strong class="tit">스타일러 5% 할인 쿠폰 24시간 타임딜! LG전자 베스트샵 iPhone 상담예약 이벤트</strong>
                            </div>
                        </a>
                    </li>
                    <li class="swiper-slide">
                        <a href="javascript:void(0);">
                            <div class="thum"><img src="/bestshop/images/img_main_event01.jpg" alt="&nbsp;" /></div>
                            <div class="infor">
                                <span class="date">2021.10.01~2021.10.31</span>
                                <strong class="tit">스타일러 5% 할인 쿠폰 24시간 타임딜! LG전자 베스트샵 iPhone 상담예약 이벤트</strong>
                            </div>
                        </a>
                    </li>
                    <li class="swiper-slide">
                        <a href="javascript:void(0);">
                            <div class="thum"><img src="/bestshop/images/img_main_event01.jpg" alt="&nbsp;" /></div>
                            <div class="infor">
                                <span class="date">2021.10.01~2021.10.31</span>
                                <strong class="tit">스타일러 5% 할인 쿠폰 24시간 타임딜! LG전자 베스트샵 iPhone 상담예약 이벤트</strong>
                            </div>
                        </a>
                    </li>
                    <li class="swiper-slide">
                        <a href="javascript:void(0);">
                            <div class="thum"><img src="/bestshop/images/img_main_event01.jpg" alt="&nbsp;" /></div>
                            <div class="infor">
                                <span class="date">2021.10.01~2021.10.31</span>
                                <strong class="tit">스타일러 5% 할인 쿠폰 24시간 타임딜! LG전자 베스트샵 iPhone 상담예약 이벤트</strong>
                            </div>
                        </a>
                    </li>
                    <li class="swiper-slide">
                        <a href="javascript:void(0);">
                            <div class="thum"><img src="/bestshop/images/img_main_event01.jpg" alt="&nbsp;" /></div>
                            <div class="infor">
                                <span class="date">2021.10.01~2021.10.31</span>
                                <strong class="tit">스타일러 5% 할인 쿠폰 24시간 타임딜! LG전자 베스트샵 iPhone 상담예약 이벤트</strong>
                            </div>
                        </a>
                    </li>
                    <li class="swiper-slide">
                        <a href="javascript:void(0);">
                            <div class="thum"><img src="/bestshop/images/img_main_event01.jpg" alt="&nbsp;" /></div>
                            <div class="infor">
                                <span class="date">2021.10.01~2021.10.31</span>
                                <strong class="tit">스타일러 5% 할인 쿠폰 24시간 타임딜! LG전자 베스트샵 iPhone 상담예약 이벤트</strong>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <a href="javascript:void(0);" class="btn-txt-more"><span>전체보기</span></a>
        </section>
        <!-- //진행중인 이벤트 -->
        <!-- 오시는 길 -->
        <section class="sec-shop">
            <h2 class="tit08">오시는 길</h2>
            <!-- 지도영역 -->
            <div class="shop-map">
                <img src="../../images/temp-shop-map.png" alt="&nbsp;" /><!-- 임시이미지 -->
            </div>
            <!-- //지도영역 -->
            <a href="javascript:void(0);" class="btn-txt-more icon-naver-map"><span>네이버 지도로 길찾기</span></a>
            <!-- tab -->
            <div class="tab01 tabOn">
                <ul>
                    <li class="on"><a href="#tab-cont01">버스</a></li>
                    <li><a href="#tab-cont02">지하철</a></li>
                    <li><a href="#tab-cont03">자가용</a></li>
                </ul>
            </div>
            <!-- //tab -->
            <div class="tab-cont">
                <div id="tab-cont01" class="on">
                    <dl class="bullet-list">
                        <dt class="b-tit-s">일지아트홀 · 압구정동노인복지센터</dt>
                        <dd class="b-txt">지선 4312</dd>
                        <dd class="b-txt">간선 145, 301, 440, 472</dd>
                        <dd class="b-txt">직행 9407, 9507, 9607</dd>
                    </dl>
                    <dl class="bullet-list">
                        <dt class="b-tit-s">씨네시티 앞</dt>
                        <dd class="b-txt">지선 3011, 4212, 4419</dd>
                        <dd class="b-txt">간선 145, 342</dd>
                    </dl>
                </div>
                <div id="tab-cont02" class="">
                    <dl class="bullet-list">
                        <dt class="b-tit">지하철로 오시는길</dt>
                        <dd class="b-txt">지하철 1,4호선 서울역 10번 출구 130m</dd>
                    </dl>
                </div>
                <div id="tab-cont03" class="">
                    <dl class="bullet-list">
                        <dt class="b-tit">자가용으로 오시는길</dt>
                        <dd class="b-txt">네비게이션에 '베스트샵 서울역빌딩점(서울 중구 후암로 98)' 검색 후 방문</dd>
                    </dl>
                </div>
            </div>
        </section>
        <!-- //오시는 길 -->
        <!-- 매장 사진 -->
        <section class="sec-shop">
            <h2 class="tit08">매장 사진</h2>
            <div class="swiper list-shop-detail">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide"><img src="../../images/temp-thum-shop-detail.png" alt="&nbsp;" /></li>
                    <li class="swiper-slide"><img src="../../images/temp-thum-shop-detail.png" alt="&nbsp;" /></li>
                    <li class="swiper-slide"><img src="../../images/temp-thum-shop-detail.png" alt="&nbsp;" /></li>
                </ul>
            </div>
        </section>
        <!-- //매장 사진 -->
        <div class="btn-area m-full-flex">
            <button type="button" class="btn btnPopCancel">닫기</button>
        </div>
    </div>
    <button type="button" class="win-btn-close ui_modal_close" onclick="if($('#event-modal').length == 0) javascript:self.close();"><span class="blind">닫기</span></button>
</article>

<script>
    $(function(){
        var storSlide = new Swiper(".event-slide", {
            speed: 800,
            slidesPerView: "auto",
            spaceBetween: 16,
            paginationClickable: true,
            /*
            breakpoints: {
                768: {
                    slidesPerView: 1.3,
                },
            },
            */
        });
    });
</script>

</body>
</html>