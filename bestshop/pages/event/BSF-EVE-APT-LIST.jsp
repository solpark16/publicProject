<%@ page contentType="text/html; charset=utf-8" %>
<jsp:include page="../../templates/common/header.jsp" />

<!-- container -->
<div class="container" id="content">
    <div class="page-header">
        <h2 class="title">행사 아파트 리스트</h2>
    </div>
    <!-- contents -->
    <div class="contents">
        <div class="cont-wrap">
            <!-- 지역 선택 -->
            <div class="sorting-cp">
                <!-- pc -->
                <div class="cp-map m-hidden">
                    <ul class="list-cp-map">
                        <li class="li01"><a href="#none">서울특별시</a></li>
                        <li class="li02"><a href="#none">경기도</a></li>
                        <li class="li03"><a href="#none">인천</a></li>
                        <li class="li04"><a href="#none">강원도</a></li>
                        <li class="li05"><a href="#none">충청북도</a></li>
                        <li class="li06"><a href="#none">충청남도</a></li>
                        <li class="li07"><a href="#none">세종</a></li>
                        <li class="li08"><a href="#none">대전</a></li>
                        <li class="li09"><a href="#none">경상북도</a></li>
                        <li class="li10"><a href="#none">경상남도</a></li>
                        <li class="li11"><a href="#none">대구</a></li>
                        <li class="li12"><a href="#none">울산</a></li>
                        <li class="li13"><a href="#none">부산</a></li>
                        <li class="li14"><a href="#none">전라북도</a></li>
                        <li class="li15"><a href="#none">전라남도</a></li>
                        <li class="li16"><a href="#none">광주</a></li>
                        <li class="li17"><a href="#none">제주도</a></li>
                    </ul>
                </div>
                <div class="cp-list m-hidden">
                    <ul class="list-chkrdo-btn">
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp-all" name="rdo-cp" checked />
                                <label for="rdo-cp-all">전체</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp01" name="rdo-cp" />
                                <label for="rdo-cp01">강남구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp02" name="rdo-cp" />
                                <label for="rdo-cp02">강동구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp03" name="rdo-cp" />
                                <label for="rdo-cp03">강북구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp04" name="rdo-cp" />
                                <label for="rdo-cp04">강서구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp05" name="rdo-cp" />
                                <label for="rdo-cp05">관악구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp06" name="rdo-cp" />
                                <label for="rdo-cp06">광진구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp07" name="rdo-cp" />
                                <label for="rdo-cp07">구로구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp08" name="rdo-cp" />
                                <label for="rdo-cp08">금천구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp09" name="rdo-cp" />
                                <label for="rdo-cp09">노원구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp10" name="rdo-cp" />
                                <label for="rdo-cp10">도봉구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp11" name="rdo-cp" />
                                <label for="rdo-cp11">동대문구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp12" name="rdo-cp" />
                                <label for="rdo-cp12">동작구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp13" name="rdo-cp" />
                                <label for="rdo-cp13">마포구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp14" name="rdo-cp" />
                                <label for="rdo-cp14">서대문구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp15" name="rdo-cp" />
                                <label for="rdo-cp15">서초구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp16" name="rdo-cp" />
                                <label for="rdo-cp16">성동구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp17" name="rdo-cp" />
                                <label for="rdo-cp17">성북구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp18" name="rdo-cp" />
                                <label for="rdo-cp18">송파구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp19" name="rdo-cp" />
                                <label for="rdo-cp19">양천구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp20" name="rdo-cp" />
                                <label for="rdo-cp20">영등포구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp21" name="rdo-cp" />
                                <label for="rdo-cp21">용산구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp22" name="rdo-cp" />
                                <label for="rdo-cp22">은평구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp23" name="rdo-cp" />
                                <label for="rdo-cp23">종로구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp24" name="rdo-cp" />
                                <label for="rdo-cp24">중구</label>
                            </span>
                        </li>
                        <li>
                            <span class="chkrdo-btn">
                                <input type="radio" id="rdo-cp25" name="rdo-cp" />
                                <label for="rdo-cp25">중랑구</label>
                            </span>
                        </li>
                    </ul>
                </div>
                <!-- //pc -->
                <!-- mobile -->
                <div class="slt-m-full-area pc-hidden">
                    <label for="slt-sorting-cp01">
                        <select id="slt-sorting-cp01" class="base-slt">
                            <option>시/도 선택</option>
                        </select>
                    </label>
                    <label for="slt-sorting-cp02">
                        <select id="slt-sorting-cp02" class="base-slt">
                            <option>전체</option>
                        </select>
                    </label>
                </div>
                <!-- //mobile -->
            </div>
            <!-- //지역 선택 -->
            <!-- 결과 -->
            <div class="sorting-result">
                <!-- 결과 header -->
                <div class="sr-header">
                    <dl class="sr-location">
                        <dt><span class="blind">현재 선택된 시/도</span></dt>
                        <dd>
                            <span>서울특별시</span>
                            <span class="arrow">&gt;</span>
                            <strong title="현재선택">전체</strong>
                        </dd>
                    </dl>
                    <div class="btn-area">
                        <a href="BSF-EVE-FAIR-LIST.jsp" class="btn-txt-more">외부 박람회 확인하기</a>
                    </div>
                </div>
                <!-- //결과 header -->
                <!-- 검색 -->
                <form action="#none" class="sorting-form">
                    <div class="search-box">
                        <input type="text" placeholder="지역 선택 후 아파트 명을 입력해주세요." title="아파트명 입력" required="required" />
                        <button type="button" class="btn-clear">검색어 삭제</button>
                        <button type="button" class="btn-search">검색</button>
                    </div>
                </form>
                <!-- //검색 -->
                <!-- 목록 -->
                <ul class="list-apt ty-btn">
                    <li>
                        <div class="li-wrap">
                            <strong class="cp">동대문구</strong>
                            <dfn class="name">e편한세상 청계 센트럴포레</dfn>
                            <ul class="branch">
                                <li>군자점</li>
                                <li>왕십리점</li>
                                <li>용두점</li>
                                <li>청구점</li>
                                <li>미아사거리점</li>
                            </ul>
                            <div class="btn-area">
                                <a href="BSF-EVE-APT-RES.jsp" class="btn border-gray s03 b01">방문 상담 예약</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="li-wrap">
                            <strong class="cp">동대문구</strong>
                            <dfn class="name">e편한세상 청계 센트럴포레</dfn>
                            <ul class="branch">
                                <li>군자점</li>
                                <li>왕십리점</li>
                                <li>용두점</li>
                                <li>청구점</li>
                                <li>미아사거리점</li>
                            </ul>
                            <div class="btn-area">
                                <a href="BSF-EVE-APT-RES.jsp" class="btn border-gray s03 b01">방문 상담 예약</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="li-wrap">
                            <strong class="cp">동대문구</strong>
                            <dfn class="name">e편한세상 청계 센트럴포레</dfn>
                            <ul class="branch">
                                <li>군자점</li>
                                <li>왕십리점</li>
                                <li>용두점</li>
                                <li>청구점</li>
                                <li>미아사거리점</li>
                            </ul>
                            <div class="btn-area">
                                <a href="BSF-EVE-APT-RES.jsp" class="btn border-gray s03 b01">방문 상담 예약</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="li-wrap">
                            <strong class="cp">동대문구</strong>
                            <dfn class="name">e편한세상 청계 센트럴포레</dfn>
                            <ul class="branch">
                                <li>군자점</li>
                                <li>왕십리점</li>
                                <li>용두점</li>
                                <li>청구점</li>
                                <li>미아사거리점</li>
                            </ul>
                            <div class="btn-area">
                                <a href="BSF-EVE-APT-RES.jsp" class="btn border-gray s03 b01">방문 상담 예약</a>
                            </div>
                        </div>
                    </li>
                </ul>
                <!-- //목록 -->
            </div>
            <!-- //결과 -->
        </div>
    </div>
    <!-- // contents -->
</div>
<!-- // container -->

<script>
    // 지도
    function mapChnage(){
        var map = $(".cp-map");
        var defaultNum = 1;

        $(".list-cp-map li:nth-child(" + defaultNum + ")").addClass("on");
        map.attr("data-number", defaultNum);

        /*
        $(".list-cp-map li").each(function(){
            var i = $(this).text();
            $(this).attr("data-txt", i);
        });
        */

        $(document).on("click", ".list-cp-map li a", function(){
            var index = $(this).parent().index() + 1;
            $(this).parent().addClass("on").siblings().removeClass("on");
            map.attr("data-number", index);
        });
    };
    mapChnage();
</script>

<jsp:include page="../../templates/common/footer.jsp" />