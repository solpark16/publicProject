<%@ page contentType="text/html; charset=utf-8" %>
<jsp:include page="../../templates/common/header.jsp" />

<!-- container -->
<div class="container" id="content">
    <div class="page-header">
        <h2 class="title">카드 혜택</h2>
        <div class="desc">
            <p class="txt">LG전자 베스트샵 제휴 카드만의 혜택을  확인해 보세요.<br>(매장 결제시에만 적용됩니다.)</p>
        </div>
    </div>
    <!-- contents -->
    <div class="contents">
        <div class="cont-wrap">
            <div class="tab01 tabOn detail">
                <ul>
                    <li class="on"><a href="javascript:void(0);">카드사별 혜택</a></li>
                    <li class=""><a href="javascript:void(0);">무이자 혜택</a></li>
                </ul>
                <div class="tab02 detail-block">
                    <div class="detail-box on">
                        <jsp:include page="/bestshop/pages/benefit/BSF-BEN-CARD-CARD.jsp" />
                    </div>
                    <div class="detail-box">
                        <jsp:include page="/bestshop/pages/benefit/BSF-BEN-CARD-INTERESTFREE.jsp" />
                    </div>
                </div>
            </div><!-- //.tab01 -->
        </div>
    </div>
    <!-- // contents -->
</div>
<!-- // container -->

<jsp:include page="../../templates/common/footer.jsp" />