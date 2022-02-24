<%@ page contentType="text/html; charset=utf-8" %>
<jsp:include page="../common/header.jsp"/>
<style>
	.MO .wrap {padding-top:48px}
	/* .MO .header-top {display:none} */
	.mobile-nav-wrap.main {display:none!important}
	.MO .mobile-nav-wrap.sub {display:block!important; height:34px!important; top:48px!important; border-bottom:0; box-shadow:none}
	.MO .mobile-nav-wrap.sub .btn-back {min-height:34px!important; line-height:34px!important}
	.MO .mobile-nav-wrap.sub .btn-mypage {display:none!important}
	.MO .mobile-nav-wrap.sub .page-title {display:none!important}
	
	.MO .header {position:absolute!important}
	.MO .mobile-nav-wrap {position:absolute!important}

	.fixed {overflow:hidden}
	.content-wrap {width:100%; max-width:360px; margin:0 auto}
	.content-wrap [class^=section] {position:relative; width:100%}
	.content-wrap .section02 {padding-top:66px}
	.content-wrap [class^=section] .bg-area {position:relative}
	.content-wrap [class^=section] .bg {width:100%}
	.content-wrap [class^=section] .abs {position:absolute}
	.content-wrap [class^=section] img {display:block}
	.content-wrap [class^=section] .scroll-area {width:100%; top:135px; left:0; right:0; padding:0 16px; overflow-x:auto}
	.content-wrap [class^=section] .scroll {width:691px}
	.content-wrap [class^=section] .step-nav {position:absolute; top:0; width:calc(100% + 15px); max-width:375px; left:-7.5px; right:0; margin:0 auto; background-color:#fff; z-index:200}
	.content-wrap [class^=section] .step-nav.sticky {position:fixed; left:0; width:100%; box-shadow:0 2px 3px 0 rgba(0,0,0,0.1)}
	.content-wrap [class^=section] .step-nav .nav-01 {width:100%}
	.content-wrap [class^=section] [id^=step] {position:absolute; left:16px; right:16px}
	.content-wrap [class^=section] [id^=step] img {width:100%}
	.content-wrap [class^=section] .step-scroll {display:block}
	.content-wrap [class^=section] #step1 {top:77px}
	.content-wrap [class^=section] #step2 {top:329px}
	.content-wrap [class^=section] #step3 {top:1113px}
	.content-wrap [class^=section] #step4 {top:1264px}
	.content-wrap [class^=section] #step4 .btn-next {position:absolute; display:none; width:118px; height:43px; top:172px; left:50%; transform:translateX(-50%); background:url(../../images/@btn-next.png) no-repeat center / 100%}

	.content-wrap .section03 {display:none; padding-bottom:55px}
	.content-wrap .section03 .btn-next {display:none; width:118px; height:43px; margin:30px auto 0; background:url(../../images/@btn-next.png) no-repeat center / 100%}
	.content-wrap .section03 .btn-reselect {position:absolute; display:block; width:91px; top:145px; left:50%; transform:translateX(-50%)}
	.content-wrap .section03 .btn-reselect > img {display:block; width:100%}
	.content-wrap .section03 .sort-area {display:flex; width:185px; margin-left:16px}
	.content-wrap .section03 .sort-area .btn-sort {display:block; width:50%; height:48px}
	.content-wrap .section03 .sort-area .btn-sort.list {background:url(../../images/@btn-sort-list.png) no-repeat center / 100%}
	.content-wrap .section03 .sort-area .btn-sort.list.on {background:url(../../images/@btn-sort-list_on.png) no-repeat center / 100%}
	.content-wrap .section03 .sort-area .btn-sort.map {background:url(../../images/@btn-sort-map.png) no-repeat center / 100%}
	.content-wrap .section03 .sort-area .btn-sort.map.on {background:url(../../images/@btn-sort-map_on.png) no-repeat center / 100%}
	.content-wrap .section03 .view-area {padding:0 16px}
	.content-wrap .section03 .view-area > a {display:block}
	.content-wrap .section03 .view-area .bg {display:none}
	.content-wrap .section03 .view-area .bg.on {display:block}
	.content-wrap .section03 .shop-area {display:none; padding:10px 16px 5px}
	.content-wrap .section03 .shop-area > a {display:block}
	.content-wrap .section03 .shop-area .date {margin-top:10px}
	.content-wrap .section03 .select-area {display:none; padding:5px 16px}
	.content-wrap .section03 .select-area .time {margin-top:10px}

	.content-wrap .section04 {display:none}
	.content-wrap .section04 .btn-reselect {position:absolute; display:block; width:91px; top:145px; left:50%; transform:translateX(-50%)}
	.content-wrap .section04 .btn-reselect.back03 {top:262px}
	.content-wrap .section04 .btn-reselect > img {display:block; width:100%}
	.content-wrap .section04 .btn-submit {position:absolute; display:block; width:118px; height:43px; bottom:0; left:50%; transform:translateX(-50%); background:url(../../images/@btn-submit.png) no-repeat center / 100%}
	.content-wrap .section04 .input-area {position:absolute; width:100%; top:362px}
	.content-wrap .section04 .input-area .bg.input {display:block; width:328px; margin:0 auto}
	.content-wrap .section04 .input-area .input-box {position:absolute; width:328px; left:0; right:0; top:0; bottom:0; margin:0 auto}
	.content-wrap .section04 .input-area .input-box label {position:absolute; top:57px; left:25px}
	.content-wrap .section04 .input-area .input-box label + label {top:166px}
	.content-wrap .section04 .input-area .input-box label .label {position:absolute; font-size:0; overflow:hidden}
	.content-wrap .section04 .input-area .input-box label input {display:block; width:278px; height:46px; padding:0 12px; border:1px solid #ddd; border-radius:8px; color:#666; font-size:14px; line-height:22px}
	.content-wrap .section04 .agree {position:absolute; top:621px; left:0; right:0; width:328px; margin:0 auto}

	.content-wrap .step-list img {display:block; width:100%}
	.content-wrap .popup {display:none; position:fixed; top:0; left:0; right:0; bottom:0; background-color:#fff; z-index:9999}
	.content-wrap .popup .bg {display:block; width:100%}
	.content-wrap .popup .btn-close {position:absolute; width:20px; height:20px; top:28px; right:18px; background:url(../../images/@btn-close.png) no-repeat center / 100%}
	.content-wrap .popup .btn-cert {position:absolute; width:100%; height:56px; left:0; right:0; bottom:0; background:url(../../images/@btn-cert.png) no-repeat center / 100%}
	.ending-page {display:none; width:100%}
	.ending-page .bg {width:100%}

	.sticky-bar  {display:block; position:fixed; left:0; right:0; bottom:70px; width:calc(100% + 15px); max-width:375px; margin:0 auto; z-index:201}
	.sticky-bar > .bg {display:block; width:100%}
	.sticky-bar .btn-submit-sticky {display:none; position:absolute; left:16px; right:16px; bottom:12px; width:342px; height:44px; background:url(../../images/@btn-submit-sticky.png) no-repeat center / 100%}
	.sticky-bar .btn-submit-sticky.on {display:block}

</style>
<script>
	$(document).ready(function(){

		$(window).scroll(function(){
			var stepNav = $('.content-wrap [class^=section] .step-nav');
			var stepNavTop = stepNav.offset().top;
			var windowTop = $(document).scrollTop();
			if(windowTop > stepNavTop){
				stepNav.addClass('sticky')
			}
			if(windowTop < 600){
				stepNav.removeClass('sticky')
			}
		});

		$('.step-scroll').click(function(e){
			e.preventDefault();
			if($(this).hasClass('multi')){
			} else {
				$('html,body').animate({scrollTop:$(this.hash).offset().top - 120}, 500);
			};
			if($(this).parent().attr('id') == 'step1') {
				$(this).children('img').attr({
					src : '../../images/@step01_on.png'
				})
			};
			if($(this).parent().attr('id') == 'step2') {
				$(this).children('img').attr({
					src : '../../images/@step02_on.png'
				})
			};
			if($(this).parent().attr('id') == 'step3') {
				$(this).children('img').attr({
					src : '../../images/@step03_on.png'
				});
				$('#step4 .btn-next').fadeIn();
			};
		});

		$('.section02 .btn-next').click(function(){
			$(this).fadeOut();
			$('html,body').animate({scrollTop:$(this).offset().top}, 500);
			$('.content-wrap .section03').slideDown();
			$('.content-wrap .section02').css('margin-bottom','-43px');
			$('.content-wrap [class^=section] .step-nav img').attr('src','../../images/@step_nav_02.png')
			$('.content-wrap .step-list .list-02').fadeOut();
			$('.sticky-bar > .bg').attr('src','../../images/@sticky-bar-02.png');
		});
		$('.section03 .btn-next').click(function(){
			$(this).fadeOut();
			$('html,body').animate({scrollTop:$(this).offset().top - 66}, 500);
			$('.content-wrap .section04').slideDown();
			$('.content-wrap .section03').css('margin-bottom','-43px');
			$('.content-wrap [class^=section] .step-nav img').attr('src','../../images/@step_nav_03.png');
			$('.content-wrap .step-list .list-03').fadeOut();
			$('.sticky-bar > .bg').attr('src','../../images/@sticky-bar-03.png');
		});

		var back02 = $('.btn-reselect.back02');
		var back03 = $('.btn-reselect.back03');
		back02.click(function(){
			$('.btn-next').fadeIn().css('display','block');
			$('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
			$('.content-wrap .section04').slideUp();
			$('.content-wrap .section03').slideUp();
			$('.content-wrap .section02').css('margin-bottom', 0);
			$('.content-wrap [class^=section] .step-nav img').attr('src','../../images/@step_nav_01.png')
			$('.content-wrap .step-list .list-02').fadeIn();
			$('.content-wrap .step-list .list-03').fadeIn();
		});
		back03.click(function(){
			$('.btn-next').fadeIn().css('display','block');
			$('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
			$('.content-wrap .section04').slideUp();
			$('.content-wrap .section03').css('margin-bottom','0');
			$('.content-wrap .section02').css('margin-bottom','0');
			$('.content-wrap [class^=section] .step-nav img').attr('src','../../images/@step_nav_02.png');
			$('.content-wrap .step-list .list-03').fadeIn();
		});

		$('.sort-area .btn-sort').click(function(){
			if($(this).hasClass('on')) {
				$(this).siblings.removeClass('on');
			} else {
				$(this).addClass('on')
				.siblings().removeClass('on');
				if($(this).hasClass('list')){
					$('.view-area .list').addClass('on');
					$('.view-area .map').removeClass('on');
				} else {
					$('.view-area .list').removeClass('on');
					$('.view-area .map').addClass('on');
				}
			};
		});
		$('.view-area > a').click(function(e){
			e.preventDefault();
			console.log($(this.hash));
			$('.shop-area').fadeIn(200);
			$('html,body').animate({scrollTop:$(this.hash).offset().top - 78}, 500);
		});
		$('.shop-area > a').click(function(e){
			e.preventDefault();
			$('.shop-area .date').attr('src','../../images/@img-select-date_on.png');
			$('.select-area').fadeIn(200);
			$('html,body').animate({scrollTop:$(this.hash).offset().top - 66}, 500);
		});
		$('.select-area > a').click(function(e){
			e.preventDefault();
			$('.select-area .time').fadeIn(200);
			$('html,body').animate({scrollTop:$(this.hash).offset().top - 66}, 500);
		});
		$('.select-area .time').click(function(){
			$('.select-area .time').attr('src','../../images/@img-select-time_on.png');
			$('.content-wrap .section03 .btn-next').fadeIn().css('display','block');
		});

		$('.section04 .agree').click(function(){
			$(this).attr('src','../../images/@img-agreement_on.png');
			$('html,body').animate({scrollTop:$(this).offset().top - 78}, 500);
			$('.sticky-bar > .bg').attr('src','../../images/@sticky-bar-end.png');
			$('.btn-submit-sticky').addClass('on');
			$('.sticky-bar').click(function(){
			if($(this).hasClass('on')) {
				$(this).removeClass('on')
				$('.sticky-bar > .bg').attr('src','../../images/@sticky-bar-end.png');
			} else {
				$(this).addClass('on')
				$('.sticky-bar > .bg').attr('src','../../images/@sticky-bar-end_on.png');
			}
		})
		})

		$('.btn-submit-sticky').click(function(){
			$('.popup').show();
			$('html').addClass('fixed');
		})

		$('.btn-close').click(function(){
			$('.popup').hide();
			$('html').removeClass('fixed');
		})
		$('.btn-cert').click(function(){
			$('.popup').hide();
			$('html').removeClass('fixed');
			$('.ending-page').show();
			$('.sticky-bar').hide();
			$('.content-wrap').hide();
			$('html,body').scrollTop($(this).offset().top);
		})

	})
</script>

<div id="content">
	<div class="content-wrap">

		<div class="section01">
			<img class="bg" src="../../images/@bg_01.png" alt="배경1" style="width:375px; margin-left:-7.5px">
			<div class="scroll-area abs" style="width:375px; left:-7.5px">
				<img class="scroll" src="../../images/@scroll01.png" alt="스크롤이미지">
			</div>
		</div>

		<div id="sec02" class="section02">
			<div class="step-nav">
				<img class="nav-01" src="../../images/@step_nav_01.png" alt="스텝 네비게이션">
			</div>
			<div class="bg-area">
				<img class="bg" src="../../images/@bg_02.png" alt="배경2">
				<div id="step1">
					<a class="step-scroll" href="#step2">
						<img class="step-01" src="../../images/@step01.png" alt="step01">
					</a>
				</div>
				<div id="step2">
					<a class="step-scroll multi" href="#n">
						<img class="step-02" src="../../images/@step02.png" alt="step02">
					</a>
				</div>
				<div id="step3">
					<a class="step-scroll" href="#step4">
						<img class="step-03" src="../../images/@step03.png" alt="step03">
					</a>
				</div>
				<div id="step4">
					<button class="btn-next" type="button"></button>
				</div>
			</div>
		</div>

		<div id="sec03" class="section03">
			<div class="bg-area">
				<img class="bg info" src="../../images/@bg_03.png" alt="배경3">
				<a class="btn-reselect back02" href="#sec02">
					<img src="../../images/@btn-reselect.png" alt="재선택">
				</a>
				<div class="sort-area">
					<button class="btn-sort list on" type="button"></button>
					<button class="btn-sort map" type="button"></button>
				</div>
				<div class="view-area">
					<a href="#b">
						<img class="bg list on" src="../../images/@img-list-view.png" alt="리스트보기 배경">
						<img class="bg map" src="../../images/@img-map-view.png" alt="지도보기 배경">
					</a>
				</div>
				<div class="shop-area">
					<a id="b" href="#c">
						<img class="bg" src="../../images/@img-shop.png" alt="매장보기">
						<img class="bg date" src="../../images/@img-select-date.png" alt="예약일 선택">
					</a>
				</div>
				<div id="c" class="select-area">
					<a href="#">
						<img class="bg time" src="../../images/@img-select-time.png" alt="예약시간 선택">
					</a>
				</div>
				<button class="btn-next" type="button"></button>
			</div>
		</div>

		<div class="section04">
			<img class="bg" src="../../images/@bg_04.png" alt="배경4">
			<a class="btn-reselect back02" href="#sec02">
				<img src="../../images/@btn-reselect.png" alt="재선택">
			</a>
			<a class="btn-reselect back03" href="#sec03">
				<img src="../../images/@btn-reselect.png" alt="재선택">
			</a>
			<div class="input-area">
				<img class="bg input" src="../../images/@bg_input-area.png" alt="배경">
				<div class="input-box">
					<label for="user-name">
						<span class="label">이름</span>
						<input type="text" name="user-name" placeholder="이름 입력">
					</label>
					<label for="user-number">
						<span class="label">이름</span>
						<input type="number" name="user-number" placeholder="휴대폰 번호 입력">
					</label>
				</div>
			</div>
			<img class="bg agree" src="../../images/@img-agreement.png" alt="약관동의">
			<!-- <button class="btn-submit" type="button"></button> -->
		</div>

		<div class="step-list">
			<img class="list-02" src="../../images/@step_list_02.png" alt="STEP02 상담하실 매장과 일시를 선택해주세요.">
			<img class="list-03" src="../../images/@step_list_03.png" alt="STEP03 예약자 정보를 입력해주세요.">
		</div>

		<div class="popup">
			<img class="bg" src="../../images/@bg_popup.png" alt="팝업 배경">
			<button class="btn-close" type="button"></button>
			<button class="btn-cert" type="button"></button>
		</div>

	</div>

	<div class="ending-page">
		<img class="bg" src="../../images/@bg_05.png" alt="배경5">
	</div>

	<div class="sticky-bar">
		<img class="bg" src="../../images/@sticky-bar-01.png" alt="스티키바 이미지">
		<button class="btn-submit-sticky" type="button"></button>
	</div>

</div>
<jsp:include page="../common/footer.jsp"/>