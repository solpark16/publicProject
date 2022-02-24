console.log("Script Load");
(function($) {
    $(document).ready(function() {
        // console.log('jQuery Ready');
    });
})(jQuery);

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
// (function (global, $) {

    // var $menu = $('.floating-menu li'),
    //     $contents = $('.scroll'),
    //     $doc = $('html, body');
    // $(function () {
    //     // 해당 섹션으로 스크롤 이동
    //     // span 내껄로 바꿔
    //     $menu.on('click', 'span', function (e) {
    //         var $target = $(this).parent(),
    //             idx = $target.index(),
    //             section = $contents.eq(idx),
    //             offsetTop = section.offset().top;
    //         $doc.stop().animate({ scrollTop: offsetTop }, 600);
    //         return false;
    //     });
    // });

    // menu class 추가
    // $(window).scroll(function () {
    //     var scltop = $(window).scrollTop();
    //     $.each($contents, function (idx, item) {
    //         var $target = $contents.eq(idx),
    //             idx = $target.index(),
    //             targetTop = $target.offset().top;

    //         if (targetTop < scltop) {
    //             $menu.removeClass('on');
    //             $menu.eq(idx).addClass('on');
    //         }
    //         if (!(200 < scltop)) {
    //             $menu.removeClass('on');
    //         }
    //     })

    // });

    // Go to the TOP





// }(window, window.jQuery));




// collabo script
const $collaboLogo = $('.collaboLogo');
const $damage1 = $('.damage1');

const videoEls = document.querySelectorAll('.mainVideo');
console.log(videoEls);

const $mainVideo = $('mainVideo');

const $mainVideo0 = $('.mainVideo0');
const $mainVideo1 = $('.mainVideo1');
const $mainVideo2 = $('.mainVideo2');

const $video0 = $('');
const $video1 = $('.video1');
// const $video1 = $('.mainVideo1 video');
// console.log($video1)
const $video2 = $('.video2');

const $video1Re = $('.video1Re');
const $video2Re = $('.video2Re');

var ani0 = true;
var ani1 = false;
var ani2 = false;

let videoIndex = 0;




$(".videoSection").on('mousewheel', function (e) {
    console.log("될거여.");
    $mainVideo0.empty();
    $mainVideo1.empty();
    $mainVideo2.empty();
    var wheel = e.originalEvent.wheelDelta;
    // for(let i = 0; i < videoEls.length; i++){
    //         videoEls[i].style.display = "none";
    // }
    // videoEls[videoIndex].style.display = 'block';

    if (wheel > 0) {
        console.log("위로");
        if (videoIndex == 3) {
            // $('.videoSection').removeClass('scrollTo');
        }
        else if (videoIndex == 2) {
            // 두번째 섹션일때
            console.log("세번쨰에서 두번째로 가는거여")
            videoIndex--;
            $mainVideo0.css({'display': 'none'});
            $mainVideo1.css({'display': 'block'});
            $mainVideo2.css({'display': 'none'});
            // $video1.css({'display': 'none'});
            // $video2Re.css({'display': 'block'});
            $('.videoSection').removeClass('scrollTo');
            $mainVideo1.append(`<video muted autoplay width="421" class="video2Re">
            <source src="./mp4/mainVideo1Reverse.mp4" type="video/mp4">
        </video>`)
        }
        else if (videoIndex == 1) {
            // $mainVideo0.empty();
            // 첫번째 섹션일때
            videoIndex--;

            console.log('3sec 위로 올릴때');
            $mainVideo0.css({'display': 'block'});
            $mainVideo1.css({'display': 'none'});
            $mainVideo2.css({'display': 'none'});
            // $video1Re.css({'display': 'block'});

            $mainVideo0.append(`<video muted autoplay width="421" class="video1Re">
            <source src="./mp4/mainVideo0Reverse.mp4" type="video/mp4">
            </video>`)
        }
    } else {
        console.log("밑으로");
        //스크롤  내릴때 
        if (videoIndex == 0) {
            // 두번째 섹션일때
            videoIndex++;
            console.log("두번째 섹션");
            // console.log(videoEls[videoIndex]);
            $mainVideo0.css({'display': 'none'});
            $mainVideo1.css({'display': 'block'});
            $mainVideo2.css({'display': 'none'});
            // $video1.css({'display': 'block'});
            // $video2Re.css({'display': 'none'});
            // $video1.play();

            $mainVideo1.append(`<video muted autoplay width="421" class="video1">
            <source src="./mp4/mainVideo0.mp4" type="video/mp4"></video>`)
            
            
        }
        else if (videoIndex == 1) {
            // 세번째 섹션일때
            videoIndex++;
            console.log("------------------------------");
            console.log("3sec");
            $mainVideo0.css({'display': 'none'});
            $mainVideo1.css({'display': 'none'});
            $mainVideo2.css({'display': 'block'});
            $video2.css({'display': 'block'});
            $mainVideo2.append(`<video muted autoplay width="421" class="video2">
            <source src="./mp4/mainVideo1.mp4" type="video/mp4">
            </video>`)
            
            $('.videoSection').addClass('scrollTo');
            
        }

        console.log(videoIndex,":vid");
        
    }
    damn();
});
// let sectionIndex = 0;
// let mouseDiff = 0;
// const sectionEls = document.querySelectorAll('.sectionEls');

// function sectionControll(){
//     for(let i = 0; i < sectionEls.length; i++){
//         if(i !== sectionIndex){
//             sectionEls[i].style.display = "none";
//         }
//     }
//     sectionEls[sectionIndex].style.display = 'block';

//     if(mouseDiff > 0){
//         sectionEls[sectionIndex]
//     }else if(mouseDiff < 0){
//         sectionEls[sectionIndex]
//     }
// }
// function onScrollWin(e){
//     const wheel = e.wheelDelta;
//     mouseDiff = wheel;
//     if(wheel > 0){
//         sectionIndex++;
//     }else if(wheel < 0){
//         sectionIndex--;
//     }
//     sectionControll();
// }
// window.addEventListener('scroll', onScrollWin);

function damn() {
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



$(".testSection").on('mousewheel', function (e) {
    
    console.log("테스트섹션도 되는거여.");
    // $mainVideo0.empty();
    // $mainVideo1.empty();
    // $mainVideo2.empty();
    var wheel = e.originalEvent.wheelDelta;
    // for(let i = 0; i < videoEls.length; i++){
    //         videoEls[i].style.display = "none";
    // }
    // videoEls[videoIndex].style.display = 'block';

    if (wheel > 0) {
        console.log("위로");
        
    } else {
        console.log("밑으로");
        //스크롤  내릴때 
        
    }
});