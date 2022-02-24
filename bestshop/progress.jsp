<%@ page contentType="text/html; charset=utf-8" %>
<!doctype html>
<html data-countrycode="kr" dir="ltr" lang="ko">
    <head>
        <meta charset="utf-8"/>
        <title>베스트샵 퍼블리싱 산출물 목록</title>
        <!-- <meta property="fb:app_id" content="562434687259858"> -->
        <meta name="description" content="LG전자에서 진행되는 이벤트, 기획전, 카드 혜택 그리고 LG전자 멤버십까지 다양한 혜택 정보를 확인하실 수 있습니다.">
        <meta property="og:locale" content="ko_KR">
        <meta property="og:site_name" content="LG전자 BEST SHOP">
        <meta property="og:type" content="website">
        <meta property="og:title" content="LG전자 BEST SHOP">
        <meta property="og:description" content="">
        <!-- <meta property="og:url" content="https://www.lge.co.kr/benefits">
        <meta property="og:image" content="https://www.lge.co.krhttps://www.lge.co.kr/lg5-common/images/common/share/share-default.jpg"> -->
        <meta name="twitter:card" content="summary">
        <script type="text/javascript" src="./js/libs/jquery-3.6.0.min.js"></script>
        <link rel="stylesheet" href="./css/reset.min.css"/>
        <link rel="stylesheet" href="./css/common.css"/>
        <link rel="stylesheet" href="./css/base.css"/>
        <link rel="stylesheet" href="./css/mobile.css"/>
        <style>
            * {
                font-size :12px;
            }
            @-webkit-keyframes statusAni {
                0% {
                    opacity: 1
                }
                35% {
                    opacity: .6
                }
                to {
                    opacity: 1
                }
            }
            @keyframes statusAni {
                0% {
                    opacity: 1
                }
                35% {
                    opacity: .6
                }
                to {
                    opacity: 1
                }
            }
            h1 {
                margin: 30px auto 26px auto;
                text-align: center;
                width: 220px;
                color: #6b6b6b;
                font-size: 20px;
                letter-spacing: -1px;
            }
            h1 .logo {
                display: inline-block;
                width: 100px;
                height: 29px;
                background-image: url(https://www.lge.co.kr/lg5-common/images/header/lg_logo.svg);
                background-size: 100% 100%;
                text-indent: -20000px;
                overflow: hidden;
                vertical-align: middle;
                margin-top: -4px;
            }
            .search-area {
                position: absolute;
                top: 30px;
                right: 10px;
                width: 200px;
            }
            .search-area .input-search {
                font-size: 12px;
                border: 1px solid #ddd;
                border-radius: 5px;
                padding: 2px 6px;
                width: 100%;
            }
            .pages {
                position: absolute;
                right: 10px;
                top: 60px;
                font-size: 12px;
                color: #999;
            }
            table {
                margin: 0 auto 50px auto;
                width: calc(100% - 20px);
                border-collapse: collapse;
                box-sizing: border-box;
                border-top: 2px solid #eee;
                border-bottom: 2px solid #eee;
                table-layout:fixed;
            }
            tr:hover td {
                border-top: 2px solid #222;
                border-bottom: 2px solid #222;
                padding: 3px 10px;
            }
            thead {
                
            }
            tbody {

            }
            th, td {
                box-sizing: border-box;
            }
            th {
                padding: 7px 10px;
                border-bottom: 1px solid #eee;
                border-right: 1px solid #f2f2f2;
            }
            th:last-child {
                border-right: none;
            }
            td {
                border-bottom: 1px solid #eee;
                padding: 4px 10px;
                border-right: 1px solid #f2f2f2;
            }
            td:last-child {
                border-right: none;
            }
            .td-status {

            }
            .td-status span:before {
                content: ' ';
                display: inline-block;
                width: 6px;
                height: 6px;
                border-radius: 50%;
                margin-right: 3px;
                vertical-align: middle;
            }
            .td-status span.cancel:before {
                background-color: #e80e15;
            }
            .td-status span.finish:before {
                background-color: #029cf5;
            }
            .td-status span.tobe:before {
                background-color: #dea618;
            }
            .td-status span.reworking:before {
                background-color: #18de6b;
                -webkit-animation-duration: 1.5s;
                animation-duration: 1.5s;
                -webkit-animation-timing-function: cubic-bezier(.645,.045,.355,1);
                animation-timing-function: cubic-bezier(.645,.045,.355,1);
                -webkit-animation-iteration-count: infinite;
                animation-iteration-count: infinite;
                -webkit-animation-name: statusAni;
                animation-name: statusAni;
            }
            .td-status span.working:before {
                background-color: #37cea8;
                -webkit-animation-duration: 1.5s;
                animation-duration: 1.5s;
                -webkit-animation-timing-function: cubic-bezier(.645,.045,.355,1);
                animation-timing-function: cubic-bezier(.645,.045,.355,1);
                -webkit-animation-iteration-count: infinite;
                animation-iteration-count: infinite;
                -webkit-animation-name: statusAni;
                animation-name: statusAni;
            }
            .td-status span.undefined:before {
                background-color: #f0000f;
            }
            .link {
                vertical-align: middle;
                color: #DA0F47;
            }
            .link:after {
                content: "";
                width: 10px;
                height: 10px;
                display: inline-block;
                background: url(./images/icons/btn-outlink-16.svg) center center no-repeat;
                background-size: cover;
                vertical-align: middle;
                margin-left: 2px;
            }
        </style>
    </head>
    <body>
        <h1><span class="logo">LG전자</span> BEST SHOP</h1>
        <div class="progress">
            <div class="search-area">
                <input type="search" class="input-search" placeholder="키워드 검색"/>
            </div>
            <p class="pages">
                목표 산출물 총 <strong class="bon"></strong>본,
                완료된 페이지 <strong class="wan"></strong>본,
                공정진척률 <strong class="jin"></strong>%
            </p>
            <table>
                <colgroup>
                    <col width="200px">
                    <col width="200px">
                    <col width="200px">
                    <col width="200px">
                    <col width="100px">
                    <col width="120px">
                    <col width="120px">
                    <col width="80px">
                    <col>
                    <col width="150px">
                </colgroup>
                <thead>
                    <th>1 Dep</th>
                    <th>2 Dep</th>
                    <th>3 Dep</th>
                    <th>4 Dep</th>
                    <th>작업자</th>
                    <th>시작일정</th>
                    <th>완료일정</th>
                    <th>진행사항</th>
                    <th>파일명</th>
                    <th>비고</th>
                </thead>
                <tbody class="tbody-worklist"></tbody>
            </table>
        </div>
        <script>
            ;(function($, win, doc, undefined) {
                var worklist = "progress.json";
                $.getJSON( worklist, {
                    format: "json/text"
                }).done(function(data) {
                    console.log(data.list);
                    getList(data);
                });
                searchkey();
                function searchkey() {
                    $(".input-search").keyup(function() {
                        var keyword = $(".input-search").val();
                        if (!!keyword) {
                            var worklist = "progress.json";
                            $(".tbody-worklist").empty();
                            $.getJSON( worklist, {
                                format: "json/text"
                            }).done(function(data) {
                                console.log(data.list);
                                var list = '';
                                getList(data);
                            });
                        } else if (keyword = "") {
                            $(".tbody-worklist").empty();
                            getList(data);
                        }
                    });
                }
                function getList(data) {
                    var list = '';
                    var wan = 0;
                    for (var i = 0; i < data.list.length; i++) {
                        list += '<tr>';
                        list += '<td>' + data.list[i].dep1 + '</td>';
                        list += '<td>' + data.list[i].dep2 + '</td>';
                        list += '<td>' + data.list[i].dep3 + '</td>';
                        list += '<td>' + data.list[i].dep4 + '</td>';
                        list += '<td class="tac">' + data.list[i].worker + '</td>';
                        list += '<td class="tac">' + data.list[i].startdate + '</td>';
                        list += '<td class="tac">' + data.list[i].finishdate + '</td>';
                        if (data.list[i].status == '진행중') {
                            list += '<td class="td-status"><span class="working">' + data.list[i].status + '</span></td>';
                        } else if (data.list[i].status == '진행예정') {
                            list += '<td class="td-status"><span class="tobe">' + data.list[i].status + '</span></td>';
                        } else if (data.list[i].status == '미정') {
                            list += '<td class="td-status"><span class="undefined">' + data.list[i].status + '</span></td>';
                        } else if (data.list[i].status == '완료') {
                            wan =  wan + 1;
                            list += '<td class="td-status"><span class="finish">' + data.list[i].status + '</span></td>';
                        } else if (data.list[i].status == '재작업중') {
                            list += '<td class="td-status"><span class="reworking">' + data.list[i].status + '</span></td>';
                        } else if (data.list[i].status == '취소') {
                            list += '<td class="td-status"><span class="cancel">' + data.list[i].status + '</span></td>';
                        }
                        list += '<td>';
                        if (data.list[i].filename != "") {
                            list += '<a href=' + data.list[i].filename + ' target="_blank" class="link">' + data.list[i].filename +'</a>';
                        }
                        list += '</td>';
                        list += '<td>' + data.list[i].memo + '</td>';
                        list += '</tr>';
                    }
                    $(".tbody-worklist").append(list);
                    $(".pages strong.bon").text(data.list.length);
                    $(".pages strong.wan").text(wan);
                    $(".pages strong.jin").text((wan / data.list.length * 100).toFixed(2));
                    return list;
                }
            })(jQuery, window, document);
        </script>
    </body>
</html>