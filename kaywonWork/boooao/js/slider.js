(function($) {
    $(document).ready(function() {

        let cuId = 0;
        let exId = 0;
        let max = void 0
        let bannerWidth = 0;
        let bannerHeight = 0;

        const _this = this;

        const $win = $(window);
        const $banner = $('.banner');
        const $wrap = $banner.children('.banner-wrap');
        const $container = $wrap.children('.banner-container');
        const $items = $container.children('.banner-item');
        const $paddleNav = $banner.children('.paddle-nav');
        const $btnPaddle = $paddleNav.find('button.arrow');
        const $btnPaddlePrev = $paddleNav.find('button.arrow.prev');
        const $btnPaddleNext = $paddleNav.find('button.arrow.next');
        const $img2017 = $('.banner .banner-container .banner-item:nth-child(5) img');
        const $img2018 = $('.banner .banner-container .banner-item:nth-child(4) .image-area');
        const $img2019 = $('.banner .banner-container .banner-item:nth-child(3) img');
        const $img2020 = $('.banner .banner-container .banner-item:nth-child(2) img');

        function init() {
            setting();
            addEvent();
            reset();
        }

        function setting() {
            cuId = 0;
            exId = cuId;
            max = $items.length;
        }

        function addEvent() {
            $win.on('resize', handleResizeWindow).trigger('resize');
            $btnPaddle.on('click' , handleClickPaddle)
        }

        function handleResizeWindow(){
            bannerWidth = $win.width();
            bannerHeight = $win.height();
            $banner.width(bannerWidth).height(bannerHeight);
            $container.width(bannerWidth * max);

            slideAnimation(true);
        }

        function handleClickPaddle(e) {
            e.preventDefault();

            if(isAni){
                return;
            }

            const $el = $(this);
            if ($el.is($btnPaddlePrev)) {
                cuId -= 1;
                if (cuId < 0) {
                    cuId = 0;
                }
            } else if ($el.is($btnPaddleNext)) {
                cuId += 1;
                if (cuId > max - 1) {
                    cuId = max - 1;
                }
            }
            if(exId !== cuId){
                slideAnimation();
                imgAni();
            }
        }

        function slideAnimation(isResize = false){
            const left = `${(bannerWidth * cuId) * -1}px`;

            if(!isResize){
                if(!isAni){
                    isAni = true;
                }
    
                paddleActive();

                const duration = 300 + 100 * Math.abs(cuId - exId);
                const easing = 'easeOutSine';

                $container.stop(true).animate({ left }, { duration, easing, complete: function(){
                    exId = cuId;
                    isAni = false;
                } });
            }
            else{
                isAni = false;
                $container.stop(true).css({left});
                exId = cuId;
            }
        }

        function paddleActive(){
            $btnPaddlePrev.removeClass('disabled');
            $btnPaddleNext.removeClass('disabled');
            if(cuId === 0){
                $btnPaddlePrev.addClass('disabled');
            }
            else if(cuId === max - 1){
                $btnPaddleNext.addClass('disabled');
            }
        }

        function imgAni () {
            if(cuId === 0){
                $img2020.removeClass('on');
            } else if (cuId === 1) {
                $img2019.removeClass('on');
                $img2020.addClass('on');
            } else if (cuId === 2) {
                $img2018.removeClass('on');
                $img2019.addClass('on');
                $img2020.removeClass('on');
            } else if (cuId === 3) {
                $img2018.addClass('on');
                $img2019.removeClass('on');
                $img2017.removeClass('on');
            } else if (cuId === 4) {
                $img2017.addClass('on');
                $img2018.removeClass('on');
            } else {
                $img2020.removeClass('on');
                $img2019.removeClass('on');
                $img2018.removeClass('on');
                $img2017.removeClass('on');
            }
        }

        function reset() {
            isAni = false;
            paddleActive();
        }

        init();
    });
})(jQuery);