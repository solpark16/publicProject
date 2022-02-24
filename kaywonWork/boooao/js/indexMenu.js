$('.sectionFive').click(function(){
    $('.menuPage').css({
        'display':'none'
    })
    $('.menu').css({
        'transform': 'rotate( 0deg )'
    })
    $('.blackIcon').css({'display':'block'});
    $('.whiteIcon').css({'display':'none'});
    indexY = 4;
    secIndex = 4;
    transY = indexY * -100;
    sectionTransformEl.style.transform = "translateY(" + transY + "vh)";
    sectionTransformEl.style.transition = "all 0.8s ease";
    sectionTransformEl.style.transitionDelay = "0.3s";
    console.log(indexY);
    console.log(secIndex);
    console.log("뜨냐");
});
// console.log('뜨냐');