<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko" class="mdevice">
<head>
    <meta charset="utf-8" />
    <title>LG전자 베스트샵</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <link rel="shortcut icon" href="/bestshop/images/favicon.ico">
    <link rel="stylesheet" href="/bestshop/css/reset.min.css">
    <link rel="stylesheet" href="/bestshop/css/common.css">
    <link rel="stylesheet" href="/bestshop/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="/bestshop/css/base.css">
    <link rel="stylesheet" href="/bestshop/css/mobile.css">
    <link rel="stylesheet" href="/bestshop/css/jy.css">
    <link rel="stylesheet" href="/bestshop/css/haeun.css">
    <script type="text/javascript" src="/bestshop/js/libs/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="/bestshop/js/libs/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="/bestshop/js/common.js"></script>
</head>
<body>

<article id="popup" class="win-popup-wrap event-popup">
    <input type="hidden" id="eventId">
    <header class="pop-header">
        <h1 class="tit"><span>당첨자 발표</span></h1>
    </header>
    <div class="pop-conts">
        <div class="ev-detail-top">
            <div class="tit-wrap">
                <div class="flag-wrap">
                    <span class="flag">당첨자 발표</span>
                    <span class="flag">SNS</span>
                </div>
                <h2 class="tit">LGE.COM 오픈 기념 응원 댓글 이벤트</h2>
                <p class="date">2021.05.03~2021.05.31</p>
            </div>
        </div>
        <div class="form-wrap search-box" data-url="" ui-modules="Validation">
            <dl class="forms">
                <dt class="tit"><label for="inp01">당첨자 확인</label></dt>
                <dd class="conts">
                    <div class="input-box btn-type">
                        <span class="input-wrap">
                        <input type="number" name="phone" data-required="true" id="inp01" value="" title="휴대폰 번호 뒤 4자리"
                        placeholder="휴대폰번호 뒤 4자리를 입력해 주세요.">
                        </span>
                        <button type="button" id="button-search" class="btn pink"><span>조회</span></button>
                    </div>
                </dd>
            </dl>
        </div>
        <div class="inner-contents">
            <div class="search-result">
                <h3 class="search-result-title-default">당첨자 검색 결과</h3>
                <p class="no-result-msg">당첨 내역이 없습니다. 다음 이벤트를 기대해주세요!</p>
            </div>
            <div class="table-cont">
                <h4 class="tb-tit">1등 당첨자 (2명)</h4>
                <div class="tb_row tb-row-bl">
                    <table>
                        <caption>1등 당첨자</caption>
                        <colgroup>
                            <col style="width: 18%" />
                            <col />
                            <col style="width: 18%" />
                            <col />
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col" class="winner-tt">고객명</th>
                                <th scope="col" class="phone-tt">전화번호</th>
                                <th scope="col" class="winner-tt">고객명</th>
                                <th scope="col" class="phone-tt">전화번호</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="winner">박*영</td>
                                <td class="phone">010****0079</td>
                                <td class="winner">김*리</td>
                                <td class="phone">010****7289</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="table-cont">
                <h4 class="tb-tit">2등 당첨자 (6명)</h4>
                <div class="tb_row tb-row-bl">
                    <table>
                        <caption>2등 당첨자</caption>
                        <colgroup>
                            <col style="width: 18%" />
                            <col />
                            <col style="width: 18%" />
                            <col />
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col" class="winner-tt">고객명</th>
                                <th scope="col" class="phone-tt">전화번호</th>
                                <th scope="col" class="winner-tt">고객명</th>
                                <th scope="col" class="phone-tt">전화번호</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="winner">박*영</td>
                                <td class="phone">010****0079</td>
                                <td class="winner">김*리</td>
                                <td class="phone">010****7289</td>
                            </tr>
                            <tr>
                                <td class="winner">최*란</td>
                                <td class="phone">010****3725</td>
                                <td class="winner">임*원</td>
                                <td class="phone">010****7568</td>
                            </tr>
                            <tr>
                                <td class="winner">조*비</td>
                                <td class="phone">010****8935</td>
                                <td class="winner">이*재</td>
                                <td class="phone">010****5703</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="table-cont">
                <h4 class="tb-tit">3등 당첨자 (20명)</h4>
                <div class="tb_row tb-row-bl">
                    <table>
                        <caption>3등 당첨자</caption>
                        <colgroup>
                            <col style="width: 18%" />
                            <col />
                            <col style="width: 18%" />
                            <col />
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col" class="winner-tt">고객명</th>
                                <th scope="col" class="phone-tt">전화번호</th>
                                <th scope="col" class="winner-tt">고객명</th>
                                <th scope="col" class="phone-tt">전화번호</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="winner">김*환</td>
                                <td class="phone">010****2964</td>
                                <td class="winner">임*용</td>
                                <td class="phone">010****9459</td>
                            </tr>
                            <tr>
                                <td class="winner">박*영</td>
                                <td class="phone">010****1361</td>
                                <td class="winner">이*서</td>
                                <td class="phone">010****4561</td>
                            </tr>
                            <tr>
                                <td class="winner">이*아</td>
                                <td class="phone">010****7117</td>
                                <td class="winner">최*호</td>
                                <td class="phone">010****9622</td>
                            </tr>
                            <tr>
                                <td class="winner">박*옥</td>
                                <td class="phone">010****0491</td>
                                <td class="winner">안*원</td>
                                <td class="phone">010****7579</td>
                            </tr>
                            <tr>
                                <td class="winner">공*경</td>
                                <td class="phone">010****0630</td>
                                <td class="winner">김*미</td>
                                <td class="phone">010****9007</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <button type="button" class="win-btn-close ui_modal_close" onclick="if($('#event-modal').length == 0) javascript:self.close();"><span class="blind">닫기</span></button>
</article>

</body>
</html>