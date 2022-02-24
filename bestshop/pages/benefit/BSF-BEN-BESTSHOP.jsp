<%@ page contentType="text/html; charset=utf-8" %>
<jsp:include page="../../templates/common/header.jsp" />

<!-- container -->
<div class="container" id="content">
    <div class="page-header">
        <h2 class="title">이달의 혜택</h2>
    </div>
    <!-- contents -->
    <div class="contents">
        <div class="cont-wrap">
            <div class="random-count-slide">
                <div class="slide-area">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="../../images/img_benefit_month_test.png" class="pcOnly" alt="해당 이미지 ALT" />
                            <img src="../../images/img_benefit_month_test.png" class="mobileOnly" alt="해당 이미지 ALT" />
                        </div>
                        <div class="swiper-slide">
                            <img src="../../images/img_benefit_month_test.png" class="pcOnly" alt="해당 이미지 ALT" />
                            <img src="../../images/img_benefit_month_test.png" class="mobileOnly" alt="해당 이미지 ALT" />
                        </div>
                        <div class="swiper-slide">
                            <img src="../../images/img_benefit_month_test.png" class="pcOnly" alt="해당 이미지 ALT" />
                            <img src="../../images/img_benefit_month_test.png" class="mobileOnly" alt="해당 이미지 ALT" />
                        </div>
                    </div>
                </div>
                <div class="slide-navi">
                    <button type="button" class="btn-prev">앞으로</button>
                    <button type="button" class="btn-next">뒤로</button>
                </div>
                <div class="slide-pager">
                    <div class="slide-pagination"></div>
                </div>
            </div>
            <div class="btn-area center m-full">
                <a href="javascript:void(0);" class="btn s01">이벤트 전체보기</a>
                <a href="javascript:void(0);" class="btn s01 border">매장 상담 예약</a>
            </div>
        </div>
    </div>
    <!-- // contents -->
</div>
<!-- // container -->

<jsp:include page="../../templates/common/footer.jsp" />