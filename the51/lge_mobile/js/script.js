// history.scrollRestoration = "manual"

// var transitionX = 200
// var transitionX2 = 0
// function scrollTextMove(e) {
//   // 확인용 console
//   // console.log($(window).scrollTop());
//     if (e.wheelDelta < 0) {
//       // 마우스 아래 = 이동
//       console.log("마우스아래");
//       transitionX --;
//       transitionX2 --;
//       $('.sec1Top').css({
//         'height': transitionX + "px"
//       });
//       $('.sec1Img').css({
//           'margin-top':transitionX2 + "px"
//       })
//     } else if (e.wheelDelta > 0) {
//       // 미우스 위 = 원래대로
//       console.log("마우스위");
//       transitionX ++;

//       transitionX2 ++;
//       $('.sec1Top').css({
//         'height': transitionX + "px"
//       });
//       $('.sec1Img').css({
//         'margin-top':transitionX2 + "px"
//     })
//     }
// };

// window.addEventListener("mousewheel", scrollTextMove);

function mainScrollEvent() {

  var convertPx = {
    vw: function(px){
        px = parseFloat(px);
        var ww = $(window).width();
        
        return ww * px / 720;
    }
  }


  let documentHeight = $(document).scrollTop();
  // let documentHeight2 = $(document).scrollTop() + $('.fixedImg').height();
  let section1Top = jQuery('.sec1Img').offset().top;
  let section3Bottom = jQuery('.section3').offset().top + $('.section3').height();
  let section4Bottom = jQuery('.section4').offset().top + $('.section4').height() - $(window).height();
  // let section2Top = jQuery('.section2').offset().top;
  // let section3Top = jQuery('.section3').offset().top;
  // let imgBottom = $('.fixedImg').offset().top + $('.fixedImg').height();

  // sec2
  let sec2Text1Top = jQuery('.sec2Text1').offset().top;
  let sec2Text2Top = jQuery('.sec2Text2').offset().top;
  let sec2Text3Top = jQuery('.sec2Text3').offset().top;
  let sec2Text4Top = jQuery('.sec2Text4').offset().top;

  // sec3
  let sec3Li1Top = jQuery('.sec3Li1').offset().top;
  let sec3Li2Top = jQuery('.sec3Li2').offset().top;
  let sec3Li3Top = jQuery('.sec3Li3').offset().top;
  let sec3Li4Top = jQuery('.sec3Li4').offset().top;

  // sec4
  let section4Top = jQuery('.section4').offset().top;

  // sec5
  let section5Top = jQuery('.section5').offset().top;
  let section5Bottom = jQuery('.section5').offset().top + $('.section5').height() - $(window).height();

  let section6Top = jQuery('.section6').offset().top;

  let section7Bottom = jQuery('.section7').offset().top + $('.section7').height();

  var backTextMarginTop = convertPx.vw(870);

  

  console.log("documenHeight = " + documentHeight);
  // console.log("sec1Img = " + section1Top);
  // console.log("sec3Bottom = " + section3Bottom ); 
  // console.log("section5Bottom = " + section5Bottom ); 
  console.log("section4Bottom = " + section4Bottom ); 

  $('.backText').css({
            'margin-top': -backTextMarginTop + documentHeight + "px"
        })
  // 스크롤탑이 섹션2 안에 있고 섹션3보다 위일때
  if (400 <= documentHeight) {
      $('.sec1Img').addClass('fixed');
      // $('.section1').addClass('sticky');
    $('.sec1Top .text').css({
      'display': 'none'
    })
      if (-backTextMarginTop + documentHeight >= 0) {
        $('.backText').css({
          'margin-top': 0
      })
    }
  } 
  if (documentHeight >= 1400){
    $('.sec1Img').removeClass('fixed');
  }

  // section2 animation
  if (sec2Text1Top - documentHeight <= convertPx.vw(1010.7) ){
    $('.sec2Text').css({
      'opacity': '0.6'
    })
    $('.sec2Text1').css({
      'opacity': '1'
    })
  }
  if (sec2Text2Top - documentHeight <= convertPx.vw(968) ){
    $('.sec2Text').css({
      'opacity': '0.6'
    })
    $('.sec2Text2').css({
      'opacity': '1'
    })
  }
  if (sec2Text3Top - documentHeight <= convertPx.vw(906) ){
    $('.sec2Text').css({
      'opacity': '0.6'
    })
    $('.sec2Text3').css({
      'opacity': '1'
    })
  }
  if (sec2Text4Top - documentHeight <= convertPx.vw(860) ){
    $('.sec2Text').css({
      'opacity': '0.6'
    })
    $('.sec2Text4').css({
      'opacity': '1'
    })
  }

  // section3 animation
  if (sec3Li1Top - documentHeight <= convertPx.vw(500) ){
    $('.sec3Li').css({
      'opacity': '0.4'
    })
    $('.sec3Li1').css({
      'opacity': '1'
    })
    $('.sec3Li1 img').css({
      'transform': 'translateX(-50%)rotateY(0deg)'
    })
  }
  if (sec3Li2Top - documentHeight <= convertPx.vw(500) ){
    $('.sec3Li').css({
      'opacity': '0.4'
    })
    $('.sec3Li2').css({
      'opacity': '1'
    })
    $('.sec3Li2 img').css({
      'transform': 'translateX(-50%)rotateY(0deg)'
    })
  }
  if (sec3Li3Top - documentHeight <= convertPx.vw(500) ){
    $('.sec3Li').css({
      'opacity': '0.4'
    })
    $('.sec3Li3').css({
      'opacity': '1'
    })
    $('.sec3Li3 img').css({
      'transform': 'translateX(-50%)rotateY(0deg)'
    })
  }
  if (sec3Li4Top - documentHeight <= convertPx.vw(500) ){
    $('.sec3Li').css({
      'opacity': '0.4'
    })
    $('.sec3Li4').css({
      'opacity': '1'
    })
    $('.sec3Li4 img').css({
      'transform': 'translateX(-50%)rotateY(0deg)'
    })
  }

  // section4
  if (documentHeight < section3Bottom) {
    $('.section4 img').css({
      'filter': 'brightness(50%)',
      'border-radius' : '0px',
      'height': 'calc(100vh)',
      'width': 'calc(100vw)'
    })
    $('.section4 p').css({
      'filter': 'brightness(50%)'
    })
  }
  if (documentHeight >= section3Bottom && documentHeight < section3Bottom+100) {
    $('.section4 img').css({
      'filter': 'brightness(60%)',
      'border-radius' : '20px',
      'height': 'calc(100vh - 10px)',
      'width': 'calc(100vw - 10px)'
    })
    $('.section4 p').css({
      'filter': 'brightness(60%)'
    })
  }
  if (documentHeight >= section3Bottom+100 && documentHeight < section3Bottom+200 ) {
    $('.section4 img').css({
      'filter': 'brightness(70%)',
      'border-radius' : '40px',
      'height': 'calc(100vh - 20px)',
      'width': 'calc(100vw - 20px)'
    })
    $('.section4 p').css({
      'filter': 'brightness(70%)'
    })
  }
  if (documentHeight >= section3Bottom+200 && documentHeight < section3Bottom+300 ) {
    $('.section4 img').css({
      'filter': 'brightness(80%)',
      'border-radius' : '60px',
      'height': 'calc(100vh - 30px)',
      'width': 'calc(100vw - 30px)'
    })
    $('.section4 p').css({
      'filter': 'brightness(80%)'
    })
  }
  if (documentHeight >= section3Bottom+300 && documentHeight < section3Bottom+400 ) {
    $('.section4 img').css({
      'filter': 'brightness(90%)',
      'border-radius' : '80px',
      'height': 'calc(100vh - 40px)',
      'width': 'calc(100vw - 40px)'
    })
    $('.section4 p').css({
      'filter': 'brightness(90%)'
    })
  }
  if (documentHeight >= section3Bottom+400) {
    $('.section4 img').css({
      'filter': 'brightness(100%)',
      'border-radius' : '100px'
    })
    $('.section4 p').css({
      'filter': 'brightness(100%)'
    })
  }
  if (documentHeight >= section4Bottom) {
    // $('.sec5Box').removeClass('fixed');
    $('.sec4Box').addClass('absolute');
  } else if (documentHeight < section4Bottom && documentHeight >= section4Top ) {
    // $('.sec5Box').addClass('fixed');
    $('.sec4Box').removeClass('absolute');
  } 

  // section5 ------------------------------------------------------------------------
  if (documentHeight >= section5Top && documentHeight < section5Top+100 ) {
    $('.sec5Box').addClass('fixed');
    $('.sec5TitleBox').css({
      'top':'calc(100vw*616/720)'
    })
    $('.sec5TitleBox .title').css({
      'font-size':'calc(100vw*140/720)'
    })
  } else if (documentHeight < section5Top) {
    $('.sec5Box').removeClass('fixed');
  }
  if (documentHeight >= section5Top+100 && documentHeight < section5Top+200 ) {
    $('.sec5Box img').css({
      'height':'calc(100vw*1520/720)',
      'margin-top':'0'
    })
    $('.sec5TitleBox').css({
      'top':'calc(100vw*313/720)'
    })
    $('.sec5TitleBox .content').css({
      'opacity':'1'
    })
  }
  if (documentHeight >= section5Top+200 && documentHeight < section5Top+300 ) {
    $('.sec5Box img').css({
      'height':'calc(100vw*1520/720)',
      'margin-top':'0'
    })
    $('.sec5TitleBox').css({
      'top':'calc(100vw*141/720)'
    })
    $('.sec5TitleBox .title').css({
      'font-size':'calc(100vw*140/720)',
      'margin-bottom':'margin-bottom: calc(100vw*56.3/720)'
    })
    $('.sec5TitleBox .content').css({
      'opacity':'0.8'
    })
  }
  if (documentHeight >= section5Top+300 && documentHeight < section5Top+400 ) {
    $('.sec5Box img').css({
      'height':'calc(100vw*1210/720)',
      'margin-top':'calc(100vw*95/720)'
    })
    $('.sec5TitleBox').css({
      'top':'calc(100vw*142.8/720)'
    })
    $('.sec5TitleBox .title').css({
      'font-size':'calc(100vw*120/720)',
      'margin-bottom':'margin-bottom: calc(100vw*51.3/720)'
    })
    $('.sec5TitleBox .content').css({
      'opacity':'0.5'
    })
  }
  if (documentHeight >= section5Top+400 && documentHeight < section5Top+500 ) {
    $('.sec5Box img').css({
      'height':'calc(100vw*908/720)',
      'margin-top':'calc(100vw*161/720)'
    })
    $('.sec5TitleBox').css({
      'top':'calc(100vw*153.8/720)'
    })
    $('.sec5TitleBox .title').css({
      'font-size':'calc(100vw*80/720)',
      'margin-bottom':'margin-bottom: calc(100vw*60.3/720)'
    })
    $('.sec5TitleBox .content').css({
      'opacity':'0.2'
    })
  }
  if (documentHeight >= section5Top+500 && documentHeight < section5Top+600 ) {
    $('.sec5Box img').css({
      'height':'calc(100vw*616/720)',
      'margin-top':'calc(100vw*196.8/720)'
    })
    $('.sec5TitleBox').css({
      'top':'calc(100vw*152/720)'
    })
    $('.sec5TitleBox .title').css({
      'font-size':'calc(100vw*60/720)'
    })
    $('.sec5TitleBox .content').css({
      'opacity':'0'
    })
  }
  if (documentHeight >= section5Top+600 && documentHeight < section5Top+700 ) {
    $('.sec5Box img').css({
      'height':'calc(100vw*382/720)',
      'margin-top':'calc(100vw*217.8/720)'
    })
    $('.sec5TitleBox').css({
      'top':'calc(100vw*156/720)'
    })
    $('.sec5TitleBox .title').css({
      'font-size':'calc(100vw*40/720)'
    })
  }
  if (documentHeight >= section5Top+700) {
    $('.sec5Box img').css({
      'height':'calc(100vw*345/720)',
      'margin-top':'calc(100vw*261.8/720)'
    })
    $('.sec5TitleBox').css({
      'top':'calc(100vw*161/720)'
    })
    $('.sec5TitleBox .title').css({
      'font-size':'calc(100vw*30/720)'
    })
  }

  if (documentHeight >= section5Bottom) {
    $('.sec5Box').removeClass('fixed');
    $('.sec5Box').addClass('absolute');
  } else if (documentHeight < section5Bottom && documentHeight >= section5Top ) {
    $('.sec5Box').addClass('fixed');
    $('.sec5Box').removeClass('absolute');
  }

  // section6------------------------------------------------------------------------
  if (documentHeight >= section6Top) {
    $('.sec6TextBox').css({
      'opacity':'1',
      'top':'calc(100vw*664/720)'
    })
  }

  // section8 -------------------------------------------------------------------------
  if (documentHeight < section7Bottom) {
    $('.section8 img').css({
      'filter': 'brightness(50%)',
      'border-radius' : '0px',
      'height': 'calc(100vh)',
      'width': 'calc(100vw)'
    })
    $('.section8 p').css({
      'filter': 'brightness(50%)'
    })
  }
  if (documentHeight >= section7Bottom && documentHeight < section7Bottom+100) {
    $('.section8 img').css({
      'filter': 'brightness(60%)',
      'border-radius' : '20px',
      'height': 'calc(100vh - 10px)',
      'width': 'calc(100vw - 10px)'
    })
    $('.section8 p').css({
      'filter': 'brightness(60%)'
    })
  }
  if (documentHeight >= section7Bottom+100 && documentHeight < section7Bottom+200 ) {
    $('.section8 img').css({
      'filter': 'brightness(70%)',
      'border-radius' : '40px',
      'height': 'calc(100vh - 20px)',
      'width': 'calc(100vw - 20px)'
    })
    $('.section8 p').css({
      'filter': 'brightness(70%)'
    })
  }
  if (documentHeight >= section7Bottom+200 && documentHeight < section7Bottom+300 ) {
    $('.section8 img').css({
      'filter': 'brightness(80%)',
      'border-radius' : '60px',
      'height': 'calc(100vh - 30px)',
      'width': 'calc(100vw - 30px)'
    })
    $('.section8 p').css({
      'filter': 'brightness(80%)'
    })
  }
  if (documentHeight >= section7Bottom+300 && documentHeight < section7Bottom+400 ) {
    $('.section8 img').css({
      'filter': 'brightness(90%)',
      'border-radius' : '80px',
      'height': 'calc(100vh - 40px)',
      'width': 'calc(100vw - 40px)'
    })
    $('.section8 p').css({
      'filter': 'brightness(90%)'
    })
  }
  if (documentHeight >= section7Bottom+400) {
    $('.section8 img').css({
      'filter': 'brightness(100%)',
      'border-radius' : '100px'
    })
    $('.section8 p').css({
      'filter': 'brightness(100%)'
    })
  }












}

// 윈도우가(창이) 스크롤될 때마다 실행되는 기능
$(window).scroll(function () {
  // mainScrollEvent 함수를 호출하여 실행시킴
  mainScrollEvent();
})
