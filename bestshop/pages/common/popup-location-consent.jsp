<%@ page contentType="text/html; charset=utf-8" %>
<jsp:include page="../../templates/common/header.jsp" />
<div class="container" id="content">
    <!-- 팝업 버튼 -->
    <a href="#popup-confirm" class="btn btnPopOpen">팝업: 위치 정보 제공 동의</a>
    <!-- //팝업 버튼 -->
</div>

<!-- dim -->
<div class="dim"> </div>
<!-- //dim -->

<!-- 팝업: 위치 정보 제공 동의 -->
<div class="popup confirm" id="popup-confirm">
    <div class="pop-wrap">
        <div class="pop-cont">
            <dfn class="tit-pop">위치 정보 제공 동의</dfn>
            <p class="txt-pop01 tm-ty01">
                <span class="block">고객님께서 제공하시는 위치 정보는 현재 계신 위치에서 직선 거리 기준으로 가까운 매장 안내를 위해서만 이용됩니다.</span>
                <span class="block">또한, 상기 서비스 제공 후 즉시 폐기되며, 별도 저장되지 않습니다.</span>
                <span class="block">고객님의 현재 계신 위치 정보 제공에 동의하시겠습니까?</span>
            </p>
        </div>
        <div class="btn-area m-full-flex">
            <button type="button" class="btn s01 gray btnPopCancel">아니요</button>
            <button type="button" class="btn s01">네</button>
        </div>
    </div>
</div>
<!-- 팝업: 위치 정보 제공 동의 -->

<jsp:include page="../../templates/common/footer.jsp" />