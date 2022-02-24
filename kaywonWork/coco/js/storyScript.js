
    // story 스크립트.
    var galleryEl = document.querySelector("#gallery"),
    viewEl = galleryEl.querySelector(".view"),
    viewContainerEl = viewEl.querySelector(".view-container"),
    viewItemEls = viewContainerEl.querySelectorAll(".view-item"),
    viewItemImgEls = viewContainerEl.querySelectorAll(".view-item > img"),

    // prev, next 버튼 가져오기.
    paddleNavEl = galleryEl.querySelector(".paddle-nav"),
    btnPaddleNavEls = paddleNavEl.querySelectorAll("button.arrow"),
    btnPaddleNavPrevEl = paddleNavEl.querySelector("button.arrow.prev"),
    btnPaddleNavNextEl = paddleNavEl.querySelector("button.arrow.next"),

    _isAni = false,
    _galleryW = null,
    _galleryH = null,
    _imgOW = 1600,
    _imgOH = 1000,
    _cuId = 0,
    _exId = null,
    _max = null,
    _duration = 400,
    _addDuration = 200;


function onResize() { // 윈도우의 너비와 높이를 잰 변수 생성후 galleryResize 호출
    _galleryW = window.innerWidth;
    _galleryH = window.innerHeight;
    galleryResize();
}
function onTransitionEnd(e) { // view-container에 transition을 삭제해주는 함수
    _isAni = false;
    viewContainerEl.style.removeProperty("transition");
}

function onClickPaddleNav(e) { // prev, next 버튼을 클릭했을 경우 갤러리슬라이드 함수를 호출시켜 이미지를 움직여주기 위한 함수입니다.
    e.preventDefault();
    if(_isAni) return;
    var el = e.currentTarget;
    if(el.classList.contains("prev")) {
        _cuId--;
        if(_cuId < 0) _cuId = 0;
    }else if(el.classList.contains("next")) {
        _cuId++;
        if(_cuId > _max - 1) _cuId = _max - 1;
    }
    if(_exId !== _cuId) gallerySlide();
}
function getImageInfo(index) {
    var image = new Image();
    image.src = viewItemImgEls[index].getAttribute("src");
    image.onload = function() {
        viewItemImgEls[index].setAttribute("data-width", image.naturalWidth);
        viewItemImgEls[index].setAttribute("data-height", image.naturalHeight);
    }
}
function setPaddleActive() { // 이전 섹션이나 다음 섹션으로 넘어갈 때 버튼이 생기거나 사라지게 하는 함수입니다.
    if(_cuId === 0) { // 만약 첫번째 섹션일 경우
        btnPaddleNavPrevEl.classList.add("disabled"); // prev 버튼이 사라집니다.
        btnPaddleNavNextEl.classList.remove("disabled");
    }else if(_cuId === _max - 1) { // 만약 마지막 섹션일 경우
        btnPaddleNavPrevEl.classList.remove("disabled");
        btnPaddleNavNextEl.classList.add("disabled"); // next 버튼이 사라집니다.
    }else{ // 그 외의 경우, 두 버튼 다 남아있습니다.
        btnPaddleNavPrevEl.classList.remove("disabled");
        btnPaddleNavNextEl.classList.remove("disabled");
    }
}
function gallerySlide(static) { // 슬라이드를 위한 함수입니다.
    var left = _galleryW * _cuId * -1,
        duration = _duration + _addDuration * Math.abs(_cuId - _exId),
        bool = (static) ? static : false;
    viewContainerEl.style.transform = "translate3d(" + left + "px, 0, 0)";
    if(!bool) {
        _isAni = true;
        setPaddleActive();
        viewContainerEl.style.transition = "transform " + duration + "ms cubic-bezier(0.455, 0.03, 0.515, 0.955)";
        _exId = _cuId;
    }else{
        viewContainerEl.style.removeProperty("transition");
        _isAni = false;
    }
}
function galleryResize() { // 갤러리의 사이즈를 리사이징함으로써 다음으로 넘어갈 때 해당 화면에 꽉 차도록 해줍니다.
    viewEl.style.width = _galleryW + "px";
    viewEl.style.height = _galleryH + "px";
    viewContainerEl.style.width = _galleryW * _max + "px";
    for(var i = 0; i < _max; i++) {
        viewItemEls[i].style.width = _galleryW + "px";
        var imgW, imgH, imgT, imgL;
        imgW = _galleryW;
        imgH = Math.round(_imgOH * imgW / _imgOW);
        if(imgH <= _galleryH) {
            imgH = _galleryH;
            imgW = Math.round(_imgOW * imgH / _imgOH);
        }
        imgT = Math.round(_galleryH / 2 - imgH / 2);
        imgL = Math.round(_galleryW / 2 - imgW / 2);
        viewItemImgEls[i].style.width = imgW + "px";
        viewItemImgEls[i].style.height = imgH + "px";
        viewItemImgEls[i].style.top = imgT + "px";
        viewItemImgEls[i].style.left = imgL + "px";
    }
    gallerySlide(true);
}
function addEvent() { // addEvent 함수
    window.addEventListener("resize", onResize);
    viewContainerEl.addEventListener("webkitTransitionEnd", onTransitionEnd);
    viewContainerEl.addEventListener("transitionend", onTransitionEnd);
    for(var i = 0; i < _max; i++) {
        getImageInfo(i);
    }
    for(var j = 0; j < btnPaddleNavEls.length; j++) {
        btnPaddleNavEls[j].addEventListener("click", onClickPaddleNav);
    }
}
function init() { // init 함수
    _max = viewItemEls.length;
    _exId = _cuId;
    setPaddleActive();
    addEvent();
    window.dispatchEvent(new Event('resize'));
}
init(); // init 실행

