<%@ page contentType="text/html; charset=utf-8" %>
    <jsp:include page="../../templates/common/header.jsp" />
    <!-- container -->
    <div class="container" id="content">

        <div class="page-header">
            <h2 class="title">소모품 구매 예약</h2>
        </div>

        <!-- contents -->
        <div class="contents res-main care-ex">

            <div class="top-wrap">
                <div class="guide-area bg">
                    <div class="guide-process">
                        <div class="inner">
                            <p class="desc">필요한 소모품에 대한 정보를 LG전자 베스트샵을 통해 확인하고 <br class="m-hidden">매장 방문하여 구매 및 추가 상담을
                                받으실 수 있습니다.</p>
                            <div class="swiper guide-banner-care-ex">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="box">
                                            <span class="icon-wrap">
                                                <i class="icon01"></i>
                                            </span>
                                            <span class="txt">구매 희망 <br class="pc-hidden">소모품 선택</span>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="box">
                                            <span class="icon-wrap">
                                                <i class="icon02"></i>
                                            </span>
                                            <span class="txt">소모품 구매 <br class="pc-hidden">예약 신청</span>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="box">
                                            <span class="icon-wrap">
                                                <i class="icon03"></i>
                                            </span>
                                            <span class="txt">방문 매장 재고 확인 <br class="pc-hidden">및 고객 전화 안내</span>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="box">
                                            <span class="icon-wrap">
                                                <i class="icon04"></i>
                                            </span>
                                            <span class="txt">매장 방문 픽업 <br class="pc-hidden">및 추가 상담</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-scrollbar"></div>
                            </div>
                        </div>
                    </div>
                    <div class="guide-info-list">
                        <div class="inner">
                            <ul class="bull">
                                <li>소모품은 적기에 교체해야, 제품의 성능을 100% 발휘할 수 있습니다.</li>
                                <li>오프라인 상에는 LG전자 베스트샵에서만 소모품 구매가 가능합니다.</li>
                            </ul>
                        </div>
                    </div>
                    <div class="guide-bottom">
                        <div class="inner">
                            <dl>
                                <dt>소모품이란?</dt>
                                <dd>사용 주기에 맞추어 손쉽게 교체할 수 있는 필터, 청소포와 같은 소모품이나 옷걸이, 거치대와 같은 액세서리 종류를 말합니다.</dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>

            <div class="cont-wrap">
                <!-- tab -->
                <div class="tab01 tabOn tabSlide filter">
                    <div class="btn-filter">
                        <a href="#"><span class="blind">옵션필터</span></a>
                    </div>
                    <ul>
                        <li class="on">
                            <a href="javascript:void(0);">360º 공기청정기</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">미니 공기청정기</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">청소기</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">프라엘</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">스타일러</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">건조기</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">세탁기</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">식기세척기</a>
                        </li>
                    </ul>
                </div>
                <!-- 소모품 목록 영역 -->
                <section class="cont-area">
                    <div class="main-area">
                        <!-- 제품 목록 전체 -->
                        <div class="plp-list-wrap">
                            <!-- active 클래스 추가 -->
                            <!-- 필터 영역 -->
                            <div class="lay-filter">
                                <span class="dimmed"></span>
                                <div class="lay-fliter-con">

                                    <div class="filter-head">
                                        <p class="tit"><span>360º 공기청정기</span> 상세 검색</p>
                                    </div>

                                    <div class="plp-filter-wrap">
                                        <div class="box no-acco"><!-- no-acco 클래스 추가 -->
                                            <div class="tit-wrap">
                                                <div class="tit">소모품 분류<span class="sel-num">(1)<span class="blind">총 선택 갯수</span></span></div>
                                            </div>
                                            <div class="list-wrap">
                                                <ul class="filter-list">
                                                    <li>
                                                        <div class="check-box">
                                                            <input type="checkbox" name="filter" id="filter">
                                                            <label for="filter">필터</label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="check-box">
                                                            <input type="checkbox" name="moving-wheel" id="moving-wheel">
                                                            <label for="moving-wheel">무빙휠</label>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="btn-area">
                                            <button type="button" class="btn-reset"><span>초기화</span></button>
                                        </div>
                                        <div class="filter-close">
                                            <button type="button" class="btn-close"><span class="blind">닫기</span></button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- // 필터 영역 -->
                            <!-- 리스트 영역 -->
                            <div class="pdt-list-area">
                                <div class="list-info">
                                    <div class="list-count">총 24개</div>
                                    <div class="info-txt">*구매하실 소모품을 선택하세요.</div>
                                </div>
                                <div class="list-wrap">
                                    <ul class="pdt-list">
                                        <li>
                                            <div class="box">
                                                <div class="img-wrap">
                                                    <img src="../../images/img-filter-01.jpg" alt="V트루 토탈케어 필터 전용 극세 필터 제품 이미지">
                                                </div>
                                                <div class="tit-wrap">
                                                    <p class="tit">V트루 토탈케어 필터 전용 극세 필터 V트루 토탈케어 필터 전용 극세 필터</p>
                                                    <p class="code"><span class="blind">제품 코드</span>ADQ75153442</p>
                                                </div>
                                                <div class="info-wrap">
                                                    <p class="price">29,000원</p>
                                                    <a href="#" class="btn-info-pop">적용 가능 모델</a>
                                                </div>
                                                <div class="btn-area">
                                                    <button type="button" class="btn border btn-select">소모품 선택</button>
                                                </div>
                                                <div class="info-popup">
                                                    <div class="inner">
                                                        <div class="head-area">
                                                            <div class="pop-tit">적용 가능 모델<span><em>16</em>개</span></div>
                                                        </div>
                                                        <div class="body-area">
                                                            <div class="list-inner custom-scroll">
                                                            <ul class="model-list">
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                                <li>AS191NNFCNDDDCE</li>
                                                            </ul>
                                                        </div>
                                                        </div>
                                                        <button type="button" class="btn-close"><span class="blind">닫기</span></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="box">
                                                <div class="img-wrap">
                                                    <img src="../../images/img-filter-01.jpg" alt="V트루 토탈케어 필터 전용 극세 필터 제품 이미지">
                                                </div>
                                                <div class="tit-wrap">
                                                    <p class="tit">V트루 토탈케어 필터 전용 극세 필터</p>
                                                    <p class="code"><span class="blind">제품 코드</span>ADQ75153442</p>
                                                </div>
                                                <div class="info-wrap">
                                                    <p class="price">29,000원</p>
                                                    <a href="#" class="btn-info-pop">적용 가능 모델</a>
                                                </div>
                                                <div class="btn-area">
                                                    <button type="button" class="btn border btn-select">소모품 선택</button>
                                                </div>
                                                <div class="info-popup">
                                                    <div class="inner">
                                                        <div class="head-area">
                                                            <div class="pop-tit">적용 가능 모델<span><em>16</em>개</span></div>
                                                        </div>
                                                        <div class="body-area">
                                                            <div class="list-inner custom-scroll">
                                                                <ul class="model-list">
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <button type="button" class="btn-close"><span class="blind">닫기</span></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="box">
                                                <div class="img-wrap">
                                                    <img src="../../images/img-filter-01.jpg" alt="V트루 토탈케어 필터 전용 극세 필터 제품 이미지">
                                                </div>
                                                <div class="tit-wrap">
                                                    <p class="tit">V트루 토탈케어 필터 전용 극세 필터</p>
                                                    <p class="code"><span class="blind">제품 코드</span>ADQ75153442</p>
                                                </div>
                                                <div class="info-wrap">
                                                    <p class="price">29,000원</p>
                                                    <a href="#" class="btn-info-pop">적용 가능 모델</a>
                                                </div>
                                                <div class="btn-area">
                                                    <button type="button" class="btn border btn-select">소모품 선택</button>
                                                </div>
                                                <div class="info-popup">
                                                    <div class="inner">
                                                        <div class="head-area">
                                                            <div class="pop-tit">적용 가능 모델<span><em>16</em>개</span></div>
                                                        </div>
                                                        <div class="body-area">
                                                            <div class="list-inner custom-scroll">
                                                                <ul class="model-list">
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <button type="button" class="btn-close"><span class="blind">닫기</span></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="box">
                                                <div class="img-wrap">
                                                    <img src="../../images/img-filter-01.jpg" alt="V트루 토탈케어 필터 전용 극세 필터 제품 이미지">
                                                </div>
                                                <div class="tit-wrap">
                                                    <p class="tit">V트루 토탈케어 필터 전용 극세 필터</p>
                                                    <p class="code"><span class="blind">제품 코드</span>ADQ75153442</p>
                                                </div>
                                                <div class="info-wrap">
                                                    <p class="price">29,000원</p>
                                                    <a href="#" class="btn-info-pop">적용 가능 모델</a>
                                                </div>
                                                <div class="btn-area">
                                                    <button type="button" class="btn border btn-select">소모품 선택</button>
                                                </div>
                                                <div class="info-popup">
                                                    <div class="inner">
                                                        <div class="head-area">
                                                            <div class="pop-tit">적용 가능 모델<span><em>16</em>개</span></div>
                                                        </div>
                                                        <div class="body-area">
                                                            <div class="list-inner custom-scroll">
                                                                <ul class="model-list">
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <button type="button" class="btn-close"><span class="blind">닫기</span></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="box">
                                                <div class="img-wrap">
                                                    <img src="../../images/img-filter-01.jpg" alt="V트루 토탈케어 필터 전용 극세 필터 제품 이미지">
                                                </div>
                                                <div class="tit-wrap">
                                                    <p class="tit">V트루 토탈케어 필터 전용 극세 필터</p>
                                                    <p class="code"><span class="blind">제품 코드</span>ADQ75153442</p>
                                                </div>
                                                <div class="info-wrap">
                                                    <p class="price">29,000원</p>
                                                    <a href="#" class="btn-info-pop">적용 가능 모델</a>
                                                </div>
                                                <div class="btn-area">
                                                    <button type="button" class="btn border btn-select">소모품 선택</button>
                                                </div>
                                                <div class="info-popup">
                                                    <div class="inner">
                                                        <div class="head-area">
                                                            <div class="pop-tit">적용 가능 모델<span><em>16</em>개</span></div>
                                                        </div>
                                                        <div class="body-area">
                                                            <div class="list-inner custom-scroll">
                                                                <ul class="model-list">
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <button type="button" class="btn-close"><span class="blind">닫기</span></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="box">
                                                <div class="img-wrap">
                                                    <img src="../../images/img-filter-01.jpg" alt="V트루 토탈케어 필터 전용 극세 필터 제품 이미지">
                                                </div>
                                                <div class="tit-wrap">
                                                    <p class="tit">V트루 토탈케어 필터 전용 극세 필터</p>
                                                    <p class="code"><span class="blind">제품 코드</span>ADQ75153442</p>
                                                </div>
                                                <div class="info-wrap">
                                                    <p class="price">29,000원</p>
                                                    <a href="#" class="btn-info-pop">적용 가능 모델</a>
                                                </div>
                                                <div class="btn-area">
                                                    <button type="button" class="btn border btn-select">소모품 선택</button>
                                                </div>
                                                <div class="info-popup">
                                                    <div class="inner">
                                                        <div class="head-area">
                                                            <div class="pop-tit">적용 가능 모델<span><em>16</em>개</span></div>
                                                        </div>
                                                        <div class="body-area">
                                                            <div class="list-inner custom-scroll">
                                                                <ul class="model-list">
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                    <li>AS191NNFCNDDDCE</li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <button type="button" class="btn-close"><span class="blind">닫기</span></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="btn-area center">
                                        <button type="button" class="btn border s02 more"><span>더보기</span></button>
                                    </div>
                                </div>
                            </div>
                            <!-- // 리스트 영역 -->
                        </div>
                        <!-- // 제품 목록 전체 -->
                    </div>
                </section>
                <!-- // 소모품 목록 영역 -->

                <!-- 소모품 구매 예약 스텝 영역 -->
                <section class="cont-area">
                    <p class="step-top-note"><sup>*</sup>필수입력항목</p>
                    <!-- step 1 -->
                    <div class="step-area step01 active">
                        <!-- active 클래스 추가 -->

                        <div class="result-area active">
                            <!-- active 클래스 추가 -->
                            <div class="info-step01">
                                <div class="info-txt-com active">
                                    <!-- active 클래스 추가 -->
                                    <a href="#">
                                        <span class="mo-tit">소모품 선택</span>
                                        <span class="pc-tit">제품 :</span>
                                        <span class="txt">물걸레노즐, 트루 토탈케어 필터 전용 극세 필터</span>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="main-area active">
                            <!-- active 클래스 추가 -->

                            <h3 class="step-tit">선택하신 소모품<sup>*</sup><span>(최대 3개 선택가능)</span></h3>
                            <div class="my-select">
                                <ul>
                                    <li>
                                        <div class="box">
                                            <div class="img-wrap">
                                                <img src="../../images/img-filter-01.jpg"
                                                    alt="V트루 토탈케어 필터 전용 극세 필터 제품 이미지">
                                            </div>
                                            <div class="txt-wrap">
                                                <p class="tit">V트루 토탈케어 필터 전용 극세 필터</p>
                                                <p class="code"><span class="blind">제품 코드</span>ADQ75153442</p>
                                                <p class="price">29,000원</p>
                                            </div>
                                            <button type="button" class="btn-close"><span
                                                    class="blind">닫기</span></button>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="box no-item">
                                            <p class="no-item-txt">구매 예약하실 소모품을 추가 하실 수 있습니다.</p>
                                            <button type="button" class="btn border btn-add">소모품 추가 하기</button>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="box no-item">
                                            <p class="no-item-txt">구매 예약하실 소모품을 추가 하실 수 있습니다.</p>
                                            <button type="button" class="btn border btn-add">소모품 추가 하기</button>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                        </div>

                        <div class="btn-area">
                            <button type="button" class="btn s01 border-red arr-right">다음으로</button>
                        </div>

                    </div>
                    <!-- // step 1 -->

                    <!-- step 2 -->
                    <div class="step-area step02 active">
                        <!-- active 클래스 추가 -->

                        <div class="result-area active">
                            <!-- active 클래스 추가 -->
                            <div class="info-step02">
                                <div class="info-txt-com active">
                                    <!-- active 클래스 추가 -->
                                    <a href="#">
                                        <span class="mo-tit">상담 매장 및 예약일시</span>
                                        <span class="pc-tit">상담 매장 :</span>
                                        <span class="txt">강남본점</span>

                                        <span class="pc-tit">예약 일시 :</span>
                                        <span class="txt">21년12월15일, 17시</span>
                                    </a>
                                </div>

                                <div class="info-txt-uncom active">
                                    <!-- active 클래스 추가 -->
                                    <p class="page-num">STEP02</p>
                                    <p class="txt">상담하실 매장과 일시를 선택해주세요.</p>
                                </div>
                            </div>
                        </div>

                        <div class="main-area active">
                            <!-- active 클래스 추가 -->

                            <div class="shop-date-wrap">
                                <div class="view-area">
                                    <h3 class="step-tit">상담하실 매장과 예약 일시 선택<sup>*</sup></h3>
                                    <div class="sort-area">
                                        <button type="button" class="view-map active">지도보기</button>
                                        <!-- active 클래스 추가 -->
                                        <button type="button" class="view-list">리스트보기</button>
                                    </div>

                                    <div class="sort-block">
                                        <!-- 지도보기 영역 -->
                                        <div class="map-wrap active">
                                            <!-- active 클래스 추가 -->
                                            <ul class="input-select-type">
                                                <li>
                                                    <div class="slt sltBox border-type" data-txt-change="true">
                                                        <a href="javascript:void(0);" class="btn-slt">선택</a>
                                                        <ul>
                                                            <li><a href="javascript:void(0);">선택</a></li>
                                                            <li><a href="javascript:void(0);">서울특별시</a></li>
                                                        </ul>
                                                        <select title="시/도 선택">
                                                            <option selected>선택</option>
                                                            <option>서울특별시</option>
                                                        </select>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="slt sltBox border-type" data-txt-change="true">
                                                        <a href="javascript:void(0);" class="btn-slt">선택</a>
                                                        <ul>
                                                            <li><a href="javascript:void(0);">선택</a></li>
                                                            <li><a href="javascript:void(0);">강남구</a></li>
                                                        </ul>
                                                        <select title="구 선택">
                                                            <option selected>선택</option>
                                                            <option>강남구</option>
                                                        </select>
                                                    </div>
                                                </li>
                                            </ul>

                                            <!-- api 영역 -->
                                            <div class="api-area">
                                                <div class="map-list-wrap active">
                                                    <div class="list-inner custom-scroll">
                                                        <ul class="shop-list">
                                                            <li>
                                                                <button type="button" class="btn-shop">강남본점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop active">갤러리아 명품관 WEST점</button><!-- active 클래스 추가 -->
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">논현역점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">대치본점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">논현역점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">대치본점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">논현역점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">대치본점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">논현역점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">대치본점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">논현역점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">대치본점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">논현역점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">대치본점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">논현역점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">대치본점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">논현역점</button>
                                                            </li>
                                                            <li>
                                                                <button type="button" class="btn-shop">대치본점</button>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <button type="button" class="btn-view"><span class="blind">매장 리스트 보기</span></button>
                                                </div>
                                                <div class="btn-area innerMap">
                                                    <a href="javascript:void(0);" class="btn purple gps">가까운 매장찾기</a>
                                                </div>
                                            </div>
                                            <!-- // api 영역 -->
                                        </div><!-- //.map-wrap -->

                                        <!-- 리스트 보기 영역 -->
                                        <div class="list-wrap">
                                            <!-- active 클래스 추가 -->
                                            <div class="search-wrap">
                                                <form action="#">
                                                    <div class="search-box">
                                                        <input type="text" placeholder="매장명을 검색해주세요."
                                                            title="매장명을 검색해주세요." required="required">
                                                        <button type="button" class="btn-clear">검색어 삭제</button>
                                                        <button type="button" class="btn-search">검색</button>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="view-wrap">
                                                <div class="lt custom-scroll">
                                                    <ul class="shop-list">
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city">전체<span>530</span></button>
                                                        </li>
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city active">서울특별시<span>7</span></button>
                                                            <!-- active 클래스 추가 -->
                                                        </li>
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city">부산광역시<span>38</span></button>
                                                        </li>
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city">대구광역시<span>32</span></button>
                                                        </li>
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city">인천광역시<span>56</span></button>
                                                        </li>
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city">광주광역시<span>72</span></button>
                                                        </li>
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city">대전광역시<span>65</span></button>
                                                        </li>
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city">울산광역시<span>79</span></button>
                                                        </li>
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city">세종특별자치시청<span>5</span></button>
                                                        </li>
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city">부산광역시<span>38</span></button>
                                                        </li>
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city">대구광역시<span>32</span></button>
                                                        </li>
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city">인천광역시<span>56</span></button>
                                                        </li>
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city">광주광역시<span>72</span></button>
                                                        </li>
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city">대전광역시<span>65</span></button>
                                                        </li>
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city">울산광역시<span>79</span></button>
                                                        </li>
                                                        <li>
                                                            <button type="button"
                                                                class="btn-city">세종특별자치시청<span>5</span></button>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="mo-select">
                                                    <div class="slt sltBox border-type" data-txt-change="true">
                                                        <a href="javascript:void(0);" class="btn-slt">선택</a>
                                                        <ul>
                                                            <li><a href="javascript:void(0);">선택</a></li>
                                                            <li><a href="javascript:void(0);">서울특별시</a></li>
                                                        </ul>
                                                        <select title="시/도 선택">
                                                            <option selected>선택</option>
                                                            <option>서울특별시</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="rt custom-scroll">
                                                    <ul class="detail-list">
                                                        <li>
                                                            <a href="#" class="shop-box">
                                                                <div class="name-area">
                                                                    <p class="shop-name">강남본점</p>
                                                                    <ul class="key-words">
                                                                        <li class="new">NEW</li>
                                                                        <li>화상상담</li>
                                                                        <li>아이폰</li>
                                                                        <li>LX지인</li>
                                                                        <li>야간무인</li>
                                                                    </ul>
                                                                </div>
                                                                <p class="info-txt">
                                                                    서울특별시 강남구 도산대로 403 (청담동 86-1)
                                                                </p>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" class="shop-box">
                                                                <div class="name-area">
                                                                    <p class="shop-name">강남본점</p>
                                                                    <ul class="key-words">
                                                                        <li class="new">NEW</li>
                                                                        <li>화상상담</li>
                                                                        <li>아이폰</li>
                                                                        <li>LX지인</li>
                                                                        <li>야간무인</li>
                                                                    </ul>
                                                                </div>
                                                                <p class="info-txt">
                                                                    서울특별시 강남구 도산대로 403 (청담동 86-1)
                                                                </p>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" class="shop-box">
                                                                <div class="name-area">
                                                                    <p class="shop-name">강남본점</p>
                                                                    <ul class="key-words">
                                                                        <li class="new">NEW</li>
                                                                        <li>화상상담</li>
                                                                        <li>아이폰</li>
                                                                        <li>LX지인</li>
                                                                        <li>야간무인</li>
                                                                    </ul>
                                                                </div>
                                                                <p class="info-txt">
                                                                    서울특별시 강남구 도산대로 403 (청담동 86-1)
                                                                </p>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" class="shop-box">
                                                                <div class="name-area">
                                                                    <p class="shop-name">강남본점</p>
                                                                    <ul class="key-words">
                                                                        <li class="new">NEW</li>
                                                                        <li>화상상담</li>
                                                                        <li>아이폰</li>
                                                                        <li>LX지인</li>
                                                                        <li>야간무인</li>
                                                                    </ul>
                                                                </div>
                                                                <p class="info-txt">
                                                                    서울특별시 강남구 도산대로 403 (청담동 86-1)
                                                                </p>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" class="shop-box">
                                                                <div class="name-area">
                                                                    <p class="shop-name">강남본점</p>
                                                                    <ul class="key-words">
                                                                        <li class="new">NEW</li>
                                                                        <li>화상상담</li>
                                                                        <li>아이폰</li>
                                                                        <li>LX지인</li>
                                                                        <li>야간무인</li>
                                                                    </ul>
                                                                </div>
                                                                <p class="info-txt">
                                                                    서울특별시 강남구 도산대로 403 (청담동 86-1)
                                                                </p>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" class="shop-box">
                                                                <div class="name-area">
                                                                    <p class="shop-name">강남본점</p>
                                                                    <ul class="key-words">
                                                                        <li class="new">NEW</li>
                                                                        <li>화상상담</li>
                                                                        <li>아이폰</li>
                                                                        <li>LX지인</li>
                                                                        <li>야간무인</li>
                                                                    </ul>
                                                                </div>
                                                                <p class="info-txt">
                                                                    서울특별시 강남구 도산대로 403 (청담동 86-1)
                                                                </p>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" class="shop-box">
                                                                <div class="name-area">
                                                                    <p class="shop-name">강남본점</p>
                                                                    <ul class="key-words">
                                                                        <li class="new">NEW</li>
                                                                        <li>화상상담</li>
                                                                        <li>아이폰</li>
                                                                        <li>LX지인</li>
                                                                        <li>야간무인</li>
                                                                    </ul>
                                                                </div>
                                                                <p class="info-txt">
                                                                    서울특별시 강남구 도산대로 403 (청담동 86-1)
                                                                </p>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" class="shop-box">
                                                                <div class="name-area">
                                                                    <p class="shop-name">강남본점</p>
                                                                    <ul class="key-words">
                                                                        <li class="new">NEW</li>
                                                                        <li>화상상담</li>
                                                                        <li>아이폰</li>
                                                                        <li>LX지인</li>
                                                                        <li>야간무인</li>
                                                                    </ul>
                                                                </div>
                                                                <p class="info-txt">
                                                                    서울특별시 강남구 도산대로 403 (청담동 86-1)
                                                                </p>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" class="shop-box">
                                                                <div class="name-area">
                                                                    <p class="shop-name">강남본점</p>
                                                                    <ul class="key-words">
                                                                        <li class="new">NEW</li>
                                                                        <li>화상상담</li>
                                                                        <li>아이폰</li>
                                                                        <li>LX지인</li>
                                                                        <li>야간무인</li>
                                                                    </ul>
                                                                </div>
                                                                <p class="info-txt">
                                                                    서울특별시 강남구 도산대로 403 (청담동 86-1)
                                                                </p>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#" class="shop-box">
                                                                <div class="name-area">
                                                                    <p class="shop-name">강남본점</p>
                                                                    <ul class="key-words">
                                                                        <li class="new">NEW</li>
                                                                        <li>화상상담</li>
                                                                        <li>아이폰</li>
                                                                        <li>LX지인</li>
                                                                        <li>야간무인</li>
                                                                    </ul>
                                                                </div>
                                                                <p class="info-txt">
                                                                    서울특별시 강남구 도산대로 403 (청담동 86-1)
                                                                </p>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                    <!-- .no-data -->
                                                    <div class="no-data">
                                                        <span>검색된 결과가 없습니다.</span>
                                                    </div>
                                                    <!-- // .no-data -->
                                                </div>
                                            </div>
                                        </div><!-- //.list-wrap -->

                                    </div><!-- //.sort-block -->
                                </div>

                                <div class="bottom-area">
                                    <div class="shop-info-wrap">
                                        <div class="box">
                                            <div class="top-area">
                                                <p class="shop-name">강남본점</p>
                                                <ul class="key-words">
                                                    <li class="new">NEW</li>
                                                    <li>화상상담</li>
                                                    <li>아이폰</li>
                                                    <li>LX지인</li>
                                                    <li>야간무인</li>
                                                </ul>
                                            </div>
                                            <div class="info-area">
                                                <dl>
                                                    <dt>주소</dt>
                                                    <dd>서울 특별시 강남구 도산대로 403 (청담동 86-1)<br>LG전자 베스트샵 강남본점</dd>
                                                </dl>
                                                <dl>
                                                    <dt>전화번호</dt>
                                                    <dd>02-3448-5191</dd>
                                                </dl>
                                                <dl>
                                                    <dt>영업시간</dt>
                                                    <dd>
                                                        <ul>
                                                            <li>
                                                                <span>평&nbsp;&nbsp;&nbsp;&nbsp;일</span>
                                                                <span>10:30 - 20:30</span>
                                                            </li>
                                                            <li>
                                                                <span>토요일</span>
                                                                <span>10:30 - 20:30</span>
                                                            </li>
                                                            <li>
                                                                <span>일요일</span>
                                                                <span>11:00 - 20:30</span>
                                                            </li>
                                                        </ul>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="date-wrap">
                                        <div class="calendar active">
                                            <!-- active 클래스 추가(mo) -->
                                            <div class="mo-top">
                                                <p class="mo-tit">예약일 선택</p>
                                                <!-- <p class="mo-tit active">21년 12월 15일</p> --><!-- active 클래스 추가(mo) -->
                                            </div>
                                            <div id="calendar" class="cal-cont"></div> <!-- #calendar 로 달력호출 -->
                                        </div>
                                        <div class="time active">
                                            <!-- active 클래스 추가(mo) -->
                                            <div class="mo-top">
                                                <p class="mo-tit">예약시간 선택</p>
                                                <!-- <p class="mo-tit active">17시</p> --><!-- active 클래스 추가(mo) -->
                                            </div>
                                            <div class="time-cont">
                                                <form action="#">
                                                    <ul class="input-time">
                                                        <li>
                                                            <div class="radio-btn btn-type2">
                                                                <input type="radio" id="am11" name="time">
                                                                <label for="am11">
                                                                    <span class="name">11시</span>
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="radio-btn btn-type2">
                                                                <input type="radio" id="pm12" name="time">
                                                                <label for="pm12">
                                                                    <span class="name">12시</span>
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="radio-btn btn-type2">
                                                                <input type="radio" id="pm13" name="time">
                                                                <label for="pm13">
                                                                    <span class="name">13시</span>
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="radio-btn btn-type2">
                                                                <input type="radio" id="pm14" name="time">
                                                                <label for="pm14">
                                                                    <span class="name">14시</span>
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="radio-btn btn-type2">
                                                                <input type="radio" id="pm15" name="time">
                                                                <label for="pm15">
                                                                    <span class="name">15시</span>
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="radio-btn btn-type2">
                                                                <input type="radio" id="pm16" name="time">
                                                                <label for="pm16">
                                                                    <span class="name">16시</span>
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="radio-btn btn-type2">
                                                                <input type="radio" id="pm17" name="time">
                                                                <label for="pm17">
                                                                    <span class="name">17시</span>
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="radio-btn btn-type2">
                                                                <input type="radio" id="pm18" name="time">
                                                                <label for="pm18">
                                                                    <span class="name">18시</span>
                                                                </label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="radio-btn btn-type2">
                                                                <input type="radio" id="pm19" name="time">
                                                                <label for="pm19">
                                                                    <span class="name">19시</span>
                                                                </label>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="btn-area bg active">
                            <!-- active 클래스 추가 -->
                            <div class="result-txt">
                                <!-- <p>상담하실 매장과 일시를 선택해주세요.</p> -->
                                <p>상담 매장: <span>강남본점</span></p>
                                <p>예약 일시: <span>21년12월15일, 17시</span></p>
                            </div>
                            <button type="button" class="btn s01 border-red arr-right">다음으로</button>
                        </div>

                    </div>
                    <!-- // step 2 -->

                    <!-- step 3 -->
                    <div class="step-area step03 active">
                        <!-- active 클래스 추가 -->

                        <div class="result-area active">
                            <!-- active 클래스 추가 -->
                            <div class="info-step03">
                                <div class="info-txt-uncom active">
                                    <!-- active 클래스 추가 -->
                                    <p class="page-num">STEP03</p>
                                    <p class="txt">예약자 정보를 입력해주세요.</p>
                                </div>
                            </div>
                        </div>

                        <div class="main-area active">
                            <!-- active 클래스 추가 -->
                            <div class="user-info-area">
                                <h3 class="step-tit">예약자 정보</h3>
                                <div class="lt">
                                    <form action="#">
                                        <div class="box-gray">
                                            <ul class="input-list-type">
                                                <li>
                                                    <div class="tit">
                                                        <label for="user-name">
                                                            <span class="name">이름<sup>*</sup></span>
                                                        </label>
                                                    </div>
                                                    <div class="txt-box">
                                                        <input class="base-txt" type="text" id="user-name" placeholder="이름 입력">
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="tit">
                                                        <label for="user-number">
                                                            <span class="name">휴대폰번호<sup>*</sup></span>
                                                        </label>
                                                    </div>
                                                    <div class="txt-box">
                                                        <input class="base-txt" type="number" id="user-number" placeholder="휴대폰 번호 입력">
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </form>
                                </div>
                                <div class="rt">
                                    <div class="agr-wrap">
                                        <ul class="input-acco-type">
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" id="agr-all" class="agr-all">
                                                    <label for="agr-all">
                                                        <span class="name">모두 동의</span>
                                                    </label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" class="agr-check" id="agr-required">
                                                    <label for="agr-required">
                                                        <span class="name"><em class="red">(필수)</em>개인정보 수집 및 이용에
                                                            동의합니다.</span>
                                                    </label>
                                                    <button type="button" class="agr-more active"><span class="blind">약관
                                                            내용 보기</span></button><!-- active 클래스 추가 -->
                                                    <div class="agr-txt-wrap size-l active">
                                                        <!-- active 클래스 추가 -->
                                                        <div class="inner custom-scroll">
                                                            <ul>
                                                                <li>
                                                                    <span>1. 수집하는 개인정보의 항목</span>
                                                                    <p>1) 필수사항 : 이름, 휴대폰번호, 매장 방문 가능일, 구매 희망 제품, 방문 예정
                                                                        매장, 구매 희망 시기</p>
                                                                </li>
                                                                <li>
                                                                    <span>2. 개인정보 이용목적</span>
                                                                    <p>
                                                                        - BEST SHOP 미리미리 페스티벌 경품 응모<br>
                                                                        - 매장 상담 예약 확인 TM
                                                                    </p>
                                                                </li>
                                                                <li>
                                                                    <span>1. 수집하는 개인정보의 항목</span>
                                                                    <p>1) 필수사항 : 이름, 휴대폰번호, 매장 방문 가능일, 구매 희망 제품, 방문 예정
                                                                        매장, 구매 희망 시기</p>
                                                                </li>
                                                                <li>
                                                                    <span>2. 개인정보 이용목적</span>
                                                                    <p>
                                                                        - BEST SHOP 미리미리 페스티벌 경품 응모<br>
                                                                        - 매장 상담 예약 확인 TM
                                                                    </p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="check-box">
                                                    <input type="checkbox" class="agr-check" id="agr-optional">
                                                    <label for="agr-optional">
                                                        <span class="name"><em>(선택)</em>마케팅 정보활용에 동의합니다.</span>
                                                    </label>
                                                    <button type="button" class="agr-more active"><span class="blind">약관
                                                            내용 보기</span></button><!-- active 클래스 추가 -->
                                                    <div class="agr-txt-wrap active">
                                                        <!-- active 클래스 추가 -->
                                                        <div class="inner custom-scroll">
                                                            <ul>
                                                                <li>
                                                                    <span>1. 마케팅 정보활용 동의</span>
                                                                    <p>1) 필수 : 이름, 휴대번호, 매장방문일, 구매 희망 제품, 방문 예정 매장, 구매
                                                                        희망 시기</p>
                                                                </li>
                                                                <li>
                                                                    <span>2. 개인정보 이용목적</span>
                                                                    <p>- 신제품 / 할인 행사 등 고객 맞춤 판촉 관련 TM 및 SMS 발송</p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="bottom-area">
                                    <h4 class="tit">필수 위탁 고지</h4>
                                    <p class="desc">LG전자는 개인정보 취급업무 중 서비스 제공에 필요한 필수적 업무를 아래와 같이 외부 전문업체에 위탁하여 운영하고 있으며,
                                        해당 업체는 서비스 이행을 위한 목적으로만 사용됩니다.</p>
                                    <div class="tb_row tb-row-bl white size-s">
                                        <table>
                                            <caption>필수 위탁 고지 표</caption>
                                            <colgroup>
                                                <col style="width:50%">
                                                <col style="width:50%">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">위탁업체 (수탁자)</th>
                                                    <th scope="col">위탁업무 내용</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>LG CNS / 하이프라자</td>
                                                    <td>시스템관리, 홈페이지 운영, 회원정보 관리</td>
                                                </tr>
                                                <tr>
                                                    <td>하이텔레서비스</td>
                                                    <td>콜센터 상담업무 (고객문의응대)</td>
                                                </tr>
                                                <tr>
                                                    <td>KPR, 스캣 커뮤니케이션, 이지인 커뮤니케이션, 에코앤컴퍼니, 서브원</td>
                                                    <td>이벤트 당첨자 전화 안내 및 경품, 사은품 발송</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
    
                    </div>
                    <!-- // step 3 -->

                    <div class="btn-area center active">
                        <!-- active 클래스 추가 -->
                        <button type="button" class="btn btn-res btnPopOpen" data-href="#popup-certification">상담 예약하기</button>
                    </div>
                    
                </section>
                <!-- // 소모품 구매 예약 스텝 영역 -->

            </div>

        </div>
        <!-- // contents -->
    </div>
    <!-- // container -->

    <!-- 선택한 소모품(장바구니) 영역 -->
    <div class="bottom-cart-wrap">
        <!-- active 클래스 추가 -->
        <div class="bar-wrap care-ex">
            <div class="head-area">
                <p class="head-txt">선택한 소모품 <span><em>2</em>/3</span></p>
                <button type="button" class="view-more"><span class="blind">펼쳐보기</span></button>
            </div>
            <div class="body-area">
                <div class="my-select">
                    <ul>
                        <li>
                            <div class="box">
                                <div class="img-wrap">
                                    <img src="../../images/img-filter-01.jpg" alt="V트루 토탈케어 필터 전용 극세 필터 제품 이미지">
                                </div>
                                <div class="txt-wrap">
                                    <p class="tit">V트루 토탈케어 필터 전용 극세 필터</p>
                                    <p class="code"><span class="blind">제품 코드</span>ADQ75153442</p>
                                    <p class="price">29,000원</p>
                                </div>
                                <button type="button" class="btn-close"><span class="blind">닫기</span></button>
                            </div>
                        </li>
                        <li>
                            <div class="box no-item">
                                <p class="no-item-txt">원하는 상담 제품을 추가 하실 수 있습니다.</p>
                            </div>
                        </li>
                        <li>
                            <div class="box no-item">
                                <p class="no-item-txt">원하는 상담 제품을 추가 하실 수 있습니다.</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="foot-area">
                <div class="btn-area">
                    <button type="button" class="btn btn-reset"><span>초기화</span></button>
                    <button type="button" class="btn btn-res">소모품 구매 예약</button>
                </div>
            </div>
        </div>
    </div>
    <!-- // 선택한 소모품(장바구니) 영역 -->

    <!-- dim -->
    <div class="dim"> </div>
    <!-- //dim -->

    <!-- 팝업: 휴대전화 인증 -->
    <div class="popup medium m-full" id="popup-certification">
        <div class="pop-wrap">
            <div class="pop-head">
                <h5 class="tit-pop">휴대전화 인증</h5>
            </div>
            <div class="pop-cont">
                <div class="phone-check-wrap">
                    <p class="note"><sup>*</sup>필수 입력 사항</p>
                    <form action="#">
                        <ul class="input-list-type pc-row">
                            <li class="name-box">
                                <div class="tit">
                                    <label for="user-name02">
                                        <span class="name">이름<sup>*</sup></span>
                                    </label>
                                </div>
                                <div class="txt-box">
                                    <input class="base-txt" type="text" id="user-name02" placeholder="이름 입력">
                                </div>
                            </li>
                            <li class="num-box">
                                <div class="tit">
                                    <label for="user-number02">
                                        <span class="name">휴대 전화<sup>*</sup></span>
                                    </label>
                                </div>
                                <div class="txt-box">
                                    <div class="input-pin-type">
                                        <input class="base-txt" type="number" id="user-number02" placeholder="휴대전화 번호 입력">
                                        <button type="button" class="btn-send">인증번호 발송</button>
                                    </div>
                                    <input class="base-txt" type="number" placeholder="인증번호를 입력해주세요" disabled>
                                </div>
                            </li>
                        </ul>
                    </form>
                </div>
                <div class="caution-area">
                    <ul class="bull">
                        <li>휴대전화 인증을 한 정보(이름, 휴대전화)로 접수됩니다.</li>
                        <li>인증번호가 수신되지 않은 경우 1544-7777이 스팸처리 되지 않았는지 확인해주시기 바랍니다.</li>
                    </ul>
                </div>
            </div>
            <div class="btn-area m-full-flex">
                <!-- <button type="button" class="btn gray btnPopCancel">취소</button> -->
                <button type="button" class="btn">인증하기</button>
            </div>
            <button type="button" class="btn-pop-close btnPopClose"><span class="blind">닫기</span></button>
        </div>
    </div>
    <!-- 팝업: 휴대전화 인증 -->

    <script>
        $(document).ready(function () {
            // 상단 예약진행 가이드 영역
            var resbanner01 = new Swiper(".guide-banner-care-ex", {
                slidesPerView: 'auto',
                scrollbar: {
                    el: ".swiper-scrollbar",
                    draggable: true,
                    // hide: true,
                },
            })

            // 필터 영역 모바일
            $('.btn-filter').on('click', function () {
                $('.plp-list-wrap .lay-filter').toggleClass('active');
                $('html').addClass('scroll-fixed');
            });
            $('.plp-filter-wrap .filter-close .btn-close, .plp-list-wrap .lay-filter .dimmed').on('click', function () {
                $('.plp-list-wrap .lay-filter').removeClass('active');
                $('html').removeClass('scroll-fixed');
            });

            // 소모품 목록 영역 > 제품 목록 내 팝업
            var prdPopOpen = $('.pdt-list-area .list-wrap > ul > li .box .info-wrap .btn-info-pop');
            var prdPopup = $('.pdt-list-area .list-wrap > ul > li .box .info-popup');
            var prdPopClose = $('.pdt-list-area .list-wrap > ul > li .box .info-popup .btn-close');
            prdPopOpen.click(function (e) {
                e.preventDefault();
                $(this).parent().siblings(prdPopup).show();
            });
            prdPopClose.click(function () {
                $(this).parent().parent(prdPopup).hide();
            });

            // 선택한 소모품(장바구니) 영역
            $('.bottom-cart-wrap .head-area').on('click', function () {
                $(this).closest('.bottom-cart-wrap').toggleClass('active');
                $('.bottom-cart-wrap .body-area').stop().slideToggle();
                $('.bottom-cart-wrap .foot-area').stop().slideToggle();
            });

            // step 2 지도/리스트 보기 버튼
            for (i = 1; i < 5; i++) {
                (function (i2) {
                    $('.sort-area button:nth-child(' + i2 + ')').click(function () {
                        $('.sort-area button').removeClass('active');
                        $('.sort-block > div').removeClass('active');
                        $(this).addClass('active')
                        $('.sort-block > div:nth-child(' + i2 + ')').addClass('active');
                    });
                })(i);
            }

            // step 2 지도 매장리스트보기 버튼
            $('.map-list-wrap .btn-view').on('click', function(){
                $(this).closest('.map-list-wrap').toggleClass('active')
            })

            // step 2 예약일 선택 / 예약시간 선택
            $('.date-wrap .mo-top').next('div').show();
            if ($(window).width() < 768) {
                $('.date-wrap .mo-tit').on('click', function () {
                    $(this).parent().parent('div').toggleClass('active');
                    $(this).closest('.mo-top').next('div').slideToggle(200);
                });
            }

            // step 2 약관
            $(function () {
                // step 2 약관 > 더보기 버튼
                $('.check-box .agr-more').on('click', function () {
                    $(this).toggleClass('active').siblings('.agr-txt-wrap').slideToggle(200);
                });
                // step 2 약관 > 모두 동의
                $(".agr-wrap").on("click", "#agr-all", function () {
                    $(this).parents(".agr-wrap").find('input').prop("checked", $(this).is(":checked"));
                });

                // 약관 개별 선택
                $(".agr-wrap").on("click", ".agr-check", function () {
                    var is_checked = true;

                    $(".agr-wrap .agr-check").each(function () {
                        is_checked = is_checked && $(this).is(":checked");
                    });

                    $("#agr-all").prop("checked", is_checked);
                });
            });
        });
    </script>
    <jsp:include page="../../templates/common/footer.jsp" />