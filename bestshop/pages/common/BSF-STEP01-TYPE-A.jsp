<%@ page contentType="text/html; charset=utf-8" %>

<!-- step 1 -->
<div class="step-area step01">

    <div class="result-area active"><!-- active 클래스 추가 (display - none / block) -->
        <div class="info-step01">
            <div class="info-txt-com active"><!-- active 클래스 추가 -->
                <a href="javascript:void(0);">
                    <span class="mo-tit">상담목적 및 제품선택</span>
                    <span class="pc-tit">상담목적 :</span>
                    <span class="txt">혼수</span>

                    <span class="pc-tit">상담제품 :</span>
                    <span class="txt">TV, 냉장고, 식기세척기, 세탁기, 스타일러, 공기청정기, 에어컨</span>

                    <span class="pc-tit">구매시기 :</span>
                    <span class="txt">3개월 내</span>
                </a>
            </div>
        </div>
    </div>

    <div class="main-area active"><!-- active 클래스 추가 -->
        <form action="#">
            <h3 class="step-tit">상담목적<sup>*</sup></h3>
            <ul class="input-icon-type">
                <li>
                    <div class="icon-btn">
                        <input type="radio" name="purpose" id="wedding">
                        <label for="wedding">
                            <i class="icon wedding"></i><span class="name">혼수</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="icon-btn">
                        <input type="radio" name="purpose" id="move">
                        <label for="move">
                            <i class="icon move"></i><span class="name">이사</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="icon-btn">
                        <input type="radio" name="purpose" id="interior">
                        <label for="interior">
                            <i class="icon interior"></i><span class="name">인테리어</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="icon-btn">
                        <input type="radio" name="purpose" id="broken">
                        <label for="broken">
                            <i class="icon broken"></i><span class="name">고장</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="icon-btn">
                        <input type="radio" name="purpose" id="etc">
                        <label for="etc">
                            <i class="icon etc"></i><span class="name">기타</span>
                        </label>
                    </div>
                </li>
            </ul>

            <h3 class="step-tit">제품선택<sup>*</sup><span>(다중선택)</span></h3>
            <!-- 제품선택 카테고리형 -->
            <ul class="input-cate-type">
                <li>
                    <p class="cate-tit"><i class="icon tv-audio"></i>TV/오디오</p>
                    <ul class="cate-items">
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="tv" id="tv">
                                <label for="tv">
                                    <span class="name">TV</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="projector" id="projector">
                                <label for="projector">
                                    <span class="name">프로젝터</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="soundbar" id="soundbar">
                                <label for="soundbar">
                                    <span class="name">사운드바</span>
                                </label>
                            </div>
                        </li>
                    </ul>
                </li>
                <li>
                    <p class="cate-tit"><i class="icon pc"></i>PC</p>
                    <ul class="cate-items">
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="laptop" id="laptop">
                                <label for="laptop">
                                    <span class="name">노트북</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="desktop" id="desktop">
                                <label for="desktop">
                                    <span class="name">데스크탑</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="monitor" id="monitor">
                                <label for="monitor">
                                    <span class="name">모니터</span>
                                </label>
                            </div>
                        </li>
                    </ul>
                </li>
                <li>
                    <p class="cate-tit"><i class="icon kitchens"></i>주방가전</p>
                    <ul class="cate-items">
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="kitchens" id="fridge">
                                <label for="fridge">
                                    <span class="name">냉장고</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="dish-washer" id="dish-washer">
                                <label for="dish-washer">
                                    <span class="name">식기세척기</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="oven" id="oven">
                                <label for="oven">
                                    <span class="name">광파오븐</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="range" id="range">
                                <label for="range">
                                    <span class="name">전기레인지</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="etc-kitchens" id="etc-kitchens">
                                <label for="etc-kitchens">
                                    <span class="name">기타 주방가전</span>
                                </label>
                        </div>
                        </li>
                    </ul>
                </li>
                <li>
                    <p class="cate-tit"><i class="icon house"></i>생활가전</p>
                    <ul class="cate-items">
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="washing" id="washing">
                                <label for="washing">
                                    <span class="name">세탁기/건조기</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="styler" id="styler">
                                <label for="styler">
                                    <span class="name">스타일러</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="air-con" id="air-con">
                                <label for="air-con">
                                    <span class="name">에어컨</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="vaccum" id="vaccum">
                                <label for="vaccum">
                                    <span class="name">청소기</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="air-clean" id="air-clean">
                                <label for="air-clean">
                                    <span class="name">공기청정기</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="etc-house" id="etc-house">
                                <label for="etc-house">
                                    <span class="name">기타 생활가전</span>
                                </label>
                            </div>
                        </li>
                    </ul>
                </li>
                <li>
                    <p class="cate-tit"><i class="icon mobile"></i>모바일</p>
                    <ul class="cate-items">
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="iphone" id="iphone">
                                <label for="iphone">
                                    <span class="name">아이폰</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="ipad" id="ipad">
                                <label for="ipad">
                                    <span class="name">아이패드</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="watch" id="watch">
                                <label for="watch">
                                    <span class="name">애플워치</span>
                                </label>
                            </div>
                        </li>
                    </ul>
                </li>
                <li>
                    <p class="cate-tit"><i class="icon beauty"></i>뷰티</p>
                    <ul class="cate-items">
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="pra-l" id="pra-l">
                                <label for="pra-l">
                                    <span class="name">프라엘</span>
                                </label>
                            </div>
                        </li>
                        <li>
                            <div class="chkrdo-btn">
                                <input type="checkbox" name="medihair" id="medihair">
                                <label for="medihair">
                                    <span class="name">메디헤어</span>
                                </label>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- // 제품선택 카테고리형 -->

            <!-- 제품선택 제품군형 -->
            <!-- <ul class="input-pdt-type">
                <li>
                    <div class="chkrdo-btn icon">
                        <input type="checkbox" name="tv" id="tv">
                        <label for="tv">
                            <i class="icon tv"></i><span class="name">TV</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn icon">
                        <input type="checkbox" name="soundbar" id="soundbar">
                        <label for="soundbar">
                            <i class="icon soundbar"></i><span class="name">사운드바</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn icon">
                        <input type="checkbox" name="laptop" id="laptop">
                        <label for="laptop">
                            <i class="icon laptop"></i><span class="name">노트북</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn icon">
                        <input type="checkbox" name="desktop" id="desktop">
                        <label for="desktop">
                            <i class="icon desktop"></i><span class="name">데스크탑</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn icon">
                        <input type="checkbox" name="fridge" id="fridge">
                        <label for="fridge">
                            <i class="icon fridge"></i><span class="name">냉장고</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn icon">
                        <input type="checkbox" name="washing" id="washing">
                        <label for="washing">
                            <i class="icon washing"></i><span class="name">세탁기/건조기</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn icon">
                        <input type="checkbox" name="air-con" id="air-con">
                        <label for="air-con">
                            <i class="icon air-con"></i><span class="name">에어컨</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn icon">
                        <input type="checkbox" name="pra-l" id="pra-l">
                        <label for="pra-l">
                            <i class="icon pra-l"></i><span class="name">프라엘</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn icon">
                        <input type="checkbox" name="vaccum" id="vaccum">
                        <label for="vaccum">
                            <i class="icon vaccum"></i><span class="name">청소기</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn icon">
                        <input type="checkbox" name="styler" id="styler">
                        <label for="styler">
                            <i class="icon styler"></i><span class="name">스타일러</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn icon">
                        <input type="checkbox" name="air-clean" id="air-clean">
                        <label for="air-clean">
                            <i class="icon air-clean"></i><span class="name">공기청정기</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn icon">
                        <input type="checkbox" name="range" id="range">
                        <label for="range">
                            <i class="icon range"></i><span class="name">전기레인지</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn icon">
                        <input type="checkbox" name="ipad" id="ipad">
                        <label for="ipad">
                            <i class="icon ipad"></i><span class="name">아이패드</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn icon">
                        <input type="checkbox" name="projector" id="projector">
                        <label for="projector">
                            <i class="icon projector"></i><span class="name">프로젝터</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn icon">
                        <input type="checkbox" name="medihair" id="medihair">
                        <label for="medihair">
                            <i class="icon medihair"></i><span class="name">메디헤어</span>
                        </label>
                    </div>
                </li>
            </ul> -->
            <!-- // 제품선택 제품군형 -->

            <h3 class="step-tit">구매 희망 시기<sup>*</sup></h3>
            <ul class="input-base-type">
                <li>
                    <div class="chkrdo-btn">
                        <input type="radio" name="period" id="weeks01">
                        <label for="weeks01">
                            <span class="name">1주 내</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn">
                        <input type="radio" name="period" id="weeks02">
                        <label for="weeks02">
                            <span class="name">2주 내</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn">
                        <input type="radio" name="period" id="weeks03">
                        <label for="weeks03">
                            <span class="name">3주 내</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn">
                        <input type="radio" name="period" id="month01">
                        <label for="month01">
                            <span class="name">1개월 내</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn">
                        <input type="radio" name="period" id="month02">
                        <label for="month02">
                            <span class="name">2개월 내</span>
                        </label>
                    </div>
                </li>
                <li>
                    <div class="chkrdo-btn">
                        <input type="radio" name="period" id="month03">
                        <label for="month03">
                            <span class="name">3개월 내</span>
                        </label>
                    </div>
                </li>
            </ul>

            <h3 class="step-tit">추가 전달사항<span>(선택)</span></span></h3>
            <div class="text-area">
                <textarea title="추가 전달사항 입력" maxlength="100"
                    placeholder="원하시는 제품의 기능이나 가격대, 기타 문의사항을 남겨주시면 원활한 상담이 가능합니다."></textarea>
                <p class="info-msg">* 텍스트는 100자까지 입력가능합니다.</p>
                <p class="txt-count"><span>0</span>/100</p>
            </div>
        </form>
    </div>

    <div class="btn-area">
        <button type="button" class="btn s01 border-red arr-right">다음으로</button>
    </div>

</div>
<!-- // step 1 -->