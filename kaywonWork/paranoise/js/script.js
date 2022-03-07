var timeout;
 
// 휠이벤트가 발생하면
window.onwheel = function(){
    clearTimeout(timeout);  //이전 휠 이벤트 제거
    timeout = setTimeout(function(){ //다시 휠 이벤트 발생  0.1초후
        
    }, 1000);
};

window.onload = function () {
    var elm = ".scrollTo";
    $(elm).each(function (index) {
        // 개별적으로 Wheel 이벤트 적용
        $(this).on("mousewheel DOMMouseScroll", function (e) {
            e.preventDefault();
            var delta = 0;
            if (!event) event = window.event;
            if (event.wheelDelta) {
                delta = event.wheelDelta / 120;
                if (window.opera) delta = -delta;
            } 
            else if (event.detail)
                delta = -event.detail / 3;
            var moveTop = $(window).scrollTop();
            var elmSelecter = $(elm).eq(index);
            // 마우스휠을 위에서 아래로
            if (delta < 0) {
                if ($(elmSelecter).next() != undefined) {
                    try{
                        moveTop = $(elmSelecter).next().offset().top;
                    }catch(e){
                        
                    }
                }
            // 마우스휠을 아래에서 위로
            } else {
                if ($(elmSelecter).prev() != undefined) {
                    try{
                        moveTop = $(elmSelecter).prev().offset().top;
                    }catch(e){}
                }
            }
             
            // 화면 이동 0.8초(800)
            $("html,body").stop().animate({
                scrollTop: moveTop + 'px'
            }, {
                duration: 600, complete: function () {
                }
            });
        });
    });
}
(function (global, $) {

    var $menu = $('.floating-menu li'),
        $contents = $('.scroll'),
        $doc = $('html, body');
    $(function () {
        // 해당 섹션으로 스크롤 이동
        // span 내껄로 바꿔
        $menu.on('click', 'span', function (e) {
            var $target = $(this).parent(),
                idx = $target.index(),
                section = $contents.eq(idx),
                offsetTop = section.offset().top;
            $doc.stop().animate({ scrollTop: offsetTop }, 600);
            return false;
        });
    });

    // menu class 추가
    $(window).scroll(function () {
        var scltop = $(window).scrollTop();
        $.each($contents, function (idx, item) {
            var $target = $contents.eq(idx),
                idx = $target.index(),
                targetTop = $target.offset().top;

            if (targetTop < scltop) {
                $menu.removeClass('on');
                $menu.eq(idx).addClass('on');
            }
            if (!(200 < scltop)) {
                $menu.removeClass('on');
            }
        })

    });

    // Go to the TOP





}(window, window.jQuery));




// collabo script
const $collaboLogo = $('.collaboLogo');
const $damage1 = $('.damage1');
var ani0 = false;
$(".sectionMain").on('mousewheel', function (e) {
    var wheel = e.originalEvent.wheelDelta;
    if (wheel > 0) {
    } else {
        //스크롤  내릴때 
        if (ani0 == false) {
            ani0 = true;
            $collaboLogo.css({
                'animation-name': 'opacityAni',
                'animation-duration': '1s',
                'animation-fill-mode': 'forwards',
                'animation-delay': '2s'
            });
            $damage1.css({
                'animation-name': 'opacityAni',
                'animation-duration': '1s',
                'animation-fill-mode': 'forwards',
                'animation-delay': '1s'
            });
        }
    }
});
// about script
const $damage2 = $('.damage2');
var ani1 = false;
$(".sectionCollabo").on('mousewheel', function (e) {
    var wheel = e.originalEvent.wheelDelta;
    if (wheel > 0) {
    } else {
        //스크롤  내릴때 
        if (ani1 == false) {
            ani1 = true;
            $damage2.css({
                'animation-name': 'opacityAni',
                'animation-duration': '1s',
                'animation-fill-mode': 'forwards',
                'animation-delay': '1s'
            });
        }
    }
});
// noise script
const $damage3 = $('.damage3');
var ani2 = false;
$(".sectionAbout").on('mousewheel', function (e) {
    var wheel = e.originalEvent.wheelDelta;
    if (wheel > 0) {
    } else {
        //스크롤  내릴때 
        if (ani2 == false) {
            ani2 = true;
            $damage3.css({
                'animation-name': 'opacityAni',
                'animation-duration': '1s',
                'animation-fill-mode': 'forwards',
                'animation-delay': '1s'
            });
        }
    }
});
// shoes script
const $damage4 = $('.damage4');
var ani3 = false;
$(".sectionNoise").on('mousewheel', function (e) {
    var wheel = e.originalEvent.wheelDelta;
    if (wheel > 0) {
    } else {
        //스크롤  내릴때 
        if (ani3 == false) {
            ani3 = true;
            $damage4.css({
                'animation-name': 'opacityAni',
                'animation-duration': '1s',
                'animation-fill-mode': 'forwards',
                'animation-delay': '1s'
            });
        }
    }
});
// event script
const $damage5 = $('.damage5');
var ani4 = false;
$(".sectionShoes1").on('mousewheel', function (e) {
    var wheel = e.originalEvent.wheelDelta;
    if (wheel > 0) {
        $('.shoesLeft').removeClass('fixed')
        $('.damage4').removeClass('fixed')
    } else {
        //스크롤  내릴때 
        if (ani4 == false) {
            ani4 = true;
        }
        $('.shoesLeft').addClass('fixed')
        $('.damage4').addClass('fixed')
        $('.korEx').addClass('on')
    }
});
$(".sectionShoes2").on('mousewheel', function (e) {
    var wheel = e.originalEvent.wheelDelta;
    if (wheel > 0) {
        // 스크롤 올릴때
        $('.korEx').removeClass('on')
    } else {
        //스크롤  내릴때 
        $('.korEx').removeClass('on')
        $('.fnf').addClass('on')

    }
});

$(".sectionShoes3").on('mousewheel', function (e) {
    var wheel = e.originalEvent.wheelDelta;
    if (wheel > 0) {
        $('.korEx').addClass('on')
        $('.fnf').removeClass('on')
    } else {
        //스크롤  내릴때 
        $('.fnf').removeClass('on')
        $('.shoesLeft').addClass('up')
    }
});
$(".sectionShoes4").on('mousewheel', function (e) {
    var wheel = e.originalEvent.wheelDelta;
    if (wheel > 0) {
        $('.fnf').addClass('on')
        $('.shoesLeft').removeClass('up')
        $('.shoesLeft2').removeClass('fixed')
    } else {
        //스크롤  내릴때 
        if (ani4 == false) {
            ani4 = true;
        }
        $('.shoesLeft2').addClass('fixed')
        $('.shoesLeft2').addClass('up')
        $('.damage4').addClass('up')
        $damage5.css({
            'animation-name': 'opacityAni',
            'animation-duration': '1s',
            'animation-fill-mode': 'forwards',
            'animation-delay': '1s'
        });
    }
});
$(".sectionEvent").on('mousewheel', function (e) {
    var wheel = e.originalEvent.wheelDelta;
    if (wheel > 0) {
        $('.shoesLeft2').removeClass('up')
        $('.damage4').removeClass('up')
    } else {
        //스크롤  내릴때 
        if (ani4 == false) {
        }
    }
});

// 
var audio = {};
audio["noise1"] = new Audio();
audio["noise1"].src = "./audio/sound1.mp3"
audio["noise2"] = new Audio();
audio["noise2"].src = "./audio/sound2.mp3"
audio["noise3"] = new Audio();
audio["noise3"].src = "./audio/sound3.mp3"
audio["noise4"] = new Audio();
audio["noise4"].src = "./audio/sound4.mp3"
audio["noise5"] = new Audio();
audio["noise5"].src = "./audio/sound5.mp3"

$('.noise1').click(function(){
    $('.noise1 a').css({
        'color':'red'
    })
    audio["noise1"].play();
    audio["noise2"].pause();
    audio["noise3"].pause();
    audio["noise4"].pause();
    audio["noise5"].pause();

  });
$('.noise2').click(function(){
    $('.noise2 a').css({
        'color':'yellow'
    })
    audio["noise1"].pause();
    audio["noise2"].play();
    audio["noise3"].pause();
    audio["noise4"].pause();
    audio["noise5"].pause();
  });
$('.noise3').click(function(){
    $('.noise3 a').css({
        'color':'red'
    })
    audio["noise1"].pause();
    audio["noise2"].pause();
    audio["noise3"].play();
    audio["noise4"].pause();
    audio["noise5"].pause();
  });
$('.noise4').click(function(){
    $('.noise4 a').css({
        'color':'yellow'
    })
    audio["noise1"].pause();
    audio["noise2"].pause();
    audio["noise3"].pause();
    audio["noise4"].play();
    audio["noise5"].pause();
  });
$('.noise5').click(function(){
    $('.noise5 a').css({
        'color':'red'
    })
    audio["noise1"].pause();
    audio["noise2"].pause();
    audio["noise3"].pause();
    audio["noise4"].pause();
    audio["noise5"].play();
  });

$('.eventLi1').mouseover(function(){
    $('.event1').css({
        'display':'block'
    })
});
$('.eventLi1').mouseleave(function(){
    $('.event1').css({
        'display':'none'
    })
});
$('.eventLi2').mouseover(function(){
    $('.event2').css({
        'display':'block'
    })
});
$('.eventLi2').mouseleave(function(){
    $('.event2').css({
        'display':'none'
    })
});