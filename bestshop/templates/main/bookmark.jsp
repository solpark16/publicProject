<%@ page contentType="text/html; charset=utf-8" %>

<div class="bookmark-menu">
    <div class="bookmark-menu-detail">
        <h3>BEST SHOP <br>자주찾는 메뉴</h3>
        <div class="bookmark-menu-list">
            <ul class="swiper-wrapper">
                <li class="swiper-slide">
                    <a href="javascript:void(0);">
                        <img src="./images/icons/main_icon_shop.svg" alt="매장찾기 아이콘">
                        <span>매장찾기</span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="javascript:void(0);">
                        <img src="./images/icons/main_icon_book.svg" alt="상담예약 아이콘">
                        <span>상담예약</span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="javascript:void(0);">
                        <img src="./images/icons/main_icon_benefit.svg" alt="이달의 혜택 아이콘">
                        <span>이달의 혜택</span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="javascript:void(0);">
                        <img src="./images/icons/main_icon_move.svg" alt="입주 이벤트 아이콘">
                        <span>입주 이벤트</span>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="javascript:void(0);">
                        <img src="./images/icons/main_icon_wedding.svg" alt="웨딩 이벤트 아이콘">
                        <span>웨딩 이벤트</span>
                    </a>
                </li>
            </ul>
        </div><!-- //.bookmark-menu-list -->
    </div><!-- //.bookmark-menu-detail -->
</div>
<script>
    $(function(){
        var bookmarkSlide = new Swiper(".bookmark-menu-list", {
            slidesPerView: 'auto'
        });
    });
</script>