<%@ page contentType="text/html; charset=utf-8" %>

<div class="bestshop-sns content-group">
    <div class="content-group-tit">
        <h3>베스트샵 SNS</h3>
        <p>다양한 채널의 베스트샵 SNS를 확인해보세요!</p>
    </div><!-- //.content-group-tit -->
    <div class="content-group-detail">
        <div class="left-cont-wrap">
            <div class="left-cont">
                <em>INSTAGRAM</em>
                <strong>LG Objet Collection - 가전테리어 구매 후기 서울 상도동 편(30초)</strong>
                <span>LG 오브제컬렉션으로 완성한 가전테리어, 소중한 구매 후기 서울 상도동 편 LG 오브제컬렉션으로 완성한 가전테리어를 영상으로 감상해보세요!</span>
                <div class="btn-area">
                    <a href="javascript:void(0);">자세히 보기</a>
                </div>
            </div>
        </div>
        <div class="sns-slide">
            <ul class="swiper-wrapper">
                <li class="swiper-slide">
                    <img src="./images/img_main_sns01.jpg" alt="">
                    <em>INSTAGRAM</em>
                    <strong>LG Objet Collection - 가전테리어 구매 후기 서울 상도동 편(30초)</strong>
                    <span>LG 오브제컬렉션으로 완성한 가전테리어, 소중한 구매 후기 서울 상도동 편 LG 오브제컬렉션으로 완성한 가전테리어를 영상으로 감상해보세요!</span>
                    <p class="btn-area"><a href="javascript:void(0);">자세히 보기</a></p>
                </li>
                <li class="swiper-slide">
                    <img src="./images/img_main_sns02.jpg" alt="">
                    <em>BLOG</em>
                    <strong>LG Objet Collection</strong>
                    <span>LG 오브제컬렉션으로 완성한 가전테리어, 소중한 구매 후기 서울 상도동 편 LG 오브제컬렉션으로 완성한 가전테리어를 영상으로 감상해보세요!</span>
                    <p class="btn-area"><a href="javascript:void(0);">자세히 보기</a></p>
                </li>
                <li class="swiper-slide">
                    <img src="./images/img_main_sns03.jpg" alt="">
                    <em>YOUTUBE</em>
                    <strong>LG Objet Collection - 가전테리어</strong>
                    <span>LG 오브제컬렉션으로 완성한 가전테리어, 소중한 구매 후기 서울 상도동 편 LG 오브제컬렉션으로 완성한 가전테리어를 영상으로 감상해보세요!</span>
                    <p class="btn-area"><a href="javascript:void(0);">자세히 보기</a></p>
                </li>
                <li class="swiper-slide">
                    <img src="./images/img_main_sns04.jpg" alt="">
                    <em>FACEBOOK</em>
                    <strong>LG</strong>
                    <span>LG 오브제컬렉션으로 완성한 가전테리어, 소중한 구매 후기 서울 상도동 편 LG 오브제컬렉션으로 완성한 가전테리어를 영상으로 감상해보세요!</span>
                    <p class="btn-area"><a href="javascript:void(0);">자세히 보기</a></p>
                </li>
            </ul>
        </div><!-- //.sns-slide -->
        <div class="slide-navi outter">
            <div class="slide-navi-detail">
                <div class="swiper-pager">
                    <div class="pager-pagination"></div>
                </div>
                <div class="swiper-auto">
                    <button type="button" class="slideBtn btn-play">슬라이드 재생</button>
                    <button type="button" class="slideBtn btn-stop active">슬라이드 일시정지</button>
                </div>
            </div>
        </div><!-- //.slide-navi -->
    </div><!-- //.content-group-detail -->
    <div class="cont-desc">
        <dl>
            <dt>
                <strong>SNS CHANNAL</strong>
                <span>LG 베스트샵의 소식을 가장 빠르게 만나보세요!</span>
            </dt>
            <dd>
                <ul>
                    <li><a href="https://blog.naver.com/lg-bestshop" class="blog" target="_blank" title="새 창 열림">블로그</a></li>
                    <li><a href="http://www.facebook.com/lgebestshop" class="facebook" target="_blank" title="새 창 열림">페이스북</a></li>
                    <li><a href="https://www.instagram.com/lgbestshop_official" class="instagram" target="_blank" title="새 창 열림">인스타그램</a></li>
                    <li><a href="https://www.youtube.com/channel/UC2KQCsyRDjJ7UToRNO4MOlg" class="youtube" target="_blank" title="새 창 열림">유튜브</a></li>
                    <li><a href="https://tv.naver.com/lgbestshop" class="naverTv" target="_blank" title="새 창 열림">네이버TV</a></li>
                    <li><a href="https://m.post.naver.com/my.nhn?memberNo=28995649" class="naverPost" target="_blank" title="새 창 열림">네이버Post</a></li>
                </ul>
            </dd>
        </dl>
    </div>
</div>
<script>
    var storeBenefit = new Swiper(".sns-slide", {
        autoplay: true,
        centeredSlides: true,
        slidesPerView: 'auto',
        pagination: {
            el: ".bestshop-sns .slide-navi .pager-pagination"
        },
        navigation: {
            nextEl: ".bestshop-sns .slide-navi .slideBtn.btn-next",
            prevEl: ".bestshop-sns .slide-navi .slideBtn.btn-prev"
        },
        on: {
            slideChange: function () {
                $('.left-cont').stop().fadeOut(100);
            }
        }
    });
    storeBenefit.on('transitionEnd', function(){
        var i = parseInt(storeBenefit.realIndex),
            _ths = $('.sns-slide .swiper-slide').eq(i),
            _thsTit = _ths.find('strong').text(),
            _thsDesc = _ths.find('span').text(),
            _thsCate = _ths.find('em').text(),
            _thsLink = _ths.find('a').attr('href'),
            _thsLinkTxt = _ths.find('a').text()

        function changeEv(){
            $('.left-cont strong').text(_thsTit);
            $('.left-cont span').text(_thsDesc);
            $('.left-cont em').text(_thsCate);
            $('.left-cont .btn-area a').attr('href', _thsLink).text(_thsLinkTxt);
            $('.left-cont').stop().fadeIn();
        }
        changeEv();
    });

    // autoplay control
    $('.bestshop-sns .swiper-auto > button').on('click', function(){
        $('.bestshop-sns .swiper-auto > button').toggleClass('active');

        if($(this).hasClass('btn-play')){
            storeBenefit.autoplay.start();
        } else {
            storeBenefit.autoplay.stop();
        }
    });
</script>