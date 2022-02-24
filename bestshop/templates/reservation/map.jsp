<%@ page contentType="text/html; charset=utf-8" %>
<div class="main-area active"><!-- active 클래스 추가 -->
    <div class="shop-date-wrap">
        <div class="view-area">
            <div class="sort-area">
                <button type="button" class="view-map active">지도보기</button><!-- active 클래스 추가 -->
                <button type="button" class="view-list">리스트보기</button>
            </div>

            <div class="sort-block">
                <!-- 지도보기 영역 -->
                <div class="map-wrap active"><!-- active 클래스 추가 -->
                    <ul class="input-select-type">
                        <li>
                            <div class="slt sltBox border-type" data-txt-change="true">
                                <a href="javascript:void(0);" class="btn-slt">선택</a>
                                <ul>
                                    <li><a href="javascript:void(0);">선택</a></li>
                                    <li><a href="javascript:void(0);">서울특별시</a></li>
                                </ul>
                                <select title="시/도 선택">
                                    <option selected>선택</option>
                                    <option>서울특별시</option>
                                </select>
                            </div>
                        </li>
                        <li>
                            <div class="slt sltBox border-type" data-txt-change="true">
                                <a href="javascript:void(0);" class="btn-slt">선택</a>
                                <ul>
                                    <li><a href="javascript:void(0);">선택</a></li>
                                    <li><a href="javascript:void(0);">강남구</a></li>
                                </ul>
                                <select title="구 선택">
                                    <option selected>선택</option>
                                    <option>강남구</option>
                                </select>
                            </div>
                        </li>
                    </ul>

                    <!-- api 영역 -->
                    <div class="api-area">
                        <div class="map-list-wrap active">
                            <div class="list-inner custom-scroll">
                                <ul class="shop-list">
                                    <li><button type="button" class="btn-shop">강남본점</button></li>
                                    <li><button type="button" class="btn-shop active">갤러리아 명품관 WEST점</button></li>
                                    <li><button type="button" class="btn-shop">논현역점</button></li>
                                    <li><button type="button" class="btn-shop">대치본점</button></li>
                                    <li><button type="button" class="btn-shop">논현역점</button></li>
                                    <li><button type="button" class="btn-shop">대치본점</button></li>
                                    <li><button type="button" class="btn-shop">논현역점</button></li>
                                    <li><button type="button" class="btn-shop">대치본점</button></li>
                                    <li><button type="button" class="btn-shop">논현역점</button></li>
                                    <li><button type="button" class="btn-shop">대치본점</button></li>
                                    <li><button type="button" class="btn-shop">논현역점</button></li>
                                    <li><button type="button" class="btn-shop">대치본점</button></li>
                                    <li><button type="button" class="btn-shop">논현역점</button></li>
                                    <li><button type="button" class="btn-shop">대치본점</button></li>
                                    <li><button type="button" class="btn-shop">논현역점</button></li>
                                    <li><button type="button" class="btn-shop">대치본점</button></li>
                                    <li><button type="button" class="btn-shop">논현역점</button></li>
                                    <li><button type="button" class="btn-shop">대치본점</button></li>
                                </ul>
                            </div>
                            <button type="button" class="btn-view"><span class="blind">매장 리스트 보기</span></button>
                        </div>
                        <div class="btn-area innerMap">
                            <a href="javascript:void(0);" class="btn purple gps">가까운 매장찾기</a>
                        </div>
                    </div>
                    <!-- // api 영역 -->
                </div><!-- //.map-wrap -->

                <!-- 리스트 보기 영역 -->
                <div class="list-wrap"><!-- active 클래스 추가 -->
                    <div class="search-wrap">
                        <form action="#">
                            <div class="search-box">
                                <input type="text" placeholder="매장명을 검색해주세요."
                                    title="매장명을 검색해주세요." required="required">
                                <button type="button" class="btn-clear">검색어 삭제</button>
                                <button type="button" class="btn-search">검색</button>
                            </div>
                        </form>
                    </div>
                    <div class="view-wrap">
                        <div class="lt custom-scroll">
                            <ul class="shop-list">
                                <li><button type="button" class="btn-city">전체<span>530</span></button></li>
                                <li><button type="button" class="btn-city active">서울특별시<span>7</span></button></li>
                                <li><button type="button" class="btn-city">부산광역시<span>38</span></button></li>
                                <li><button type="button" class="btn-city">대구광역시<span>32</span></button></li>
                                <li><button type="button" class="btn-city">인천광역시<span>56</span></button></li>
                                <li><button type="button" class="btn-city">광주광역시<span>72</span></button></li>
                                <li><button type="button" class="btn-city">대전광역시<span>65</span></button></li>
                                <li><button type="button" class="btn-city">울산광역시<span>79</span></button></li>
                                <li><button type="button" class="btn-city">세종특별자치시청<span>5</span></button></li>
                                <li><button type="button" class="btn-city">부산광역시<span>38</span></button></li>
                                <li><button type="button" class="btn-city">대구광역시<span>32</span></button></li>
                                <li><button type="button" class="btn-city">인천광역시<span>56</span></button></li>
                                <li><button type="button" class="btn-city">광주광역시<span>72</span></button></li>
                                <li><button type="button" class="btn-city">대전광역시<span>65</span></button></li>
                                <li><button type="button" class="btn-city">울산광역시<span>79</span></button></li>
                                <li><button type="button" class="btn-city">세종특별자치시청<span>5</span></button></li>
                            </ul>
                        </div>
                        <div class="mo-select">
                            <div class="slt sltBox border-type" data-txt-change="true">
                                <a href="javascript:void(0);" class="btn-slt">선택</a>
                                <ul>
                                    <li><a href="javascript:void(0);">선택</a></li>
                                    <li><a href="javascript:void(0);">서울특별시</a></li>
                                </ul>
                                <select title="시/도 선택">
                                    <option selected>선택</option>
                                    <option>서울특별시</option>
                                </select>
                            </div>
                        </div>
                        <div class="rt custom-scroll">
                            <ul class="detail-list">
                                <li>
                                    <a href="#" class="shop-box">
                                        <div class="name-area">
                                            <p class="shop-name">강남본점</p>
                                            <ul class="key-words">
                                                <li class="new">NEW</li><li>화상상담</li><li>아이폰</li><li>LX지인</li><li>야간무인</li>
                                            </ul>
                                        </div>
                                        <p class="info-txt">
                                            서울특별시 강남구 도산대로 403 (청담동 86-1)
                                        </p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="shop-box">
                                        <div class="name-area">
                                            <p class="shop-name">강남본점</p>
                                            <ul class="key-words">
                                                <li class="new">NEW</li><li>화상상담</li><li>아이폰</li><li>LX지인</li><li>야간무인</li>
                                            </ul>
                                        </div>
                                        <p class="info-txt">
                                            서울특별시 강남구 도산대로 403 (청담동 86-1)
                                        </p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="shop-box">
                                        <div class="name-area">
                                            <p class="shop-name">강남본점</p>
                                            <ul class="key-words">
                                                <li class="new">NEW</li><li>화상상담</li><li>아이폰</li><li>LX지인</li><li>야간무인</li>
                                            </ul>
                                        </div>
                                        <p class="info-txt">
                                            서울특별시 강남구 도산대로 403 (청담동 86-1)
                                        </p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="shop-box">
                                        <div class="name-area">
                                            <p class="shop-name">강남본점</p>
                                            <ul class="key-words">
                                                <li class="new">NEW</li><li>화상상담</li><li>아이폰</li><li>LX지인</li><li>야간무인</li>
                                            </ul>
                                        </div>
                                        <p class="info-txt">
                                            서울특별시 강남구 도산대로 403 (청담동 86-1)
                                        </p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="shop-box">
                                        <div class="name-area">
                                            <p class="shop-name">강남본점</p>
                                            <ul class="key-words">
                                                <li class="new">NEW</li><li>화상상담</li><li>아이폰</li><li>LX지인</li><li>야간무인</li>
                                            </ul>
                                        </div>
                                        <p class="info-txt">
                                            서울특별시 강남구 도산대로 403 (청담동 86-1)
                                        </p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="shop-box">
                                        <div class="name-area">
                                            <p class="shop-name">강남본점</p>
                                            <ul class="key-words">
                                                <li class="new">NEW</li><li>화상상담</li><li>아이폰</li><li>LX지인</li><li>야간무인</li>
                                            </ul>
                                        </div>
                                        <p class="info-txt">
                                            서울특별시 강남구 도산대로 403 (청담동 86-1)
                                        </p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="shop-box">
                                        <div class="name-area">
                                            <p class="shop-name">강남본점</p>
                                            <ul class="key-words">
                                                <li class="new">NEW</li><li>화상상담</li><li>아이폰</li><li>LX지인</li><li>야간무인</li>
                                            </ul>
                                        </div>
                                        <p class="info-txt">
                                            서울특별시 강남구 도산대로 403 (청담동 86-1)
                                        </p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="shop-box">
                                        <div class="name-area">
                                            <p class="shop-name">강남본점</p>
                                            <ul class="key-words">
                                                <li class="new">NEW</li><li>화상상담</li><li>아이폰</li><li>LX지인</li><li>야간무인</li>
                                            </ul>
                                        </div>
                                        <p class="info-txt">
                                            서울특별시 강남구 도산대로 403 (청담동 86-1)
                                        </p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="shop-box">
                                        <div class="name-area">
                                            <p class="shop-name">강남본점</p>
                                            <ul class="key-words">
                                                <li class="new">NEW</li><li>화상상담</li><li>아이폰</li><li>LX지인</li><li>야간무인</li>
                                            </ul>
                                        </div>
                                        <p class="info-txt">
                                            서울특별시 강남구 도산대로 403 (청담동 86-1)
                                        </p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="shop-box">
                                        <div class="name-area">
                                            <p class="shop-name">강남본점</p>
                                            <ul class="key-words">
                                                <li class="new">NEW</li><li>화상상담</li><li>아이폰</li><li>LX지인</li><li>야간무인</li>
                                            </ul>
                                        </div>
                                        <p class="info-txt">
                                            서울특별시 강남구 도산대로 403 (청담동 86-1)
                                        </p>
                                    </a>
                                </li>
                            </ul>
                            <!-- .no-data -->
                            <div class="no-data">
                                <span>검색된 결과가 없습니다.</span>
                            </div>
                            <!-- // .no-data -->
                        </div>
                    </div>
                </div><!-- //.list-wrap -->

            </div><!-- //.sort-block -->
        </div>
    </div>
</div>