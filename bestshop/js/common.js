var _thsW = $(window).width();

// click layers
function clickLayer(){
$('.layer-click > a').on('click', function(){
    $(this).toggleClass('active').closest('.layer-click').find('.layer-detail').toggle();
});
$('.btn-close').on('click', function(){
    $(this).closest('.layer-click').children('a').removeClass('active').closest('.layer-click').find('.layer-detail').hide();
})
}

// sub click layers
function clickLayer2(){
$('.ui-selectbox-wrap .ui-select-button').on('focus', function(){
    $(this).toggleClass('active').closest('.ui-selectbox-view').siblings('.ui-selectbox-list').toggle();
});
}

// MEGA GNB
function megaGnb(){ 
$('.pc .menu-wrap > ul > li').on('mouseenter mouseleave', function(e){
    if(e.type == 'mouseenter'){
    $('.menu-wrap > ul > li').removeClass('active');
    $('.menu-wrap .dimmde').remove();
    $('.menu-wrap').append('<p class="dimmde"></p>');
    $(this).addClass('active');
    } else if (e.type == 'mouseleave'){
    $('.menu-wrap .dimmde').remove();
    $(this).removeClass('active');
    }
});
}

// focus
function focusGnb(){
    // focus > mega gnb
    $('.pc .menu-wrap > ul > li > a').on('focus', function(){
        $('.menu-wrap > ul > li').removeClass('active');
        $('.menu-wrap .dimmde').remove();
        $('.menu-wrap').append('<p class="dimmde"></p>');
        $(this).closest('li').addClass('active');
    });

    // focus > layer (tool-tip + util)
    $('.layer-wrap > a').on('focus', function(){
        $('.layer-detail').removeClass('active');
        $(this).siblings('.layer-detail').addClass('active');
    });

    // focus > focusout 
    $('.wrap a').on('focus', function(){
        if(!$(this).parents('div').hasClass('menu-wrap')){ // mega-gnb
            $('.menu-wrap .dimmde').remove();
            $('.menu-wrap > ul > li').removeClass('active');
        }
        if(!$(this).parents('div').hasClass('my-tooltip')){ // tooltip
            $('.my-tooltip .layer-detail').removeClass('active');
        }
        if(!$(this).parents('div').hasClass('about-company')){ // util
            $('.about-company .layer-detail').removeClass('active');
        }
    });
}

// my tooltip
function myTooltip(){
    $('.layer-wrap').on('mouseenter mouseleave', function(e){
        if(e.type == 'mouseenter'){
            $('.layer-detail').removeClass('active');
            $(this).find('.layer-detail').addClass('active');
        } else if (e.type == 'mouseleave'){
            $(this).find('.layer-detail').removeClass('active')
        }
    });
}

//  floating menu
function floatingMenu(){
    $('.floating-custom-wrap .main-btn').on('click', function(){
        $('.floating-custom-wrap').toggleClass('active');
        $(this).toggleClass('active').siblings('.service-list').toggle();
    });
}

// Mobile Mega GNB
function mobileMega(){
    $('.link-wrap .depth1 a').click(function(){
        $('.depth2').stop().slideUp(200);
        $(this).closest('.depth1').toggleClass('active').siblings('.depth2').stop().slideToggle(200);
        $(this).closest('.link-section').siblings('li').find('.depth1').removeClass('active');
    });
    $('.link-wrap .depth3-tit').click(function(){
        $(this).toggleClass('active').siblings('ul').stop().slideToggle(200);
    });
}

// Mobile Menu Toggle
function mobileMenutoggle(){
    $('.close-gnb button').click(function(){
        $('body, html').removeClass('scroll-fixed');
        $('.mega-gnb-mobile').removeClass('active');
    });
    $('li.nav-anchor > a').click(function(){
        $('body, html').toggleClass('scroll-fixed');
        $('.mega-gnb-mobile').toggleClass('active');
    });
}

// s: TAB COMMON
function footMenu(){
    // footer 메뉴 전체보기 버튼
    var footerMenu = $('.pc-dropdown-wrap'),
        footerMenuBtn = $('.pc-dropdown-wrap .btns .menu-opener')

    footerMenuBtn.on('click', function() {
        footerMenu.toggleClass('open')
            if(footerMenu.hasClass('open')){
            footerMenuBtn.children('span').text('메뉴 접기')
        } else {
            footerMenuBtn.children('span').text('메뉴 전체보기')
        }
    });
}

// tab common
function tabCommon(){
    // tab (is depth)
    $(".tabOn").each(function(){
        var $this = $(this);
        if ( $this.find("[class*='tab']").length > 0 ){
            $this.addClass("is_depth");
        };
    });

    // tab
    function tabOn(e){
        //e.preventDefault();
        var target = $(this).attr("href");
        var index = $(this).parent().index();
        $(this).parent().addClass("on").siblings().removeClass("on");

        if ( target != "#" && target != "#none" && target != "" && target != "undefined" && target != "javascript:void(0);" ){
            $(target).addClass("on").siblings().removeClass("on");
        };

        if ( $(this).parents(".tabSlide").length > 0 ){
            tabSlide();
        };

        if($('.detail-block').length){
            $('.detail-block').find('.detail-box').eq(index).addClass('on').siblings('.detail-box').removeClass('on')
        }
    };
    $(document).on("click", ".tabOn > ul > li > a", tabOn);

    // tab (tabSlide)
    function tabSlide(){
        var winWidth = $(window).width();
        var mobile = 768;
        
        if ( winWidth < mobile ){ // mobile
            var tab = $(".tabSlide");

            tab.each(function(){
                var ul = $(this).find("> ul");
                var li = ul.find("> li");
                var on = ul.find("> .on");
                var ulWidth = 0;
                var onPosition = 0;
                var liWidth = 0;
                var liMargin = parseInt(li.css("margin-right"));
                var onPrevWidth = 0;
                var brk = true;
                var speed = 200;

                li.each(function(){
                    onPrevWidth = $(".on").prev().outerWidth() + liMargin;
                    liWidth = $(this).outerWidth() + liMargin;
                    ulWidth += liWidth;

                    if ( $(this).is(".on") == false && brk == true ){
                        onPosition += liWidth;
                    }
                    else {
                        brk = false;
                    };
                });

                onPosition = onPosition - onPrevWidth;

                ul.stop().animate({ scrollLeft: onPosition }, speed);
            });
        };
    };
    tabSlide();
}

// select box common
$(function(){
    $(".sltBox").each(function(){
        var index = $(this).find("option:selected").index();
        $(this).attr("data-default-selected", index).find(".btn-slt").attr("title", "현재 선택");
		if ( $(this).is(".border-type") ){
			$(this).find("select").addClass("base-slt");
		};
    });

    $('.sltBox > ul > li:first-of-type').addClass('active');

    // sltBox
    $(document).on("click", ".sltBox a", function(){
        var slt = $(this).parents(".sltBox");

        if ( $(this).is(".btn-slt") ){
            $(".sltBox").not(slt).removeClass("on");
            slt.toggleClass("on");
        }
        else {
            if ( slt.attr("data-txt-change") == "true" ){
                var index = $(this).parent().index();
                var txt = $(this).text();
                var sel = slt.find("select");
                var indexDefault = slt.attr("data-default-selected");

                $(this).parents('li').addClass('active').siblings('li').removeClass('active');

                slt.find(".btn-slt").text(txt);
                sel.find("option").eq(index).prop('selected', true);

                if ( index != indexDefault ){
                    if ( !slt.is(".change") ){
                        slt.addClass("change");
                    };
                }
                else {
                    slt.removeClass("change");
                };
            };
        };
    });

    // sltBox (select click)
    $(document).on("change", ".sltBox select", function(){
        var slt = $(this).parents(".sltBox"),
            v = $(this).val(),
            index = $(this).find("option:selected").index(),
            indexDefault = slt.attr("data-default-selected");

        slt.find(".btn-slt").text(v);
		slt.find("li").eq(index).addClass("active").siblings().removeClass("active");

        if ( index != indexDefault ){
            if ( !slt.is(".change") ){
                slt.addClass("change");
            };
        }
        else {
            slt.removeClass("change");
        };
    });

    // document target
    $(document).on("click", function(e){
        var target = e.target;
        var targetClass = target.className;
        var targetId = target.id;

        if ( targetClass != "btn-slt" ){
            $(".sltBox").removeClass("on");
        };
    });
});

/* custom scrollbar toggle */
function customScroll(){
	if ( $('.custom-scroll').length > 0 ){
	    $('.custom-scroll').mCustomScrollbar({
			mouseWheelPixels: 140, // 한번에 스크롤 되는양
			scrollInertia: 300, // 부드러움 (값이 작을수록 속도가 빨라짐)
			/* ajax 적용시
			advanced:{ updateOnContentResize: true }
			*/
		});
	};
}
function customScrollBreak(){
	if ( $('.custom-scroll').length > 0 ){
		$('.custom-scroll').mCustomScrollbar('disable');
	};
}

// popup
function popup(){
	var winWidth = $(window).width(),
		winHeight = $(window).height(),
		pc = 768;

	// popup z-index
	$(".popup").each(function(index){
		var popZindex = 1000 + index;
		if ( $(this).is(".on") && $(this).find("button, a").is(".btnPopOpen") ){
			$(this).css("z-index", 998);
		}
		else {
			$(this).css("z-index", popZindex);
		};
	});

	// popup 포커스 안에서 돌기
	function layerFocusControl(target){
		var el = target.find('a, button, input, textarea, select, [tabindex="0"]');
		var $firstEl = el.first();
		var $lastEl = el.last();
		var flag = false;

		if ( !el.is(":focus") ){
			$(document).on('keydown', function(e){
				if ( e.keyCode == 9 && e.shiftKey && flag == false ){
					$lastEl.focus();
					e.preventDefault();
					flag = true;
				}
			});
		};

		$firstEl.on('keydown', function(e){
			if ( e.keyCode == 9 && e.shiftKey ){
				$lastEl.focus();
				e.preventDefault();
			}
		});

		$lastEl.on('keydown', function(e){
			if ( e.keyCode == 9 && !e.shiftKey ){
				$firstEl.focus();
				e.preventDefault();
			}
		});
	};

	// popup 열기
	function popOn(e){
		e.preventDefault();

		$(".dim").stop().fadeIn(100);

		if ( $(this).attr("href") ){
			var href = $(this).attr("href");
		}
		else {
			var href = $(this).attr("data-href");
		};

		$(href).stop().fadeIn(200).addClass("on").attr("tabindex", "0").focus();
		$("html").css("overflow", "hidden");

		layerFocusControl($(href));

		if ( $(this).parents("div").is(".popup") ){
			$(this).parents(".popup").attr("data-open-popup-id", href);
			var target = $(this).parents(".popup").attr("data-open-popup-id");
			var zIndex = $(target).css("z-index");
			$(".dim").css("z-index", zIndex);
		};

		var popHeight = $(href).find(".pop-wrap").outerHeight();
		var popHeaderHeight = $(href).find(".pop-head").outerHeight();

		if ( winWidth >= pc ){
			var winPadding = parseInt($(".header").height()) * 2;
		}
		else {
			var winPadding = 0;
		};

		if ( winHeight <= popHeight + winPadding ){
			$(href).addClass("over").find(".pop-cont").outerHeight(winHeight - popHeaderHeight - winPadding);
		};
	};
	$(document).on("click", ".btnPopOpen", popOn);

	// popup 닫기
	function popOff(){
		var popId = $(this).parents(".popup").attr("id");
		var prevPopId = $(".popup[data-open-popup-id='" + "#" + popId + "']");
		var prevPopAttr = prevPopId.attr("data-open-popup-id");
		$(this).parents(".popup").stop().fadeOut(100).removeClass("on over");
		$(this).parents(".popup").find(".pop-cont").removeAttr("style");
		$(this).parents(".popup").removeAttr("data-open-popup-id").removeAttr("tabindex");
		$("[href='" + "#" + popId + "']").focus();
		$(".popup").each(function(index){
			var popZindex = 9005 + index;
			if ( $(this).is(".on") && $(this).attr("data-open-popup-id") != prevPopAttr ){
				$(this).css("z-index", 998);
			}
			else {
				$(this).css("z-index", popZindex);
				$(".dim").css("z-index", 999);
			};
		});
		if ( $(".popup.on").length < 1 ){
			$(".dim").stop().fadeOut(100);
			$("html").removeAttr("style");
		};
	};
	$(document).on("click", ".btnPopClose, .btnPopCancel", popOff);

	// popup esc 버튼 닫기
	function escClose(e){
		if ( e.keyCode == 27 ){ 
			$(".btnPopClose, .btnPopCancel").trigger("click");
		};
	};
	$(document).on("keydown", escClose);

	// popup 선택 팝업 닫기
	function popAllOff(){
		var closePopId = $(this).attr("data-close-popup-id");
		$(this).parents(".popup").find(".btnPopClose").trigger("click");
		$(closePopId).find(".btnPopClose").trigger("click");
	};
	$(document).on("click", ".btnPopConnectClose", popAllOff);
};
popup();

$(document).ready(function() {
    clickLayer();
    clickLayer2()
    floatingMenu();
    footMenu();
    tabCommon();

    if(_thsW > 767){
        megaGnb();
        myTooltip();
        focusGnb();
        customScroll();
    } else { // mobile size
        mobileMega();
        mobileMenutoggle();
    }

    // scroll custom
    if(_thsW > 767){
		if ( $('.custom-scroll').length > 0 ){
			$('.custom-scroll').mCustomScrollbar({
				mouseWheelPixels: 140, // 한번에 스크롤 되는양
				scrollInertia: 300, // 부드러움 (값이 작을수록 속도가 빨라짐)
				/* ajax 적용시
				advanced:{ updateOnContentResize: true }
				*/
			});
		};
    } else {
		if ( $('.custom-scroll').length > 0 ){
	        $('.custom-scroll').mCustomScrollbar('disable');
		};
    }

    //mega-gnb > banner
    var megaBnr = new Swiper(".megaBnr", {
        slidesPerView: 1,
        spaceBetween: 10,
        navigation: {
            nextEl: '.swiper-navi .btn-prev',
            prevEl: '.swiper-navi .btn-next'
        },
        pagination: {
            el: ".swiper-pager",
        }
    });

    var megaBnrm = new Swiper(".megaMobileBnr", {
        slidesPerView: 1.5,
        spaceBetween: 12
    });

    var randomCountSlide = new Swiper('.random-count-slide .slide-area', {
        slidesPerView: 1,
        autoplay: true,
        navigation: {
            nextEl: '.random-count-slide .btn-prev',
            prevEl: '.random-count-slide .btn-next'
        },
        pagination: {
            el: ".random-count-slide .slide-pagination"
        }
    });

    // page custom
    // page custom > if inner layer
    $('.bottom-fixed-wrap').parents('.wrap').addClass('innerLayer');
    // page custom > if not main breadcrumb show
    $('#content').not('.main').parents('body').find('.breadcrumb-wrap').addClass('active');

    // scroll top
    $('.top-btn').on('click', function(){
        $(window).scrollTop(0);
    });

    // calendar
    $(function(){
		if ( $("#calendar").length > 0 ){
			$("#calendar").datepicker({
				closeText:'닫기',
				currentText:'오늘',
				prevText:'이전 달',
				nextText:'다음 달',
				monthNames:['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
				monthNamesShort:['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
				dayNames:['일', '월', '화', '수', '목', '금', '토'],
				dayNamesShort:['일', '월', '화', '수', '목', '금', '토'],
				dayNamesMin:['일', '월', '화', '수', '목', '금', '토'],
				weekHeader:'주',
				yearSuffix:'.',
				showMonthAfterYear:true,
				showOtherMonths:true
			});
			$('.ui-widget-header a').attr('href','javascript:void(0);');
		};
    });

    // search clear
    $('.btn-clear').on('click', function(){
        $(this).siblings('input').val('');
    });
});

$(window).resize(function(){
    var _thsW = $(window).width();

    if(_thsW > 767){
        megaGnb();
        myTooltip();
        focusGnb();
        customScroll();
    } else { // mobile size
        mobileMega();
        mobileMenutoggle();
    }
    tabCommon();
});

$(window).scroll(function () {
    var _winTop = $(window).scrollTop();

    if(_winTop > 200){
        $('.floating-block').addClass('active');
    } else if(_winTop <= 200){
        $('.floating-block').removeClass('active');
    }

    if(_winTop > 48){
        $('header').addClass('fixed');
    } else {
        $('header').removeClass('fixed');
    }
});