<%@ page contentType="text/html; charset=utf-8" %>
    <jsp:include page="../../templates/common/header.jsp" />
    <!-- container -->
    <div class="container" id="content">

        <div class="page-header">
            <h2 class="title">소모품 구매 예약</h1>
        </div>

        <!-- contents -->
        <div class="contents">

            <div class="cont-wrap w100">
                <div class="done-msg-area">
                    <div class="done-msg-big">
                        <strong>소모품 구매 예약이 완료되었습니다.</strong>
                        <span>매장에서 전문 매니저를 통해 예약하신 제품을 구매하신 후 <br class="m-hidden">추가 상담도 편하게 진행하실 수 있습니다.</span>
                    </div>
                    <div class="done-msg-small">
                        <ul>
                            <li>* 담당 매니저가 선정된 후, 매장 방문일 확인을 위해 <br class="pc-hidden">입력하신 휴대폰 번호로 연락드릴 예정이니 참고 부탁드립니다.</li>
                            <li>* 상담 예약 내역 조회는'매장 상담 예약 > 상담 예약 조회' 화면에서 <br class="pc-hidden">확인하실 수 있습니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="res-info-area">
                    <div class="info-box">
                        <ul>
                            <li>
                                <span>구매 매장</span>
                                <strong>강남본점</strong>
                            </li>
                            <li>
                                <span>예약 일시</span>
                                <strong>21년12월15일, 17시</strong>
                            </li>
                            <li>
                                <span>구매 예약 제품</span>
                                <ul>
                                    <li>물걸레노즐 (VNZPM02N)</li>
                                    <li>트루 토탈케어 필터 전용 극세 필터 (PFPDNC06)</li>
                                    <li>드럼 원터치급수호스(1.25M 온수) (WMFLHOSE4)</li>
                                </ul>
                            </li>
                            <li>
                                <span>예약자 정보</span>
                                <strong>김베샵, 010-1234-5678</strong>
                            </li>
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