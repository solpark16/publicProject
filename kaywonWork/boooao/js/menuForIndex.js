console.log("menu!")

const $menu = $('.menu');
const $menuPage = $('.menuPage');
const $menuList = $('.menuPage li');

let menuSwitch = 0;

$menu.click(function(){
    if (menuSwitch == 0) {
        $menuPage.css({
            'display':'block'
        })
        $menu.css({
            'transform': 'rotate( 45deg )'
        })
        menuSwitch = 1;
        $('.blackIcon').css({'display':'none'});
        $('.whiteIcon').css({'display':'block'});
        // $('body').css({'overflow':'hidden'});
        // $('.sectionEls').css({
        //     'display':'none'
        // })
    }
    else if (menuSwitch == 1) {
        $menuPage.css({
            'display':'none'
        })
        $menu.css({
            'transform': 'rotate( 0deg )'
        })
        menuSwitch = 0;
        $('.blackIcon').css({'display':'block'});
        $('.whiteIcon').css({'display':'none'});
        // $('body').css({'overflow':'auto'});
        // $('.sectionEls').css({
        //     'display':'inline'
        // })
    }
    
})

$menuList.eq(0).mouseenter(function(){
    $('.circle1').css({'top':'0', 'left':'0'})
    $('.circle2').css({'top':'0', 'left':'calc(100vw * 300 / 1920)'})
    $('.circle3').css({'top':'0', 'left':'calc(100vw * 600 / 1920)'})
    $('.circle4').css({'top':'calc(100vw * 300 / 1920)', 'left':'0'})
    $('.circle5').css({'top':'calc(100vw * 300 / 1920)', 'left':'calc(100vw * 300 / 1920)'})
    $('.circle6').css({'top':'calc(100vw * 300 / 1920)', 'left':'calc(100vw * 600 / 1920)'})
    $('.circle7').css({'top':'calc(100vw * 600 / 1920)', 'left':'0'})
    $('.circle8').css({'top':'calc(100vw * 600 / 1920)', 'left':'calc(100vw * 300 / 1920)'})
    $('.circle9').css({'top':'calc(100vw * 600 / 1920)', 'left':'calc(100vw * 600 / 1920)'})
})
$menuList.eq(0).mouseleave(function(){
    $('.circle').css({
        'top':'calc(100vw * 300 / 1920)',
        'left':'calc(100vw * 300 / 1920)'
    })
})

// our own
$menuList.eq(1).mouseenter(function(){
    $('.circle1').css({'top':'0', 'left':'0'})
    $('.circle2').css({'top':'0', 'left':'calc(100vw * 300 / 1920)'})
    $('.circle3').css({'top':'calc(100vw * 300 / 1920)', 'left':'calc(100vw * 600 / 1920)'})
    $('.circle4').css({'top':'calc(100vw * 600 / 1920)', 'left':'calc(100vw * 300 / 1920)'})

})
$menuList.eq(1).mouseleave(function(){
    $('.circle').css({
        'top':'calc(100vw * 300 / 1920)',
        'left':'calc(100vw * 300 / 1920)'
    })
})

// projects
$menuList.eq(2).mouseenter(function(){
    $('.circle1').css({'top':'0', 'left':'calc(100vw * 600 / 1920)'})
    $('.circle2').css({'top':'calc(100vw * 300 / 1920)', 'left':'calc(100vw * 600 / 1920)'})
    $('.circle3').css({'top':'calc(100vw * 600 / 1920)', 'left':'calc(100vw * 600 / 1920)'})

})
$menuList.eq(2).mouseleave(function(){
    $('.circle').css({
        'top':'calc(100vw * 300 / 1920)',
        'left':'calc(100vw * 300 / 1920)'
    })
})

// students
$menuList.eq(3).mouseenter(function(){
    $('.circle1').css({'top':'0', 'left':'calc(100vw * 300 / 1920)'})
    $('.circle2').css({'top':'0', 'left':'calc(100vw * 600 / 1920)'})
    $('.circle3').css({'top':'calc(100vw * 600 / 1920)', 'left':'0'})
    $('.circle4').css({'top':'calc(100vw * 600 / 1920)', 'left':'calc(100vw * 300 / 1920)'})

})
$menuList.eq(3).mouseleave(function(){
    $('.circle').css({
        'top':'calc(100vw * 300 / 1920)',
        'left':'calc(100vw * 300 / 1920)'
    })
})

// students
$menuList.eq(4).mouseenter(function(){
    $('.circle1').css({'top':'0', 'left':'calc(100vw * 300 / 1920)'})
    $('.circle2').css({'top':'calc(100vw * 300 / 1920)', 'left':'0'})
    $('.circle3').css({'top':'calc(100vw * 300 / 1920)', 'left':'calc(100vw * 600 / 1920)'})
    $('.circle4').css({'top':'calc(100vw * 600 / 1920)', 'left':'calc(100vw * 300 / 1920)'})

})
$menuList.eq(4).mouseleave(function(){
    $('.circle').css({
        'top':'calc(100vw * 300 / 1920)',
        'left':'calc(100vw * 300 / 1920)'
    })
})