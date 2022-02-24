<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="ko">

    <head>
        <meta charset="utf-8" />
        <title>LG전자 베스트샵</title>
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta content="IE=edge" http-equiv="X-UA-Compatible">
        <meta name="description" content="LG전자에서 진행되는 이벤트, 기획전, 카드 혜택 그리고 LG전자 멤버십까지 다양한 혜택 정보를 확인하실 수 있습니다.">
        <meta name="twitter:card" content="summary">
        <meta property="og:locale" content="ko_KR">
        <meta property="og:site_name" content="LG전자 BEST SHOP">
        <meta property="og:type" content="website">
        <meta property="og:title" content="LG전자 BEST SHOP">
        <meta property="og:description" content="">
        <link rel="shortcut icon" href="/bestshop/images/favicon.ico">
        <link rel="stylesheet" href="/bestshop/css/reset.min.css">
        <link rel="stylesheet" href="/bestshop/css/common.css">
        <link rel="stylesheet" href="/bestshop/css/swiper-bundle.min.css">
        <link rel="stylesheet" href="/bestshop/css/jquery-ui.min.css">
        <link rel="stylesheet" href="/bestshop/css/jquery.mCustomScrollbar.css">
        <link rel="stylesheet" href="/bestshop/css/base.css">
        <link rel="stylesheet" href="/bestshop/css/mobile.css">
        <link rel="stylesheet" href="/bestshop/css/jy.css">
        <link rel="stylesheet" href="/bestshop/css/haeun.css">
        <link rel="stylesheet" href="/bestshop/css/sylee.css">
        <link rel="stylesheet" href="/bestshop/css/main.css">
        <script type="text/javascript" src="/bestshop/js/libs/jquery-3.6.0.min.js"></script>
        <script type="text/javascript" src="/bestshop/js/libs/jquery-ui.min.js"></script>
        <script type="text/javascript" src="/bestshop/js/libs/swiper-bundle.min.js"></script>
        <script type="text/javascript" src="/bestshop/js/libs/jquery.mCustomScrollbar.concat.min.js"></script>
        <script type="text/javascript" src="/bestshop/js/common.js"></script>
    </head>

    <body>
    <div class="wrap">
        <!-- s: HEADER -->
        <header class="header">

        <!-- s: 바로가기 -->
        <div class="skip-content">
            <a href="#content" id="skipToContent">본문으로 바로가기</a>
        </div>
        <!-- e: 바로가기 -->

        <!-- s: pc head wrap -->
        <div class="header-wrap pc">
            <h1 class="logo">
            <a href="/bestshop"><img src="/bestshop/images/icons/logo-lge.svg" alt="LG전자"><span>BEST SHOP</span></a>
            </h1>

            <!-- s: utility -->
            <div class="utility">
            <div class="my-tooltip layer-wrap">
                <a href="javascript:void(0);"><span class="blind">마이 툴팁</span></a>
                <div class="my-tooltip-detail layer-detail">
                <div class="my-tooltip-layer">
                    <!-- s: 로그인 전
                    <ul>
                    <li><a href="javascript:void(0);">로그인</a></li>
                    <li><a href="javascript:void(0);">회원가입</a></li>
                    <li><a href="javascript:void(0);">멤버십 혜택</a></li>
                    </ul>
                    e: 로그인 전 -->

                    <!-- s: 로그인 후 -->
                    <ul>
                    <li><a href="javascript:void(0);">로그아웃</a></li>
                    </ul>
                    <ul>
                    <li><a href="javascript:void(0);">매장 상담 예약 조회</a></li>
                    <li><a href="javascript:void(0);">제품 배송 조회</a></li>
                    <li><a href="javascript:void(0);">보유 쿠폰 조회</a></li>
                    <li><a href="javascript:void(0);">포인트 조회</a></li>
                    </ul>
                    <!-- e: 로그인 후 -->
                </div>
                </div>
            </div><!-- //.my-tooltip -->

            <!-- s: utility -->
            <div class="util">
                <div class="about-company layer-wrap">
                <a href="https://www.lge.co.kr/company/main">회사소개</a>
                <div class="about-company-layer layer-detail">
                    <ul>
                    <li><a href="https://www.lge.co.kr/company/sustainable/ceoMessage">CEO 인사말</a></li>
                    <li><a href="https://www.lge.co.kr/company/info/history">연혁</a></li>
                    <li><a href="https://www.lge.co.kr/company/info/philosophy">경영이념</a></li>
                    </ul>
                </div>
                </div>
                <div class="outer-link">
                <ul>
                    <li><a href="https://www.lge.co.kr/kr/business" class="business" target="_blank" title="새 창 열림">비즈니스</a></li>
                    <li><a href="https://www.lge.co.kr" class="bestshop" target="_blank" title="새 창 열림">LG전자 대표사이트</a></li>
                </ul>
                </div>
            </div>
            </div>
            <!-- e: utility -->

            <!-- s: mega gnb -->
            <div class="header-bottom">
            <h2 class="blind">웹사이트 전체메뉴</h2>
            <div class="menu-wrap">
                <ul>
                <li>
                    <a class="depth1-tit" href="javascript:void(0);">매장안내</a>
                    <div class="menu-category-layer">
                    <div class="menu-category-inner">
                        <h4>매장안내</h4>
                        <ul class="cate-menu">
                        <li><a href="/bestshop/pages/shop/BSF-SHOP-LIST.jsp">매장 찾기</a></li>
                        <li><a href="/bestshop/pages/shop/BSF-SHOP-OPEN-LIST.jsp">신규 오픈 매장</a></li>
                        <li><a href="/bestshop/pages/shop/BSF-SHOP-IPHONE.jsp">아이폰 판매 매장</a></li>
                        <li><a href="javascript:void(0);" target="_blank" title="새 창 열림">야간 무인 매장 안내</a></li>
                        <li><a href="javascript:void(0);" target="_blank" title="새 창 열림">서비스 센터 찾기</a></li>
                        </ul>

                        <!-- s: bnr -->
                        <div class="bnr-box">
                        <div class="bnr-block megaBnr">
                            <ul class="swiper-wrapper">
                            <li class="swiper-slide"><a href="javascript:void(0);"><img src="/bestshop/images/@img-banner-sample-01.jpg" alt="매장 상담 예약 이벤트"></a></li>
                            </ul>
                            <div class="swiper-navi">
                            <div class="swiper-pager"></div>
                            <button type="button" class="slideBtn btn-prev">이전 슬라이드</button>
                            <button type="button" class="slideBtn btn-next">다음 슬라이드</button>
                            </div>
                            <div class="bnr-desc">매장 상담 예약 이벤트</div>
                        </div>
                        <div class="bnr-block megaBnr">
                            <ul class="swiper-wrapper">
                            <li class="swiper-slide"><a href="javascript:void(0);"><img src="/bestshop/images/@img-banner-sample-02.jpg" alt="이달의 베스트샵 혜택"></a></li>
                            <li class="swiper-slide"><a href="javascript:void(0);"><img src="/bestshop/images/@img-banner-sample-02.jpg" alt="이달의 베스트샵 혜택"></a></li>
                            </ul>
                            <div class="swiper-navi">
                            <div class="swiper-pager"></div>
                            <button type="button" class="slideBtn btn-prev">이전 슬라이드</button>
                            <button type="button" class="slideBtn btn-next">다음 슬라이드</button>
                            </div>
                            <div class="bnr-desc">이달의 베스트샵 혜택</div>
                        </div>
                        <div class="bnr-block megaBnr">
                            <ul class="swiper-wrapper">
                            <li class="swiper-slide"><a href="javascript:void(0);"><img src="/bestshop/images/@img-banner-sample-03.jpg" alt="멤버십 혜택"></a></li>
                            <li class="swiper-slide"><a href="javascript:void(0);"><img src="/bestshop/images/@img-banner-sample-03.jpg" alt="멤버십 혜택"></a></li>
                            <li class="swiper-slide"><a href="javascript:void(0);"><img src="/bestshop/images/@img-banner-sample-03.jpg" alt="멤버십 혜택"></a></li>
                            </ul>
                            <div class="swiper-navi">
                            <div class="swiper-pager"></div>
                            <button type="button" class="slideBtn btn-prev">이전 슬라이드</button>
                            <button type="button" class="slideBtn btn-next">다음 슬라이드</button>
                            </div>
                            <div class="bnr-desc">멤버십 혜택</div>
                        </div>
                        </div>        
                        <!-- e: bnr -->
                    </div>
                    </div><!-- //.menu-category-layer -->
                </li>
                <li>
                    <a class="depth1-tit" href="javascript:void(0);">매장 상담 예약</a>
                    <div class="menu-category-layer">
                    <div class="menu-category-inner">
                        <h4>매장 상담 예약</h4>
                        <ul class="cate-menu">
                        <li><a href="/bestshop/pages/reservation/BSF-RES-VISIT.jsp">방문 상담 예약</a></li>
                        <li><a href="/bestshop/pages/reservation/BSF-RES-VIDEO.jsp">화상 상담 예약</a></li>
                        <li><a href="/bestshop/pages/reservation/BSF-CARE-CA-RES.jsp">케어십 상담 예약</a></li>
                        <li><a href="/bestshop/pages/reservation/BSF-CARE-EX-RES.jsp">소모품 구매 예약</a></li>
                        <li><a href="/bestshop/pages/reservation/BSF-RES-INQ.jsp">상담 예약 조회</a></li>
                        </ul>
                    </div>
                    </div><!-- //.menu-category-layer -->
                </li>
                <li>
                    <a class="depth1-tit" href="/bestshop/pages/event/BSF-EVE-BSTAB.jsp">이벤트</a>
                    <div class="menu-category-layer">
                    <div class="menu-category-inner">
                        <h4>이벤트</h4>
                        <ul class="cate-menu">
                        <li><a href="/bestshop/pages/event/BSF-EVE-BSTAB.jsp">이벤트 전체 보기</a></li>
                        <li>
                            <a href="/bestshop/pages/event/BSF-EVE-APT-INFO.jsp">아파트 입주 이벤트</a>
                            <ul>
                            <li><a href="/bestshop/pages/event/BSF-EVE-APT-INFO.jsp">혜택안내</a></li>
                            <li><a href="/bestshop/pages/event/BSF-EVE-APT-LIST.jsp">행사 아파트 리스트</a></li>
                            <li><a href="/bestshop/pages/event/BSF-EVE-FAIR-LIST.jsp">박람회 일정</a></li>
                            </ul>
                        </li>
                        <li class="full"><a href="/bestshop/pages/event/BSF-EVE-WED-INFO.jsp">혼수 이벤트</a></li>
                        <li class="full"><a href="/bestshop/pages/event/BSF-EVE-MEDIA-LIST.jsp">홍보영상</a></li>
                        </ul>
                    </div>
                    </div><!-- //.menu-category-layer -->
                </li>
                <li>
                    <a class="depth1-tit" href="javascript:void(0);">혜택 안내</a>
                    <div class="menu-category-layer">
                    <div class="menu-category-inner">
                        <h4>혜택 안내</h4>
                        <ul class="cate-menu">
                        <li><a href="/bestshop/pages/benefit/BSF-BEN-BESTSHOP.jsp">이달의 혜택</a></li>
                        <li><a href="/bestshop/pages/benefit/BSF-BEN-CARD.jsp">카드 혜택</a></li>
                        <li><a href="/bestshop/pages/benefit/BSF-BEN-MEMBER.jsp">멤버십 혜택</a></li>
                        <li><a href="/bestshop/pages/benefit/BSF-BEN-SIGNATURE.jsp">LG SIGNATURE 구매혜택</a></li>
                        </ul>
                    </div>
                    </div><!-- //.menu-category-layer -->
                </li>
                <li>
                    <a class="depth1-tit" href="javascript:void(0);">제품정보</a>
                    <div class="menu-category-layer">
                    <div class="menu-category-inner">
                        <h4>제품정보</h4>
                        <ul class="cate-menu">
                        <li><a href="/bestshop/pages/product/BSF-PRO-LIST.jsp">내게 맞는 제품 찾기</a></li>
                        <li><a href="/bestshop/pages/product/BSF-PRO-CATA-LIST.jsp">제품 카탈로그</a></li>
                        <li><a href="javascript:void(0);" target="_blank" title="새 창 열림">제품 사용 설명서</a></li>
                        </ul>
                    </div>
                    </div><!-- //.menu-category-layer -->
                </li>
                </ul>
            </div>
            </div>
            <!-- e: mega gnb -->
        </div>
        <!-- e: pc head wrap -->

        <!-- s: mobile head wrap -->
        <div class="header-wrap mobile">
            <h1 class="logo">
            <a href="/bestshop"><img src="/bestshop/images/icons/logo-lge.svg" alt="LG전자"><span>BEST SHOP</span></a>
            </h1>

            <p class="my-tooltip"><a href="javascript:void(0);"><span class="blind">마이 툴팁</span></a></p>

            <!-- s: mega gnb
            <div class="header-bottom">
            <div class="menu-wrap">
                <ul>
                <li><a class="depth1-tit" href="/bestshop">홈</a></li>
                <li><a class="depth1-tit" href="javascript:void(0);">매장안내</a></li>
                <li><a class="depth1-tit" href="/bestshop/pages/reservation/BSF-RES-VISIT.jsp">매장상담예약</a></li>
                <li><a class="depth1-tit" href="/bestshop/pages/event/BSF-EVE-BSTAB.jsp">이벤트</a></li>
                <li><a class="depth1-tit" href="javascript:void(0);">혜택안내</a></li>
                <li><a class="depth1-tit" href="javascript:void(0);">케어솔루션</a></li>
                <li><a class="depth1-tit" href="javascript:void(0);">제품정보</a></li>
                <li><a class="depth1-tit" href="javascript:void(0);">고객지원</a></li>
                </ul>
            </div>
            </div>
            e: mega gnb -->

            <div class="mega-gnb-mobile">
            <div class="mega-gnb-mobile-block">
                <p class="close-gnb"><button type="button"><span class="blind">메뉴닫기</span></button></p>
                <div class="mgb-top">
                <a href="javascript:void(0);" class="link-arrow">로그인해주세요</a>
                <a href="javascript:void(0);" class="link-mypage"><span class="blind">마이 페이지</span></a>
                </div>

                <div class="bnr-wrap">
                <div class="bnr-block megaMobileBnr">
                    <ul class="swiper-wrapper">
                    <li class="swiper-slide">
                        <a href="javascript:void(0);"><img src="/bestshop/images/@img-banner-sample-01.jpg" alt="멤버십 혜택"></a>
                        <div class="bnr-desc">멤버십 혜택</div>
                    </li>
                    <li class="swiper-slide">
                        <a href="javascript:void(0);"><img src="/bestshop/images/@img-banner-sample-02.jpg" alt="멤버십 혜택"></a>
                        <div class="bnr-desc">멤버십 혜택</div>
                    </li>
                    <li class="swiper-slide">
                        <a href="javascript:void(0);"><img src="/bestshop/images/@img-banner-sample-03.jpg" alt="멤버십 혜택"></a>
                        <div class="bnr-desc">멤버십 혜택</div>
                    </li>
                    </ul>
                </div>
                </div><!-- //.bnr-wrap -->

                <ul class="link-wrap">
                <li class="link-section">
                    <div class="depth1"><a href="javascript:void(0);">매장안내</a></div>
                    <div class="depth2">
                    <ul>
                        <li><a href="/bestshop/pages/shop/BSF-SHOP-LIST.jsp">매장 찾기</a></li>
                        <li><a href="/bestshop/pages/shop/BSF-SHOP-OPEN-LIST.jsp">신규 오픈 매장</a></li>
                        <li><a href="/bestshop/pages/shop/BSF-SHOP-IPHONE.jsp">아이폰 판매 매장</a></li>
                        <li><a href="javascript:void(0);" target="_blank" title="새 창 열림">야간 무인 매장</a></li>
                        <li><a href="javascript:void(0);" target="_blank" title="새 창 열림">서비스 센터 찾기</a></li>
                    </ul>
                    </div>
                </li>
                <li class="link-section">
                    <div class="depth1"><a href="javascript:void(0);">매장 상담 예약</a></div>
                    <div class="depth2">
                    <ul>
                        <li><a href="/bestshop/pages/reservation/BSF-RES-VISIT.jsp">방문 상담 예약</a></li>
                        <li><a href="/bestshop/pages/reservation/BSF-RES-VIDEO.jsp">화상 상담 예약</a></li>
                        <li><a href="/bestshop/pages/reservation/BSF-CARE-CA-RES.jsp">케어십 상담 예약</a></li>
                        <li><a href="/bestshop/pages/reservation/BSF-CARE-EX-RES.jsp">소모품 구매 예약</a></li>
                        <li><a href="/bestshop/pages/reservation/BSF-RES-INQ.jsp">상담 예약 조회</a></li>
                    </ul>
                    </div>
                </li>
                <li class="link-section">
                    <div class="depth1"><a href="javascript:void(0);">이벤트</a></div>
                    <div class="depth2">
                    <ul>
                        <li><a href="/bestshop/pages/event/BSF-EVE-BSTAB.jsp">이벤트 전체 보기</a></li>
                        <li><a href="/bestshop/pages/event/BSF-EVE-WED-INFO.jsp">혼수 이벤트</a></li>
                        <li class="depth3">
                        <a href="javascript:void(0);" class="depth3-tit">아파트 입주 이벤트</a>
                        <ul>
                            <li><a href="/bestshop/pages/event/BSF-EVE-APT-INFO.jsp">혜택안내</a></li>
                            <li><a href="/bestshop/pages/event/BSF-EVE-APT-LIST.jsp">행사 아파트 리스트</a></li>
                            <li><a href="/bestshop/pages/event/BSF-EVE-FAIR-LIST.jsp">박람회 일정</a></li>
                        </ul>
                        </li>
                        <li><a href="/bestshop/pages/event/BSF-EVE-MEDIA-LIST.jsp">홍보 영상</a></li>
                    </ul>
                    </div>
                </li>
                <li class="link-section">
                    <div class="depth1"><a href="javascript:void(0);">혜택 안내</a></div>
                    <div class="depth2">
                    <ul>
                        <li><a href="/bestshop/pages/benefit/BSF-BEN-BESTSHOP.jsp">이달의 혜택</a></li>
                        <li><a href="/bestshop/pages/benefit/BSF-BEN-CARD.jsp">카드 혜택</a></li>
                        <li><a href="/bestshop/pages/benefit/BSF-BEN-MEMBER.jsp">멤버십 혜택</a></li>
                        <li><a href="/bestshop/pages/benefit/BSF-BEN-SIGNATURE.jsp">LG SIGNATURE 구매혜택</a></li>
                    </ul>
                    </div>
                </li>
                <li class="link-section">
                    <div class="depth1"><a href="javascript:void(0);">제품정보</a></div>
                    <div class="depth2">
                    <ul>
                        <li><a href="/bestshop/pages/product/BSF-PRO-LIST.jsp">내게 맞는 제품 찾기</a></li>
                        <li><a href="/bestshop/pages/product/BSF-PRO-CATA-LIST.jsp">제품 카탈로그</a></li>
                        <li><a href="javascript:void(0);" target="_blank" title="새 창 열림">제품 사용 설명서</a></li>
                    </ul>
                    </div>
                </li>
                <li class="link-section">
                    <div class="depth1"><a href="javascript:void(0);">마이페이지</a></div>
                    <div class="depth2">
                    <ul>
                        <li><a href="javascript:void(0);">구매 내역 조회</a></li>
                        <li><a href="javascript:void(0);">제품 배송 조회</a></li>
                        <li><a href="javascript:void(0);">상담 예약 조회</a></li>
                        <li><a href="javascript:void(0);">포인트 조회</a></li>
                        <li><a href="javascript:void(0);" target="_blank" title="새 창 열림">케어솔루션 계약현황</a></li>
                        <li><a href="javascript:void(0);">무상 서비스 제품 조회</a></li>
                        <li><a href="javascript:void(0);">보유 쿠폰 조회</a></li>
                        <li><a href="javascript:void(0);">멤버십 가입 정보</a></li>
                    </ul>
                    </div>
                </li>
                <li class="link-section">
                    <div class="depth1"><a href="javascript:void(0);">회사소개</a></div>
                    <div class="depth2">
                    <ul>
                        <li><a href="https://www.lge.co.kr/company/sustainable/ceoMessage">CEO 인사말</a></li>
                        <li><a href="https://www.lge.co.kr/company/info/history">연혁</a></li>
                        <li><a href="https://www.lge.co.kr/company/info/philosophy">경영이념</a></li>
                    </ul>
                    </div>
                </li>
                </ul><!-- //.link-wrap -->

                <div class="direct-link">
                <ul>
                    <li><a href="/bestshop/pages/reservation/BSF-CARE-CA-RES.jsp">케어십 상담 예약</a></li>
                    <li><a href="/bestshop/pages/benefit/BSF-BEN-BESTSHOP.jsp">이달의 혜택</a></li>
                    <li><a href="/bestshop/pages/reservation/BSF-CARE-EX-RES.jsp">소모품 구매 예약</a></li>
                    <li><a href="/bestshop/pages/benefit/BSF-BEN-CARD.jsp">카드 혜택</a></li>
                    <li><a href="/bestshop/pages/reservation/BSF-RES-INQ.jsp">상담 예약 조회</a></li>
                    <li><a href="/bestshop/pages/product/BSF-PRO-LIST.jsp">내게 맞는 제품 찾기</a></li>
                    <li><a href="javascript:void(0);" target="_blank" title="새 창 열림">비즈니스</a></li>
                    <li><a href="javascript:void(0);" target="_blank" title="새 창 열림">LG전자 대표 사이트</a></li>
                </ul>
                </div><!-- //.direct-link -->

            </div><!-- //.mega-gnb-mobile-block -->
            </div><!-- //.mega-gnb-mobile -->
        </div>
        <!-- e: mobile head wrap -->

        <!-- s: Floating Menu -->
        <div class="floating-block">
            <a href="javascript:void(0);" class="top-btn">TOP</a>
            <div class="floating-custom-wrap">
            <a href="javascript:void(0);" class="main-btn"><span class="blind">서비스 메뉴 열기</span></a>
            <ul class="service-list">
                <li><a href="/bestshop/pages/reservation/BSF-RES-VISIT.jsp">매장 상담 예약 <img src="/bestshop/images/icons/icon-resv.svg"></a></li>
                <li><a href="/bestshop/pages/shop/BSF-SHOP-LIST.jsp">매장 찾기 <img src="/bestshop/images/icons/icon-resv.svg"></a></li>
                <li><a href="/bestshop/pages/event/BSF-EVE-BSTAB.jsp">베스트샵 이벤트 <img src="/bestshop/images/icons/icon-resv.svg"></a></li>
                <li><a href="/bestshop/pages/reservation/BSF-RES-INQ.jsp">상담 예약 조회 <img src="/bestshop/images/icons/icon-resv.svg"></a></li>
            </ul>
            </div>
        </div>
        <!-- e :Floating Menu -->
        </header>
        <!-- e: HEADER -->

        <!-- s: breadcrumb -->
        <div class="breadcrumb-wrap">
        <div class="breadcrumb-bar">
            <a href="/bestshop">홈</a>
            <span>이벤트</span>
            <span>아파트 입주 이벤트</span>
            <span>혜택안내</span>
        </div>
        <a href="javascript:history.back();" class="btn-history-back">이전</a>
        </div>
        <!-- e: breadcrumb -->