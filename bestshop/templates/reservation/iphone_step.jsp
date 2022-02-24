<%@ page contentType="text/html; charset=utf-8" %>

<div class="step-cont">
    <!-- s: STEP CONT BLOCK -->
    <div class="step-cont-block">
        <div class="step-title">
            <div class="cont-summary">
                <strong class="mo-tit">상담목적 및 제품선택</strong>
                <div class="summary-detail">
                    <dl>
                        <dt>상담 목적</dt><dd>기기변경</dd>
                    </dl>
                </div>
                <div class="summary-detail">
                    <dl>
                        <dt>제품</dt><dd>아이폰</dd>
                    </dl>
                </div>
                <div class="summary-detail">
                    <dl>
                        <dt>구매 시기</dt><dd>3개월 내</dd>
                    </dl>
                </div>
            </div>
            <button type="button" class="stepToggle">수정</button>
        </div><!-- //.step-title -->

        <div class="step-detail" style="display:block;">
            <div class="detail-block">
                <h3 class="step-tit">상담목적<sup>*</sup></h3>
                <jsp:include page="../../templates/reservation/input-icon-type.jsp" /> <!-- input-icon-type -->
            </div><!-- //.detail-block -->
            <div class="detail-block full">
                <h3 class="step-tit">제품선택<sup>*</sup><span>(다중선택)</span></h3>
                <jsp:include page="../../templates/reservation/input-cate-type.jsp" /> <!-- input cate type -->
            </div><!-- //.detail-block -->
            <div class="detail-block">
                <h3 class="step-tit">구매 희망 시기<sup>*</sup></h3>
                <jsp:include page="../../templates/reservation/input-base-type.jsp" /> <!-- input-base-type -->
            </div><!-- //.detail-block -->
            <div class="detail-block">
                <h3 class="step-tit">추가 전달사항</h3>
                <div class="text-area">
                    <textarea title="추가 전달사항 입력" maxlength="100" placeholder="원하시는 제품의 기능이나 가격대, 입주 예정일 등 기타 문의사항을 남겨주시면 원활한 상담이 가능합니다."></textarea>
                    <p class="info-msg">* 텍스트는 100자까지 입력가능합니다.</p>
                    <p class="txt-count"><span>0</span>/100</p>
                </div>
            </div><!-- //.detail-block -->
            <div class="btn-area right">
                <button type="button" class="btn s01 border-red arr-right">다음으로</button>
            </div>
        </div>
    </div>
    <!-- e: STEP CONT BLOCK -->

    <!-- s: STEP CONT BLOCK -->
    <div class="step-cont-block">
        <div class="step-title">
            <div class="title-step"><strong>STEP02</strong> 상담하실 매장과 일시를 선택해주세요.</div>
            <div class="cont-summary">
                <div class="summary-detail">
                    <dl>
                        <dt>상담 매장</dt><dd>강남본점</dd>
                    </dl>
                </div>
                <div class="summary-detail">
                    <dl>
                        <dt>예약 일시</dt><dd>21년 12월 15일</dd><dd>17시</dd>
                    </dl>
                </div>
                <div class="summary-detail">
                    <dl>
                        <dt>구매 시기</dt><dd>3개월 내</dd>
                    </dl>
                </div>
            </div>
            <button type="button" class="stepToggle">수정</button>
        </div><!-- //.step-title -->

        <div class="step-detail">
            <div class="detail-block step-area">
                <h3 class="step-tit">상담하실 매장과 예약 일시 선택<sup>*</sup><span>(아이폰 상담이 가능한 매장만 조회됩니다.)</span></h3>
                <jsp:include page="../../templates/reservation/map.jsp" /> <!-- map -->
                <jsp:include page="../../templates/reservation/schedule.jsp" /> <!-- schedule -->
                <div class="btn-area bg active"><!-- active 클래스 추가 -->
                    <div class="result-txt">
                        <!-- <p>상담하실 매장과 일시를 선택해주세요.</p> -->
                        <p>상담 매장: <span>강남본점</span></p>
                        <p>예약 일시: <span>21년12월15일, 17시</span></p>
                    </div>
                    <button type="button" class="btn s01 border-red arr-right">다음으로</button>
                </div>
            </div><!-- //.detail-block -->
        </div>
    </div>
    <!-- e: STEP CONT BLOCK -->

    <!-- s: STEP CONT BLOCK -->
    <div class="step-cont-block">
        <div class="step-title">
            <div class="title-step"><strong>STEP03</strong> 예약자 정보를 입력해주세요.</div>
            <button type="button" class="stepToggle">수정</button>
        </div><!-- //.step-title -->

        <div class="step-detail">
            <div class="detail-block step-area">
                <h3 class="step-tit">예약자 정보</h3>
                <jsp:include page="../../templates/reservation/step03.jsp" /><!-- step 3 -->
            </div><!-- //.detail-block -->
        </div>
    </div>
    <!-- e: STEP CONT BLOCK -->

    <div class="btn-area page-btn active"><!-- active 클래스 추가 -->
        <button type="button" class="btn btn-res btnPopOpen" data-href="#popup-certification">상담 예약하기</button>
    </div>
</div>

<script>
    $(document).ready(function(){});
</script>