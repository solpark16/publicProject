<%@ page contentType="text/html; charset=utf-8" %>

<div class="store-near content-group">
    <div class="content-group-tit">
        <h3>현재 고객님의 위치에서 가까운 매장</h3>
    </div><!-- //.content-group-tit -->
    <div class="content-group-detail">
        <div class="near-slide">
            <div class="swiper-wrapper">
                <div class="swiper-slide near-info">
                    <p class="tit">
                        <strong>강남본점</strong>
                        <span>300m</span>
                    </p>
                    <ul>
                        <li>신규매장</li>
                        <li>아이폰판매점</li>
                        <li>LX지인인테리어</li>
                        <li>화상상담 매장</li>
                        <li>야간무인매장</li>
                    </ul>
                    <a href="javascript:void(0);">상세보기</a>
                </div>
                <div class="swiper-slide near-info">
                    <p class="tit">
                        <strong>갤러리아 명품관 WEST점</strong>
                        <span>1.1km</span>
                    </p>
                    <ul>
                        <li>신규매장</li>
                        <li>아이폰판매점</li>
                        <li>LX지인인테리어</li>
                        <li>화상상담 매장</li>
                        <li>야간무인매장</li>
                    </ul>
                    <a href="javascript:void(0);">상세보기</a>
                </div>
                <div class="swiper-slide near-info">
                    <p class="tit">
                        <strong>논현역점</strong>
                        <span>1.5km</span>
                    </p>
                    <ul>
                        <li>신규매장</li>
                        <li>아이폰판매점</li>
                        <li>LX지인인테리어</li>
                    </ul>
                    <a href="javascript:void(0);">상세보기</a>
                </div>
            </div>
        </div>
    </div><!-- //.content-group-detail -->
</div><!-- //.content-group -->
<script>
    $(function(){
        var eventList = new Swiper(".near-slide", {
            slidesPerView: 'auto'
        });
    });
</script>