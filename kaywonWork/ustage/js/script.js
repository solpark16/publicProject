
// elems.style.color = "#ffffff";

console.log('complete');

var header = document.querySelector('header');
var navi = document.querySelector('header nav');
var hamBtn = document.querySelector('.hamburger-wrap button');

var main = document.querySelector('main');
var prev = document.querySelector('.prev');
var section = document.querySelectorAll('section');

var canScroll = document.querySelectorAll('section.canScroll');

var liCon = document.querySelector('.index-con');
var liIndex = document.getElementsByClassName('item');
var pageNum = document.querySelector('.page-num');

var transY = 0;
var indexP = 0;

var transEnd = true;
var winH = window.innerHeight;

/* mouse */
// 마우스 이벤트에서 사용할 변수들을 선언
var ms = null;
var mm = null;
var me = null;
var mdiff = null;
var mTrans = null;

var mpress = false;

var scrollCan = true;

var scDelta = null;

/* touch */
// 터치 이벤트에서 사용할 변수들을 선언
var ts = null;
var tm = null;
var te = null;
var diff = null;
var tTrans = null;

var mouseTouchEventCall = false;

window.onresize = function(){ // window.onresize -> 윈도우창이 리사이즈 될때 호출되는 함수
    winH = window.innerHeight; // 윈도우의 높이를 다시 반환받는다.
}

function onClickHamBtn(e){
    e.preventDefault();
    navi.classList.toggle('active');
    header.classList.toggle('active');
}

addIndexList();

function addIndexList(){ // page navigation을 섹션의 갯수를 불러와 자동으로 생성해주는 함수
    var secLength = section.length; // 섹션의 갯수를 secLength변수에 반환해준다.
    for(var i = 0; i < secLength; i++){
        var liEl = document.createElement("li");
        liEl.className = 'item';
        liCon.appendChild(liEl);
    }
    liIndex[0].classList.add('active');
}
window.onload = function(){ // 화면에 로드가 되었다면.
    function slideMain(){
        transY = indexP * -100;
        main.style.transform = "translateY(" + transY + "vh)";
        main.style.webkitTransform = "translateY(" + transY + "vh)";
        main.style.mozTransform = "translateY(" + transY + "vh)";
        main.style.msTransform = "translateY(" + transY + "vh)";
        main.style.oTransform = "translateY(" + transY + "vh)";
        main.style.transition = "all 0.8s ease";
        for(var i =0 ; i < liIndex.length; i++){
            if(liIndex[i].classList.contains("active")){
                liIndex[i].classList.remove("active");
            }
        }
        liIndex[indexP].classList.add("active");
        pageNum.innerHTML = "0" + (indexP + 1);
    }
    
    function scrollCanAllow(){ // section이 canScroll( 스크롤을 가지고있다 )을 가지고 있다면 scroll을 다 해야 다음 섹션으로 넘김.
        var secScrollEl = section[indexP];
        if(secScrollEl.classList.contains("canScroll")){
            scrollCan = false;
            if(mouseTouchEventCall){
                secScrollEl.scrollTop += (mTrans * -(1/2));
            }
            if(scDelta > 0){
                if(secScrollEl.offsetHeight + secScrollEl.scrollTop >= secScrollEl.scrollHeight){
                    scrollCan = true;
                }
            }else if(scDelta < 0){
                if(secScrollEl.scrollTop <= 0){
                    scrollCan = true;
                }
            }
        }
    }

    function onMouseW(e){ // 마우스 휠 스크롤 이벤트
        mouseTouchEventCall = false;
        if(!transEnd)return;
        if(e.type === "mousewheel"){
            scDelta = e.deltaY;
            scrollCanAllow();
            if(!scrollCan)return;
            //만약 section이 canScroll 클래스를 가지고 있지 않다면
            if(e.deltaY > 0 && indexP < (section.length -1)){
                indexP++;
            }else if(e.deltaY < 0 && indexP > 0){
                indexP--;
            }
            slideMain();
        }
    }
    
    function transST(e){
        if(e.type === 'transitionend'){
            // console.log('end');
            transEnd = true;
        }else if(e.type === 'transitionstart'){
            // console.log('start');
            transEnd = false;
        }
    }
    
    function onClickLiIndex(e){
        e.preventDefault();
        liIndex = Array.prototype.slice.call(liIndex);
        var target = e.currentTarget;
        var index = liIndex.indexOf(target);
        indexP = index;
        slideMain();
    }
    
    function eventAdd(){
        hamBtn.addEventListener('click', onClickHamBtn);

        main.addEventListener('transitionend', transST);
        main.addEventListener('transitionstart', transST);
        
        for(var i = 0; i < liIndex.length; i++){
            liIndex[i].addEventListener('click', onClickLiIndex);
        }
        
        window.addEventListener('mousewheel', onMouseW);
        
        window.addEventListener('mousedown', onMouseCW);
        window.addEventListener('mousemove', onMouseCW);
        window.addEventListener('mouseup', onMouseCW);
        
        window.addEventListener('touchstart', ontouchW);
        window.addEventListener('touchmove', ontouchW);
        window.addEventListener('touchend', ontouchW);
    }
    
    function init(){
        eventAdd();
    }
    init();
}

// cursor----------------------------------------

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

// fadein----------------------------------------
// var elems = document.getElementById("up-on-scroll");
// // elems.style.color="#ffffff";
// // elems.style.marginTop="40px";
// // elems.style.color = "#ffffff";
// var ani1 = false;
// $(".section1").on('mousewheel', function (e) {
//     var wheel = e.originalEvent.wheelDelta;
//     if (wheel > 0) {

//     } else {
//         //스크롤  내릴때 
//         if (ani1 == false) {
//             // ani1 = true;
//             // $(function () {
//             //     var cnt0 = 0;

//             //     counterFn();

//             //     function counterFn() {

//             //         id0 = setInterval(count0Fn, 20);

//             //         function count0Fn() {
//             //             cnt0++;
//             //             if (cnt0 > 75) {
//             //                 clearInterval(id0);
//             //             } else {
//             //                 $(".Time1").text(cnt0);
//             //             }
//             //         }
//             //     }
//             // });
            
            
//             godDamn()

//             function godDamn(){
                
//                 elems.style.color="#ffffff";
                
//                 console.log("godDamnmofoko");
//             }
//             console.log("ddddddddd");
//             elems.style.color = "#ffffff";
//             elems.style.opacity = "0";
//             elems.style.transform = 'translateY(0px)';
//             elems.style.animationName = 'move1';
//             elems.style.animationDuration = '1s';
//             elems.style.animationFillMode = 'forwards';
//             elems.style.animationDelay = '5s';
            
            

//             $(function () {
//                 var cnt1 = 0;

//                 counterFn();

//                 function counterFn() {

//                     id1 = setInterval(count0Fn, 20);

//                     function count0Fn() {
//                         cnt1++;
//                         if (cnt1 > 45) {
//                             clearInterval(id1);
//                         } else {
//                             $(".Time2").text(cnt1);
//                         }
//                     }
//                 }
//             });


//             $(function () {
//                 var cnt2 = 0;

//                 counterFn();

//                 function counterFn() {

//                     id2 = setInterval(count0Fn, 20);

//                     function count0Fn() {
//                         cnt2++;
//                         if (cnt2 > 50) {
//                             clearInterval(id2);
//                         } else {
//                             $(".Time3").text(cnt2);
//                         }
//                     }
//                 }
//             });
//         }

//     }

// });

// 다시 해보자
// $(window).scroll(function(){
//     var position = $(window).scrollTop();
//     console.log(position);
//     if ($(window).scrollTop() < 1938) { // 섹션3
//         // 플로팅 애니메이션 추가
//         console.log("실험해보기");
//         $(".mean").addClass("animationDefault");
//         $(".iphoneL").addClass("animationDelay1");
//         $(".iphoneR").addClass("animationDelay2");
//     }
// });
// $("document").ready(function () {
//     $(window).scroll(function () {
//         var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.  
//         console.log(position);
//     });
// });
$(window).scroll(
    function () { var scrollValue = $(document).scrollTop();
        console.log(scrollValue);
    });