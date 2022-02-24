
// 가로 스크롤
(function() {
    function scrollHorizontally(e) { // 스크롤시 실행되는 함수입니다.
        e = window.event || e;
        var delta = Math.max(-1, Math.min(1, (e.wheelDelta || -e.detail))); // 스크롤을 할 때의 값을 지정해주기 위해 delta 변수를 만들어줍니다.
        document.documentElement.scrollLeft -= (delta*40); // delta값에 40을 곱해줍니다. 이 값이 클 수록 한 번 스크롤시 스크롤되는 양이 늘어납니다.
        e.preventDefault(); // 다른 이벤트가 일어나지 않도록 해줍니다.
    }
    if (window.addEventListener) {
        window.addEventListener("mousewheel", scrollHorizontally); // 마우스휠 즉 스크롤을 할 시, scrollHorizontally 함수가 실행됩니다.
    }
    })();