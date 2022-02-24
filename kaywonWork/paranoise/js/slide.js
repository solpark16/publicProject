console.log("Script Load");

const IMAGE_WIDTH = 500;
const IMAGE_WIDTH2 = 500;
const IMAGE_WIDTH3 = 500;
const IMAGE_WIDTH4 = 500;

(function($) {
    $(document).ready(function() { 
        console.log('jQuery Ready');

        let isAni = false;
        let cuId = 0;
        let exId = 0;
        let max = void 0;
        const _this = this;

        const $banner = $('.banner1');
        const $wrap = $banner.children('.banner-wrap');
        const $container = $wrap.children('.banner-container');
        const $items = $container.children('.banner-item');
        const $dotNav = $banner.children('.dot-nav');
        const $dot = $dotNav.find('span');
        const $paddleNav = $banner.children('.paddle-nav');
        const $btnPaddle = $paddleNav.find('button.arrow');
        const $btnPaddlePrev = $paddleNav.find('button.arrow.prev');
        const $btnPaddleNext = $paddleNav.find('button.arrow.next');

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
            $btnPaddle.on('click' , handleClickPaddle)
            $dot.on('click', handleClickDot)
        }

        function handleClickPaddle(e) {
            e.preventDefault();
            if (isAni) {
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
            if (exId !== cuId) {
                slideAnimation();
            }
        }

        function slideAnimation() {
            if (!isAni) {
                isAni = true;
            }
            paddleActive();
            dotSelect();
            const left = `${(IMAGE_WIDTH * cuId) * -1}px`;
            const duration = 300 + 100 * Math.abs(cuId - exId);
            const easing = 'easeInSine'
            $container.stop(true).animate({ left }, { duration, easing, complete: function() {
                isAni = false;
                exId = cuId;
            }});
        }

        function handleClickDot(e) {
            e.preventDefault();
            if (isAni) {
                return;
            }
            const idx = $dot.index(this);
            if (exId !== idx) {
                cuId = idx
                slideAnimation();
            }
        }

        function paddleActive() {
            $btnPaddlePrev.removeClass('disabled');
            $btnPaddleNext.removeClass('disabled');
            if (cuId === 0) {
                $btnPaddlePrev.addClass('disabled');
            } else if (cuId === max - 1) {
                $btnPaddleNext.addClass('disabled');
            }
        }

        function dotSelect() {
            $dot.removeClass('selected');
            $dot.eq(cuId).addClass('selected');
        }

        function reset() {
            isAni = false;
            paddleActive();
            dotSelect();
        }

        init();
    

    // para2
    let isAni2 = false;
    let cuId2 = 0;
    let exId2 = 0;
    let max2 = void 0;
    const _this2 = this;

    const $banner2 = $('.banner2');
    const $wrap2 = $banner2.children('.banner-wrap');
    const $container2 = $wrap2.children('.banner-container');
    console.log($container2);
    const $items2 = $container2.children('.banner-item');
    const $dotNav2 = $banner2.children('.dot-nav');
    const $dot2 = $dotNav2.find('span');
    const $paddleNav2 = $banner2.children('.paddle-nav');
    const $btnPaddle2 = $paddleNav2.find('button.arrow');
    const $btnPaddlePrev2 = $paddleNav2.find('button.arrow.prev');
    const $btnPaddleNext2 = $paddleNav2.find('button.arrow.next');

    function init2() {
        setting2();
        addEvent2();
        reset2();
    }

    function setting2() {
        cuId2 = 0;
        exId2 = cuId2;
        max2 = $items2.length;
    }

    function addEvent2() {
        $btnPaddle2.on('click' , handleClickPaddle2)
        $dot2.on('click', handleClickDot2)
    }

    function handleClickPaddle2(e) {
        e.preventDefault();
        if (isAni2) {
            return;
        }
        const $el2 = $(this);
        // console.log($el2)
        if ($el2.is($btnPaddlePrev2)) {
            cuId2 -= 1;
            if (cuId2 < 0) {
                cuId2 = 0;
            }
            console.log("hey~")
        } else if ($el2.is($btnPaddleNext2)) {
            cuId2 += 1;
            if (cuId2 > max2 - 1) {
                cuId2 = max2 - 1;
            }
        }
        if (exId2 !== cuId2) {
            slideAnimation2();
        }
    }

    function slideAnimation2() {
        if (!isAni2) {
            isAni2 = true;
        }
        paddleActive2();
        dotSelect2();
        const left = `${(IMAGE_WIDTH2 * cuId2) * -1}px`;
        const duration2 = 300 + 100 * Math.abs(cuId2 - exId2);
        const easing2 = 'easeInSine'
        $container2.stop(true).animate({ left }, { duration2, easing2, complete: function() {
            isAni2 = false;
            exId2 = cuId2;
        }});
    }

    function handleClickDot2(e) {
        e.preventDefault();
        if (isAni2) {
            return;
        }
        const idx2 = $dot2.index(this);
        if (exId2 !== idx2) {
            cuId2 = idx2
            slideAnimation2();
        }
    }

    function paddleActive2() {
        $btnPaddlePrev2.removeClass('disabled');
        $btnPaddleNext2.removeClass('disabled');
        if (cuId2 === 0) {
            $btnPaddlePrev2.addClass('disabled');
        } else if (cuId2 === max2 - 1) {
            $btnPaddleNext2.addClass('disabled');
        }
    }

    function dotSelect2() {
        $dot2.removeClass('selected');
        $dot2.eq(cuId2).addClass('selected');
    }

    function reset2() {
        isAni2 = false;
        paddleActive2();
        dotSelect2();
    }

    init2();



    // para3
    let isAni3 = false;
    let cuId3 = 0;
    let exId3 = 0;
    let max3 = void 0;
    const _this3 = this;

    const $banner3 = $('.banner3');
    const $wrap3 = $banner3.children('.banner-wrap');
    const $container3 = $wrap3.children('.banner-container');
    console.log($container3);
    const $items3 = $container3.children('.banner-item');
    const $dotNav3 = $banner3.children('.dot-nav');
    const $dot3 = $dotNav3.find('span');
    const $paddleNav3 = $banner3.children('.paddle-nav');
    const $btnPaddle3 = $paddleNav3.find('button.arrow');
    const $btnPaddlePrev3 = $paddleNav3.find('button.arrow.prev');
    const $btnPaddleNext3 = $paddleNav3.find('button.arrow.next');

    function init3() {
        setting3();
        addEvent3();
        reset3();
    }

    function setting3() {
        cuId3 = 0;
        exId3 = cuId3;
        max3 = $items3.length;
    }

    function addEvent3() {
        $btnPaddle3.on('click' , handleClickPaddle3)
        $dot3.on('click', handleClickDot3)
    }

    function handleClickPaddle3(e) {
        e.preventDefault();
        if (isAni3) {
            return;
        }
        const $el3 = $(this);
        // console.log($el3)
        if ($el3.is($btnPaddlePrev3)) {
            cuId3 -= 1;
            if (cuId3 < 0) {
                cuId3 = 0;
            }
            console.log("hey~")
        } else if ($el3.is($btnPaddleNext3)) {
            cuId3 += 1;
            if (cuId3 > max3 - 1) {
                cuId3 = max3 - 1;
            }
        }
        if (exId3 !== cuId3) {
            slideAnimation3();
        }
    }

    function slideAnimation3() {
        if (!isAni3) {
            isAni3 = true;
        }
        paddleActive3();
        dotSelect3();
        const left = `${(IMAGE_WIDTH3 * cuId3) * -1}px`;
        const duration3 = 300 + 100 * Math.abs(cuId3 - exId3);
        const easing3 = 'easeInSine'
        $container3.stop(true).animate({ left }, { duration3, easing3, complete: function() {
            isAni3 = false;
            exId3 = cuId3;
        }});
    }

    function handleClickDot3(e) {
        e.preventDefault();
        if (isAni3) {
            return;
        }
        const idx3 = $dot3.index(this);
        if (exId3 !== idx3) {
            cuId3 = idx3
            slideAnimation3();
        }
    }

    function paddleActive3() {
        $btnPaddlePrev3.removeClass('disabled');
        $btnPaddleNext3.removeClass('disabled');
        if (cuId3 === 0) {
            $btnPaddlePrev3.addClass('disabled');
        } else if (cuId3 === max3 - 1) {
            $btnPaddleNext3.addClass('disabled');
        }
    }

    function dotSelect3() {
        $dot3.removeClass('selected');
        $dot3.eq(cuId3).addClass('selected');
    }

    function reset3() {
        isAni3 = false;
        paddleActive3();
        dotSelect3();
    }

    init3();

    
    // para4
    let isAni4 = false;
    let cuId4 = 0;
    let exId4 = 0;
    let max4 = void 0;
    const _this4 = this;

    const $banner4 = $('.banner4');
    const $wrap4 = $banner4.children('.banner-wrap');
    const $container4 = $wrap4.children('.banner-container');
    console.log($container4);
    const $items4 = $container4.children('.banner-item');
    const $dotNav4 = $banner4.children('.dot-nav');
    const $dot4 = $dotNav4.find('span');
    const $paddleNav4 = $banner4.children('.paddle-nav');
    const $btnPaddle4 = $paddleNav4.find('button.arrow');
    const $btnPaddlePrev4 = $paddleNav4.find('button.arrow.prev');
    const $btnPaddleNext4 = $paddleNav4.find('button.arrow.next');

    function init4() {
        setting4();
        addEvent4();
        reset4();
    }

    function setting4() {
        cuId4 = 0;
        exId4 = cuId4;
        max4 = $items4.length;
    }

    function addEvent4() {
        $btnPaddle4.on('click' , handleClickPaddle4)
        $dot4.on('click', handleClickDot4)
    }

    function handleClickPaddle4(e) {
        e.preventDefault();
        if (isAni4) {
            return;
        }
        const $el4 = $(this);
        // console.log($el4)
        if ($el4.is($btnPaddlePrev4)) {
            cuId4 -= 1;
            if (cuId4 < 0) {
                cuId4 = 0;
            }
            console.log("hey~")
        } else if ($el4.is($btnPaddleNext4)) {
            cuId4 += 1;
            if (cuId4 > max4 - 1) {
                cuId4 = max4 - 1;
            }
        }
        if (exId4 !== cuId4) {
            slideAnimation4();
        }
    }

    function slideAnimation4() {
        if (!isAni4) {
            isAni4 = true;
        }
        paddleActive4();
        dotSelect4();
        const left = `${(IMAGE_WIDTH4 * cuId4) * -1}px`;
        const duration4 = 400 + 100 * Math.abs(cuId4 - exId4);
        const easing4 = 'easeInSine'
        $container4.stop(true).animate({ left }, { duration4, easing4, complete: function() {
            isAni4 = false;
            exId4 = cuId4;
        }});
    }

    function handleClickDot4(e) {
        e.preventDefault();
        if (isAni4) {
            return;
        }
        const idx4 = $dot4.index(this);
        if (exId4 !== idx4) {
            cuId4 = idx4
            slideAnimation4();
        }
    }

    function paddleActive4() {
        $btnPaddlePrev4.removeClass('disabled');
        $btnPaddleNext4.removeClass('disabled');
        if (cuId4 === 0) {
            $btnPaddlePrev4.addClass('disabled');
        } else if (cuId4 === max4 - 1) {
            $btnPaddleNext4.addClass('disabled');
        }
    }

    function dotSelect4() {
        $dot4.removeClass('selected');
        $dot4.eq(cuId4).addClass('selected');
    }

    function reset4() {
        isAni4 = false;
        paddleActive4();
        dotSelect4();
    }

    init4();
});

})(jQuery);

// para2

