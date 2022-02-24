<%@ page contentType="text/html; charset=utf-8" %>
<jsp:include page="../../templates/common/header.jsp" />

<!-- container -->
<div class="container" id="content">
    <div class="page-header">
        <h2 class="title">박람회 일정</h2>
    </div>
    <!-- contents -->
    <div class="contents">
        <div class="cont-wrap">
            <!-- 박람회일정 -->
            <div class="img-slide-wrap">
                <div class="swiper img-slide">
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide">
                            <img class="m-hidden" src="../../images/img-event-schedule.png" alt="&nbsp;" /><!-- pc용 -->
                            <img class="pc-hidden" src="../../images/img-event-schedule-m.png" alt="&nbsp;" /><!-- mobile용 -->
                        </li>
                        <li class="swiper-slide">
                            <img class="m-hidden" src="../../images/img-event-schedule.png" alt="&nbsp;" /><!-- pc용 -->
                            <img class="pc-hidden" src="../../images/img-event-schedule-m.png" alt="&nbsp;" /><!-- mobile용 -->
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
            <!-- //박람회일정 -->
            <!-- 박람회 지도/일정/목록 -->
            <div class="schedule-map-list">
                <!-- 지도 -->
                <div class="sd-map">
                    <!-- pc용 -->
                    <ul class="list-sd-map m-hidden">
                        <li><a href="#none"><dfn class="area">서울</dfn><span>1</span></a></li>
                        <li><a href="#none"><dfn class="area">경기</dfn><span>4</span></a></li>
                        <li><a href="#none"><dfn class="area">인천</dfn><span>1</span></a></li>
                        <li><a href="#none"><dfn class="area">강원</dfn><span>1</span></a></li>
                        <li><a href="#none"><dfn class="area">충청</dfn><span>1</span></a></li>
                        <li><a href="#none"><dfn class="area">전라</dfn><span>2</span></a></li>
                        <li><a href="#none"><dfn class="area">경상</dfn><span>2</span></a></li>
                        <li><a href="#none"><dfn class="area">제주</dfn><span>0</span></a></li>
                    </ul>
                    <!-- //pc용 -->
                    <!-- mobile용 -->
                    <div class="slt-m-full-area pc-hidden">
                        <label for="slt-sorting-area">
                            <select id="slt-sorting-area" class="base-slt">
                                <option>지역을 선택하세요.</option>
                            </select>
                        </label>
                    </div>
                    <!-- //mobile용 -->
                </div>
                <!-- //지도 -->
                <!-- 목록 -->
                <div class="sec-sd-area">
                    <section class="sec-sd">
                        <h3 class="tit08">12월 2주차</h3>
                        <ul class="list-apt ty-col">
                            <li>
                                <div class="li-wrap">
                                    <strong class="cp area">경기</strong>
                                    <dfn class="name-big">평촌 자이 아이파크</dfn>
                                    <span class="date">수원 메쎄 (2021.12.17 ~ 2021.12.19)</span>
                                </div>
                            </li>
                            <li>
                                <div class="li-wrap">
                                    <strong class="cp area">경기</strong>
                                    <dfn class="name-big">시흥 장헌지구 동원로얄듀크 2차</dfn>
                                    <span class="date">호텔 스퀘어 안산 (2021.12.17 ~ 2021.12.19)</span>
                                </div>
                            </li>
                            <li>
                                <div class="li-wrap">
                                    <strong class="cp area">인천</strong>
                                    <dfn class="name-big">평촌 자이 아이파크</dfn>
                                    <span class="date">송도 컨벤시아 (2021.12.17 ~ 2021.12.19)</span>
                                </div>
                            </li>
                            <li>
                                <div class="li-wrap">
                                    <strong class="cp area">경기</strong>
                                    <dfn class="name-big">부천 힐스테이트 중동</dfn>
                                    <span class="date">수원 메쎄 (2021.12.17 ~ 2021.12.19)</span>
                                </div>
                            </li>
                            <li>
                                <div class="li-wrap">
                                    <strong class="cp area">전라</strong>
                                    <dfn class="name-big">힐스테이트 죽림 젠트리스</dfn>
                                    <span class="date">여수 엑스포 (2021.12.17 ~ 2021.12.19)</span>
                                </div>
                            </li>
                        </ul>
                    </section>
                    <section class="sec-sd">
                        <h3 class="tit08">12월 3주차</h3>
                        <ul class="list-apt ty-col">
                            <li>
                                <div class="li-wrap">
                                    <strong class="cp area">서울</strong>
                                    <dfn class="name-big">효성헤링턴 플레이스 홍제</dfn>
                                    <span class="date">그랜드 호텔 (2021.12.19 ~ 2021.12.22)</span>
                                </div>
                            </li>
                            <li>
                                <div class="li-wrap">
                                    <strong class="cp area">경기</strong>
                                    <dfn class="name-big">시흥 장헌지구 동원로얄듀크 3차</dfn>
                                    <span class="date">박람회 장소 확정 후 안내 (2021.12.19 ~ 2021.12.22) </span>
                                </div>
                            </li>
                            <li>
                                <div class="li-wrap">
                                    <strong class="cp area">강원</strong>
                                    <dfn class="name-big">이지더원</dfn>
                                    <span class="date">베어스 호텔 (2021.12.19 ~ 2021.12.22) </span>
                                </div>
                            </li>
                            <li>
                                <div class="li-wrap">
                                    <strong class="cp area">경상</strong>
                                    <dfn class="name-big">문성태안노블리안</dfn>
                                    <span class="date">구미코 (2021.12.19 ~ 2021.12.22) </span>
                                </div>
                            </li>
                            <li>
                                <div class="li-wrap">
                                    <strong class="cp area">경상</strong>
                                    <dfn class="name-big">김해 한라비발디 센텀시티</dfn>
                                    <span class="date">세코 (2021.12.19 ~ 2021.12.22) </span>
                                </div>
                            </li>
                            <li>
                                <div class="li-wrap">
                                    <strong class="cp area">전라</strong>
                                    <dfn class="name-big">학동 대림e편한세상</dfn>
                                    <span class="date">여수 엑스포 (2021.12.19 ~ 2021.12.22) </span>
                                </div>
                            </li>
                            <li>
                                <div class="li-wrap">
                                    <strong class="cp area">충청</strong>
                                    <dfn class="name-big">아산 배방우방아이유쉘1단지</dfn>
                                    <span class="date">박람회 장소 확인 후 안내 (2021.12.19 ~ 2021.12.22) </span>
                                </div>
                            </li>
                        </ul>
                    </section>
                </div>
                <!-- //목록 -->
            </div>
            <!-- //박람회 지도/일정/목록 -->
        </div>
    </div>
    <!-- // contents -->
</div>
<!-- // container -->

<script>
    // 슬라이드
    var imgSwiper = new Swiper(".img-slide", {
        speed : 800,
        slidesPerView: 1,
        loop: true,
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

    // 지도
    function mapChoice(){
        var defaultName = "seoul";

        $(".schedule-map-list li").each(function(){
            var i = $(this).find(".area").text();

            if ( i == "서울" ){ var d = "seoul"; }
            else if ( i == "경기" ){ var d = "gyeonggi"; }
            else if ( i == "인천" ){ var d = "incheon"; }
            else if ( i == "강원" ){ var d = "gangwon"; }
            else if ( i == "충청" ){ var d = "chungcheong"; }
            else if ( i == "전라" ){ var d = "jeolla"; }
            else if ( i == "경상" ){ var d = "gyeongsang"; }
            else if ( i == "제주" ){ var d = "jeju"; };

            $(this).attr("data-area", d);
        });

        $(".schedule-map-list li[data-area='" + defaultName + "']").addClass("on");

        $(document).on("click", ".list-sd-map li a", function(){
            var d = $(this).parent().attr("data-area");
            var s = $(".list-apt [data-area='" + d + "']");

            if ( s ){
                $(".list-apt li").removeClass("on");
                s.addClass("on");
            };

            $(this).parent().addClass("on").siblings().removeClass("on");
        });
    };
    mapChoice();
</script>

<jsp:include page="../../templates/common/footer.jsp" />