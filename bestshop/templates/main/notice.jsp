<%@ page contentType="text/html; charset=utf-8" %>

<div class="main-notice">
    <strong class="notice-tit">NOTICE</strong>
    <div class="notice-slide">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <a href="javascript:void(0);">LG전자 서비스 이용약관 및 개인 정보 처리방침 개정 안내</a>
            </div>
            <div class="swiper-slide">
                <a href="javascript:void(0);">TEST</a>
            </div>
            <div class="swiper-slide">
                <a href="javascript:void(0);">LG전자 서비스 이용약관 및</a>
            </div>
            <div class="swiper-slide">
                <a href="javascript:void(0);">LG전자 서비스 이용약관 및 개인 정보 처리방침 개정 안내</a>
            </div>
            <div class="swiper-slide">
                <a href="javascript:void(0);">TEST</a>
            </div>
            <div class="swiper-slide">
                <a href="javascript:void(0);">LG전자 서비스 이용약관 및</a>
            </div>
        </div>
    </div>
    <div class="slide-navi">
        <div class="slide-navi-detail">
            <div class="swiper-pager">
                <button type="button" class="slideBtn btn-prev">이전 슬라이드</button>
                <button type="button" class="slideBtn btn-next">다음 슬라이드</button>
            </div>
            <div class="swiper-auto">
                <button type="button" class="slideBtn btn-play">슬라이드 재생</button>
                <button type="button" class="slideBtn btn-stop active">슬라이드 일시정지</button>
            </div>
        </div>
    </div><!-- //.slide-navi -->
</div>

<script>
    var mainNotice = new Swiper(".notice-slide", {
        autoplay: true,
        direction: 'vertical',
        navigation: {
          nextEl: ".main-notice .slideBtn.btn-next",
          prevEl: ".main-notice .slideBtn.btn-prev",
        },
    });

    // autoplay control
    $('.main-notice .swiper-auto > button').on('click', function(){
        $('.main-notice .swiper-auto > button').toggleClass('active');

        if($(this).hasClass('btn-play')){
            mainNotice.autoplay.start();
        } else {
            mainNotice.autoplay.stop();
        }
    });
</script> 