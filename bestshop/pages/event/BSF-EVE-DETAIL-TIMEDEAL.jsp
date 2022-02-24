<%@ page contentType="text/html; charset=utf-8" %>
<jsp:include page="../../templates/common/header.jsp" />

<!-- container -->
<div class="container" id="content">
    <!-- contents -->
    <div class="contents">
        <div class="cont-wrap w100">
            <div class="ev-detail-top">
                <div class="tit-wrap">
                    <div class="flag-wrap">
                        <span class="flag">온라인</span>
                        <span class="flag">경품</span>
                    </div>
                    <h2 class="tit">LGE.COM 오픈 기념 응원 댓글 이벤트</h2>
                    <span class="sub-tit"><span class="blind">서브 제목</span>LGE.COM 홈페이지가 오픈 되었습니다! 함께 응원해주세요!</span>
                </div>
                <div class="info-wrap">
                    <div class="schedule">
                        <dl>
                            <dt>이벤트 기간</dt>
                            <dd>2021.10.01 ~ 2021.10.31</dd>
                        </dl>
                        <dl>
                            <dt>당첨자 발표</dt>
                            <dd>2021.10.31</dd>
                        </dl>
                    </div>
                    <div class="target">
                        <dl>
                            <dt>대상고객</dt>
                            <dd>LG전자 통합 회원이라면 누구나</dd>
                        </dl>
                    </div>
                </div>
                <div class="component-wrap">
                    <div class="inner">
                        <div class="tooltip-wrap share layer-click">
                            <a href="javascript:void(0);" class="tooltip-icon ui_tooltip-target "><span class="blind">현재 페이지 공유하기</span></a>
                            <div class="tooltip-box fixed-right layer-detail">
                                <strong class="title">공유하기</strong>
                                <div class="sns-wrap">
                                    <ul class="sns-list">
                                        <li><a href="#none" class="ico-btn fb" title="페이스북에 공유하기, 새창열림" data-link-name="facebook">페이스북<span class="blind">으로 페이지 공유하기</span></a></li>
                                        <li><a href="#none" class="ico-btn tw" title="트위터에 공유하기, 새창열림" data-link-name="twitter">트위터<span class="blind">로 페이지 공유하기</span></a></li>
                                        <li><a href="#none" data-url="" class="ico-btn kk" title="카카오톡에 공유하기, 새창열림" data-link-name="kakaotalk">카카오톡<span class="blind">으로 페이지 공유하기</span></a></li>
                                        <li><a href="#none" data-url="" class="ico-btn url" data-link-name="copy_url">URL복사<span class="blind">하기</span></a></li>
                                    </ul>
                                </div>
                                <button type="button" class="btn-close"><span class="blind">닫기</span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ev-detail-con">
                <div class="ev-img-box">
                    <dl class="time-deal-countdown">
                        <dt><span>남은시간</span></dt>
                        <dd>
                            <div style="display: none;"><span class="days">0</span>일</div>
                            <div><span class="hours">12</span>시간</div>
                            <div><span class="minutes">00</span>분</div>
                            <div><span class="seconds">00</span>초</div>
                        </dd>
                    </dl>
                    <div class="img">
                        <img src="../../images/temp-thum-event.png" alt="event" />
                    </div>
                </div>
                <div class="point-container bg-tangible02">
                    <div class="point-wrap">
                        <dl class="txt-counting">
                            <dt>참여 인원 :</dt>
                            <dd><strong>100</strong>명</dd>
                        </dl>
                        <p class="txt-belt color-fff">본 이벤트는 마케팅 수신동의 고객에 한하여 참여 가능합니다.<br /> 마케팅 활용동의(문자필수) 체크 후 이벤트에 참여해주세요.</p>
                        <a href="#none" class="btn-txt-icon-more-wt">마케팅 활용동의 변경하러 가기</a>
                        <div class="btn-area"><a href="#none" class="btn white">타임딜 할인쿠폰 발급받기</a></div>
                    </div>
                </div>
                <div class="notice-wrap">
                    <dl class="bullet-list">
                        <dt class="b-tit">유의사항</dt>
                        <dd class="b-txt">본 이벤트는 LG전자 회원 및 멤버십 가입자 대상 이벤트로 LG전자 회원가입 및 로그인 후 참여하실 수 있습니다.</dd>
                        <dd class="b-txt">타인 계정 또는 타인의 사진을 도용하여 참여 시, 경품 지급 대상에서 제외됩니다.</dd>
                        <dd class="b-txt">LG전자 멤버십 고객에 한하여 당첨 시 멤버십 포인트가 적립됩니다.</dd>
                    </dl>
                </div>
                <div class="btn-area center full-size-m">
                    <a href="javascript:void(0);" class="btn border"><span>목록</span></a>
                </div>
            </div>
        </div>
    </div>
    <!-- // contents -->
</div>

<script>
    var $inputFile = $('.survey-box').find('input[type="file"]');
    var $btnDel =  $('.survey-box').find('.btn-del');

    $inputFile.change(function(e) {
        var index = $inputFile.index(this);
        var $input = $(e.currentTarget);

        if ($input[0].files.length > 0) {
          var file = e.currentTarget.files[0];
          _setPreview($(this), file);
          $input[0].value = '';
        }
    });
    function _setPreview($input, file) {
      var $fileBox = $input.closest('.file-item'),
        reader = new FileReader();

        reader.readAsDataURL(file);
        reader.onload = function(e){
          $fileBox.addClass('on');
          $fileBox.find('.file-preview').html('<img src="'+e.target.result+'" alt="첨부파일 썸네일">')
          $fileBox.find('.name').val(file.name);
        }
    }
    $btnDel.on('click', function() {
        var index = $btnDel.index(this);
        var $input = $inputFile.eq(index);
        var $box = $input.closest('.file-item');
        $input[0].value = '';
        $box.removeClass('on');
        $box.find('.file-preview').html('');
        $box.find('.name').val('');    
    });   

    // countdown
    $(function(){
        var countWrap = $(".time-deal-countdown dd");

        countWrap.each(function() {
            var obj = this,
				d = parseInt($(obj).find(".days").text()) * 86400,
		        h = parseInt($(obj).find(".hours").text()) * 3600,
			    m = parseInt($(obj).find(".minutes").text()) * 60,
				s = parseInt($(obj).find(".seconds").text()),
	            number = d + h + m + s;

			$(obj).attr("data-sec", number);

            getDateCount(obj);
        });

        function getDateCount(obj){
            var second = $(obj).attr("data-sec");

            $(obj).attr("data-timer", setInterval(function() {
                setTimeSaleTimer($(obj), second);
                second -= 1;
            }, 1000));
        };

        function setTimeSaleTimer(obj, objSec) {
            var days = parseInt( objSec / 86400 );
            var hours = parseInt( objSec / 3600 ) % 24;
            var minutes = parseInt( objSec / 60 ) % 60;
            var seconds = objSec % 60;

            if (days == 0 && hours == 0 && minutes == 0 && seconds == 0) {
                clearInterval($(obj).attr("data-timer"));
                return false;
            };

            if (hours == 0) {
                if (days > 0){
                    days --;
                    hours = 24;
                };
            };

            if (minutes == 0) {
                if (hours > 0){
                    hours --;
                    minutes = 60;
                };
            };

            if (seconds == 0) {
                if (minutes > 0){
                    minutes --;
                    seconds = 59;
                };
            }
            else {
                seconds --;
            };

            $(obj).find(".days").text(days);
            $(obj).find(".hours").text(hours);
            $(obj).find(".minutes").text(minutes);
            $(obj).find(".seconds").text(seconds);
        };
    });
</script>
<!-- // container -->

<jsp:include page="../../templates/common/footer.jsp" />