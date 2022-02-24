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


// 커서

var cursorDotEl = document.querySelector("#cursor-dot"),
    cursorBGEl = document.querySelector("#cursor-bg"),
    progressEl = document.querySelector("#progress"),
    listEl = document.querySelector("#list"),
    btnListEl = listEl.querySelectorAll("a");
btnListEl = Array.prototype.slice.call(btnListEl);
function onMouseMoveWindow(e) {
    gsap.killTweensOf(cursorDotEl);
    gsap.to(cursorDotEl, {top: e.pageY, left: e.pageX, duration: 0.1});
    gsap.killTweensOf(cursorBGEl);
    gsap.to(cursorBGEl, {top: e.pageY, left: e.pageX, duration: 0.3, ease: "sine.Out"});
    gsap.killTweensOf(progressEl);
    gsap.to(progressEl, {top: e.pageY, left: e.pageX, duration: 0.25, ease: "sine.Out"});
}
function onClickList(e) {
    e.preventDefault();
    var index = btnListEl.indexOf(e.currentTarget);
    console.log(index);
}
function onMouseEnterList() {
    if(!cursorBGEl.classList.contains("active")){
        cursorBGEl.classList.add("active");
    }
    if(!progressEl.classList.contains("active")){
        progressEl.classList.add("active");
    }
}
function onMouseLeaveList() {
    if(cursorBGEl.classList.contains("active")){
        cursorBGEl.classList.remove("active");
    }
    if(progressEl.classList.contains("active")){
        progressEl.classList.remove("active");
    }
}
function addEvent() {
    window.addEventListener("mousemove", onMouseMoveWindow);
    for(var i = 0; i < btnListEl.length; i++){
        btnListEl[i].addEventListener("click", onClickList);
        btnListEl[i].addEventListener("mouseenter", onMouseEnterList);
        btnListEl[i].addEventListener("mouseleave", onMouseLeaveList);
    }
}
function init() {
    addEvent();
}
init();

// 휠스크롤 이벤또

// section2 (Project Goal1)
var section2Img = document.getElementById("section2Image");
var section2Txt = document.getElementById("section2Text");
var ani0 = false;
$("#section1").on('mousewheel', function (e) {
    var wheel = e.originalEvent.wheelDelta;
    if (wheel > 0) {

    } else {
        //스크롤  내릴때 
        if (ani0 == false) {
            ani0 = true;
            console.log("duishgie");

            section2Img.style.animationName="section2Move";
            section2Img.style.animationDuration = "1s";
            section2Img.style.animationFillMode = "forwards";
            section2Img.style.animationDelay = '0.7s';

            section2Txt.style.animationName="section2Move2";
            section2Txt.style.animationDuration = "1s";
            section2Txt.style.animationFillMode = "forwards";
            section2Txt.style.animationDelay = '2s';
        }

    }

});



// section3 (Project Goal2)
var section3Img = document.getElementById("section3Image");
var ani1 = false;
$("#section2").on('mousewheel', function (e) {
    var wheel = e.originalEvent.wheelDelta;
    if (wheel > 0) {

    } else {
        //스크롤  내릴때 
        if (ani1 == false) {
            ani1 = true;
            console.log("duishgie");

            // elems.style.opacity="1";
            section3Img.style.animationName="section3Move";
            section3Img.style.animationDuration = "1s";
            section3Img.style.animationFillMode = "forwards";
            // animation-fill-mode: forwards;
            section3Img.style.animationDelay = '0.7s';
        }

    }

});

// sectionSwot
var sectionSwotImg = document.getElementById("sectionSwotImage");
var ani4 = false;
$("#section3").on('mousewheel', function (e) {
    var wheel = e.originalEvent.wheelDelta;
    if (wheel > 0) {

    } else {
        //스크롤  내릴때 
        if (ani4 == false) {
            ani4 = true;

            sectionSwotImg.style.animationName="sectionSwotMove";
            sectionSwotImg.style.animationDuration = "1s";
            sectionSwotImg.style.animationFillMode = "forwards";
            sectionSwotImg.style.animationDelay = '0.7s';
        }

    }

});


// sectionApproach
var sectionApTxt = document.getElementById("sectionApText");
var sectionApImg = document.getElementById("approachContent");
var ani3 = false;
$("#sectionSwot").on('mousewheel', function (e) {
    var wheel = e.originalEvent.wheelDelta;
    if (wheel > 0) {

    } else {
        //스크롤  내릴때 
        if (ani3 == false) {
            ani3 = true;

            // 텍스트 애니메이션
            sectionApTxt.style.animationName="sectionApTxtMove";
            sectionApTxt.style.animationDuration = "1s";
            sectionApTxt.style.animationFillMode = "forwards";
            sectionApTxt.style.animationDelay = '0.7s';

            // 이미지 애니메이션
            sectionApImg.style.animationName="sectionApImgMove";
            sectionApImg.style.animationDuration = "1s";
            sectionApImg.style.animationFillMode = "forwards";
            sectionApImg.style.animationDelay = '2s';
        }

    }

});


// section4 브랜드 아이덴티티
var section4Img = document.getElementById("section4Image");
var section4Txt = document.getElementById("section4Text");
var ani2 = false;
$("#sectionMobile").on('mousewheel', function (e) {
    var wheel = e.originalEvent.wheelDelta;
    if (wheel > 0) {

    } else {
        //스크롤  내릴때 
        if (ani2 == false) {
            ani2 = true;
            console.log("gotdamn");

            section4Img.style.animationName="section4Move";
            section4Img.style.animationDuration = "1s";
            section4Img.style.animationFillMode = "forwards";
            section4Img.style.animationDelay = '1s';

            section4Txt.style.animationName="section4Move2";
            section4Txt.style.animationDuration = "1s";
            section4Txt.style.animationFillMode = "forwards";
            section4Txt.style.animationDelay = '3s';
        }

    }

});

// sectionTone
var sectionToneImg = document.getElementById("sectionToneImage");
var sectionToneTxt = document.getElementById("sectionToneText");
var ani5 = false;
$("#section4").on('mousewheel', function (e) {
    var wheel = e.originalEvent.wheelDelta;
    if (wheel > 0) {

    } else {
        //스크롤  내릴때 
        if (ani5 == false) {
            ani5 = true;

            sectionToneImg.style.animationName="sectionToneMove";
            sectionToneImg.style.animationDuration = "1s";
            sectionToneImg.style.animationFillMode = "forwards";
            sectionToneImg.style.animationDelay = '1s';

            sectionToneTxt.style.animationName="sectionToneMove2";
            sectionToneTxt.style.animationDuration = "1s";
            sectionToneTxt.style.animationFillMode = "forwards";
            sectionToneTxt.style.animationDelay = '3s';
        }

    }

});