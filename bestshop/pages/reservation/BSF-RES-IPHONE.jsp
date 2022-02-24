<%@ page contentType="text/html; charset=utf-8" %>
<jsp:include page="../../templates/common/header.jsp" />

<!-- container -->
<div class="container" id="content">
    <div class="page-header">
        <h2 class="title">아이폰 상담 예약</h2>
    </div>
    <!-- contents -->
    <div class="contents res-main">
        <div class="cont-wrap">
            <div class="detail-thum">
                <img src="../../images/temp_img_iphone.png" alt="해당 이미지 ALT" />
            </div>
            <section class="cont-area">
                <p class="step-top-note"><sup>*</sup>필수입력항목</p>
                <jsp:include page="../../templates/reservation/iphone_step.jsp" /><!-- step iphone -->
            </section>
        </div>

        <!-- 하단바 -->
        <div class="bottom-fixed-wrap"><!-- active 클래스 추가 -->
            <div class="dimmed"></div>
            <div class="bar-wrap">
                <div class="head-area">
                    <p class="head-txt">혼수, TV 외 3개, 1개월 내, 강남본점, 12. 15(수), 17시</p>
                    <button type="button" class="view-more"><span class="blind">펼쳐보기</span></button>
                </div>
                <div class="body-area">
                    <div class="my-result">
                        <ul>
                            <li>
                                <span>상담목적</span>
                                <strong>혼수</strong>
                            </li>
                            <li>
                                <span>상담제품</span>
                                <strong>TV, 냉장고, 식기세척기, 세탁기, 스타일러, 공기청정기, 에어컨</strong>
                            </li>
                            <li>
                                <span>상담매장</span>
                                <strong>강남본점, 12. 15(수), 17시</strong>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- // 하단바 -->
    </div>
    <!-- // contents -->
</div>
<!-- // container -->

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
        var resbanner01 = new Swiper(".guide-banner-visit", {
            slidesPerView: 'auto',
            scrollbar: {
                el: ".swiper-scrollbar",
                draggable: true,
                // hide: true,
            },
        })

        // 배너
        var resbanner01 = new Swiper(".res-banner-01", {
            spaceBetween: 40,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'bullets',
            },
            autoplay: {
                delay: 3000,
            },
        });
        // play/stop 버튼
        $('.btn-play').click(function(){
            if ($(this).hasClass('pause')) {
                resbanner01.autoplay.start();
                $(this).removeClass('pause');
                $(this).find('.blind').text('멈춤');
            } else {
                resbanner01.autoplay.stop();
                $(this).addClass('pause');
                $(this).find('.blind').text('재생');
            }
            return false;
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

        // step 3 지도 매장리스트보기 버튼
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

        // 모바일 하단바 영역
        $('.bar-wrap .head-area').on('click', function () {
            $('html').toggleClass('scroll-fixed');
            $(this).closest('.bottom-fixed-wrap').toggleClass('active');
            $('.body-area').stop().slideToggle();
            $('.bottom-fixed-wrap .dimmed').stop().fadeToggle(200);
        });

    });
</script>

<jsp:include page="../../templates/common/footer.jsp" />