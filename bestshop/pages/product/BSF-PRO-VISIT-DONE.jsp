<%@ page contentType="text/html; charset=utf-8" %>
    <jsp:include page="../../templates/common/header.jsp" />
    <!-- container -->
    <div class="container" id="content">

        <div class="page-header">
            <h2 class="title">내게 맞는 제품 찾기</h2>
        </div>

        <!-- contents -->
        <div class="contents">

            <div class="cont-wrap w100">
                <div class="done-msg-area">
                    <div class="done-msg-big">
                        <strong>상담 예약이 완료되었습니다.</strong>
                        <span>매장에서 전문 매니저가 고객님께 딱 맞는 제품을 안내드리겠습니다.</span>
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
                                <span>상담 매장</span>
                                <strong>강남본점</strong>
                            </li>
                            <li>
                                <span>예약 일시</span>
                                <strong>21년12월15일, 17시</strong>
                            </li>
                            <li>
                                <span>상담 희망 제품</span>
                                <ul>
                                    <li>LG 올레드 evo 오브제컬렉션 (65ART90EKPA)</li>
                                    <li>LG 올레드 evo 오브제컬렉션 (65ART90EKPB)</li>
                                    <li>LG 디오스 얼음정수기냉장고 오브제컬렉션 (W822SMS452)</li>
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