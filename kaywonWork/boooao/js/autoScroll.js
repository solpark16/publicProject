let secIndex = 0;
let canScroll = true;
const tranDuration = 400;
let mouseDiff = 0;
let videoIndex = 0;

// els
const sectionTransformEl = document.querySelector('.sectionTransform');
const sectionEls = document.querySelectorAll('.sectionEls');
const videoEls = document.querySelectorAll('.videoSection .mainVideo');

function videoDisplay() {
    for (let i = 0; i < videoEls.length; i++) {
        if (i !== videoIndex) {
            videoEls[i].classList.add('disNone');
        }
    }
    videoEls[videoIndex].classList.remove('disNone');
    let conVidEl = videoEls[videoIndex].children;
    if (mouseDiff > 0) { //위//backward 보여짐
        for (let i = 0; i < conVidEl.length; i++) {
            videoEls[videoIndex].children[i].classList.remove('disNone');
            if (videoEls[videoIndex].children[i].classList.contains('forward')) {
                videoEls[videoIndex].children[i].classList.add('disNone');
            } else {
                if (videoEls[videoIndex].children[i].tagName === 'VIDEO') {
                    videoEls[videoIndex].children[i].play();
                    videoEls[videoIndex].children[i].currentTime = 0;
                }
            }
        }
    } else if (mouseDiff < 0) { //아래//forward 보여짐
        for (let i = 0; i < conVidEl.length; i++) {
            videoEls[videoIndex].children[i].classList.remove('disNone');
            if (videoEls[videoIndex].children[i].classList.contains('backward')) {
                videoEls[videoIndex].children[i].classList.add('disNone');
            } else {
                if (videoEls[videoIndex].children[i].tagName === 'VIDEO') {
                    videoEls[videoIndex].children[i].play();
                    videoEls[videoIndex].children[i].currentTime = 0;
                }
            }
        }
    }
}

function sectionTransform() {
    let scrollTo = secIndex * 100 * -1;
    sectionTransformEl.style.transition = "all " + tranDuration + "ms ease";
    sectionTransformEl.style.transform = 'translateY(' + scrollTo + 'vh)';
}

// 버튼이 눌리면 호출
var navLi = $('header nav ul li');
navLi = Array.prototype.slice.call(navLi);
var sectionLi = $('section');
sectionLi = Array.prototype.slice.call(sectionLi);

/* 제어용 변수 선언 */
var indexY = 0;
var transY = 0;

// 섹션 좌표값을 받아와서 좌표값을 넣어줌
// 네비게이션 클릭 시 이벤트
function navActive(e) {
    e.preventDefault();
    var target = e.currentTarget;
    var navIn = navLi.indexOf(target);
    switch (navIn) {
        case 0:
            indexY = 3;
            secIndex = 3;
            break;
        case 1:
            indexY = 4;
            secIndex = 4;
            break;
        case 2:
            indexY = 5;
            secIndex = 5;
            mainLoad();
            break;
    }
    transY = indexY * -100;
    sectionTransformEl.style.transform = "translateY(" + transY + "vh)";
    sectionTransformEl.style.transition = "all 0.8s ease";
    sectionTransformEl.style.transitionDelay = "0.3s";
}

function sectionControll() {
    sectionTransform();
}

function onScrollWin(e) {
    if (!canScroll) return;
    const wheel = e.wheelDelta;
    mouseDiff = wheel;

    if (wheel > 0 && secIndex > 0) {
        //위
        if (sectionEls[secIndex].classList.contains('videoSection')) {
            if (videoIndex > 0) {
                videoIndex--;
                videoDisplay();
                return;
            }
        } else {
            let conVidEl = videoEls[videoIndex].children;
            for (let i = 0; i < conVidEl.length; i++) {
                videoEls[videoIndex].children[i].classList.remove('disNone');
                if (videoEls[videoIndex].children[i].classList.contains('forward')) {
                    videoEls[videoIndex].children[i].classList.add('disNone');
                }
            }
        }
        --secIndex;
    } else if (wheel < 0 && secIndex < sectionEls.length - 1) {
        //아래
        if (sectionEls[secIndex].classList.contains('videoSection')) {
            if (videoIndex < videoEls.length - 1) {
                videoIndex++;
                videoDisplay();
                return;
            }
        } else {
            let conVidEl = videoEls[videoIndex].children;
            for (let i = 0; i < conVidEl.length; i++) {
                videoEls[videoIndex].children[i].classList.remove('disNone');
                if (videoEls[videoIndex].children[i].classList.contains('backward')) {
                    videoEls[videoIndex].children[i].classList.add('disNone');
                }
            }
        }
        secIndex++;
    }
    if (sectionEls[5]) {
        mainLoad();
    }
    sectionControll();
    canScroll = false;
    scrollDef();
}

function addEvent () {
    for (var i = 0; i < navLi.length; i++) {
        navLi[i].addEventListener("click", navActive);
      }
}

function scrollDef() {
    setTimeout(function () {
        canScroll = true;
    }, tranDuration);
}

function init () {
    addEvent();
}

init();
window.addEventListener('mousewheel', onScrollWin);