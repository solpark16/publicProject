const $menuPage = $('.menuPage');

$menuPage.append(`<div class="divCircle">
<div class="menuBox">
    <div class="circle circle1">
        <img src="./img/menuCircle.svg">
    </div>
    <div class="circle circle2">
        <img src="./img/menuCircle.svg">
    </div>
    <div class="circle circle3">
        <img src="./img/menuCircle.svg">
    </div>
    <div class="circle circle4">
        <img src="./img/menuCircle.svg">
    </div>
    <div class="circle circle5">
        <img src="./img/menuCircle.svg">
    </div>
    <div class="circle circle6">
        <img src="./img/menuCircle.svg">
    </div>
    <div class="circle circle7">
        <img src="./img/menuCircle.svg">
    </div>
    <div class="circle circle8">
        <img src="./img/menuCircle.svg">
    </div>
    <div class="circle circle9">
        <img src="./img/menuCircle.svg">
    </div>
</div>
</div>
<div class="divMenu">
<ul>
    <li><a href="./index.html">BOOOAO</a></li>
    <li>
        <a href="./index.html#section5">OUR, OWN</a>
        <p class="idealFigure"><a href="./idealFigure.html">Ideal Figure</a></p>
        <p><a href="./logos.html">Logos, Design A Reason</a></p>
    </li>

    <li><a href="./projects.html">PROJECTS</a></li>
    <li><a href="./students.html">STUDENTS</a></li>
    <li><a href="./curriculum.html">CURRICULUM</a></li>
</ul>
</div>`)

const $menu = $('.menu');
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