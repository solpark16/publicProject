<%@ page contentType="text/html; charset=utf-8" %>
    <jsp:include page="../../templates/common/header.jsp" />
    <!-- container -->
    <div class="container" id="content">

        <div class="page-header">
            <h2 class="title">상담 예약 조회</h2>
        </div>

        <!-- contents -->
        <div class="contents res-main">

            <div class="cont-wrap">

                <div class="inq-area">

                    <div class="inq-box-area">
                        <div class="inq-box">
                            <div class="top-area">
                                <h3 class="tit">회원 상담 예약 조회</h3>
                            </div>
                            <div class="body-area">
                                <ul class="bull info">
                                    <li>로그인 하신 후 접수하신 내역은 로그인 후 확인하실 수 있습니다.</li>
                                    <li>로그인 하시면 &quot;마이페이지 &gt; 상담 내역 조회&quot; 페이지로 이동합니다.</li>
                                </ul>
                            </div>
                            <div class="btn-area">
                                <a class="btn btn-inq" href="/bestshop/pages/reservation/BSF-RES-INQ-LIST.jsp">로그인 후 상담 내역 조회</a>
                            </div>
                        </div>

                        <div class="inq-box">
                            <div class="top-area">
                                <h3 class="tit">비회원 상담 예약 조회</h3>
                            </div>
                            <div class="body-area">
                                <div class="phone-check-wrap">
                                    <p class="note"><sup>*</sup>필수 입력 사항</p>
                                    <form action="#">
                                        <ul class="input-list-type">
                                            <li class="name-box">
                                                <div class="tit">
                                                    <label for="user-name02">
                                                        <span class="name">이름<sup>*</sup></span>
                                                    </label>
                                                </div>
                                                <div class="txt-box">
                                                    <input class="base-txt" type="text" id="user-name02" placeholder="이름 입력">
                                                </div>
                                            </li>
                                            <li class="num-box">
                                                <div class="tit">
                                                    <label for="user-number02">
                                                        <span class="name">휴대 전화<sup>*</sup></span>
                                                    </label>
                                                </div>
                                                <div class="txt-box">
                                                    <!-- <div class="input-pin-type">
                                                        <input class="base-txt" type="number" id="user-number02" placeholder="휴대전화 번호 입력">
                                                        <button type="button" class="btn-send">인증번호 발송</button>
                                                    </div>
                                                    <input class="base-txt" type="number" placeholder="인증번호를 입력해주세요" disabled> -->
                                                    <input class="base-txt" type="number" id="user-number02" placeholder="휴대전화 번호 입력">
                                                </div>
                                            </li>
                                        </ul>
                                    </form>
                                </div>
                            </div>
                            <div class="btn-area">
                                <a class="btn btn-inq" href="/bestshop/pages/reservation/BSF-RES-INQ-LIST.jsp">상담 내역 조회</a>
                            </div>
                        </div>
                    </div>

                    <div class="caution-box">
                        <p class="tit">&lsqb;유의사항&rsqb;</p>
                        <ul class="bull">
                            <li>인증번호가 수신되지 않은 경우 02-3777-1114가 스팸처리 되지 않았는지 확인해주시기 바랍니다.</li>
                            <li>회원가입 전 또는 비로그인 상태로 접수한 상담 예약 정보는 비회원 상담 예약 조회를 통회 조회하실 수 있습니다.</li>
                            <li>입력하신 고객 정보로 상담 예약 결과가 조회되지 않는 경우 02-3777-1114 로 문의하시기 바랍니다.</li>
                        </ul>
                    </div>

                </div>

            </div>

        </div>
        <!-- // contents -->
    </div>
    <!-- // container -->

    <jsp:include page="../../templates/common/footer.jsp" />