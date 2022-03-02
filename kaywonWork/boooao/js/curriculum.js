// 가로 스크롤
(function() {
    function scrollHorizontally(e) {
        e = window.event || e;
        var delta = Math.max(-1, Math.min(1, (e.wheelDelta || -e.detail)));
        document.documentElement.scrollLeft -= (delta*200);
        e.preventDefault();
    }
    if (window.addEventListener) {
        window.addEventListener("mousewheel", scrollHorizontally);
    }
    })();