<%@ page contentType="text/html; charset=utf-8" %>
    <jsp:include page="../../templates/common/header.jsp" />
    <!-- container -->
    <div class="container" id="content">

        <div class="page-header">
            <h2 class="title">상담 예약 취소 완료</h2>
        </div>

        <!-- contents -->
        <div class="contents">

            <div class="cont-wrap w100">
                <div class="done-msg-area pt100">
                    <div class="done-msg-big">
                        <strong>매장 <em>상담</em> 예약 취소가 <br class="pc-hidden">완료되었습니다.</strong>
                        <!-- <strong>매장 <em>구매</em> 예약 취소가 <br class="pc-hidden">완료되었습니다.</strong> -->
                    </div>
                    <div class="done-msg-small">
                        <ul>
                            <li>* 가까운 매장을 방문하시거나 베스트샵 웹 사이트를 통해 <br class="pc-hidden">다시 상담 또는 구매 예약을 하시면 <br class="pc-hidden">언제든지 상담을 받으실 수 있습니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="btn-area center m64">
                    <a class="btn" href="/bestshop/pages/reservation/BSF-RES-INQ.jsp">상담 예약 조회</a>
                    <a class="btn border" href="/bestshop/">메인 화면으로</a>
                </div>
            </div>

        </div>
        <!-- // contents -->
    </div>
    <!-- // container -->

    <jsp:include page="../../templates/common/footer.jsp" />