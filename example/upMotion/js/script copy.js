var controller = new ScrollMagic.Controller();

// text animation ------------------------------------------------------------------------------------------------------------------------------------------------------

var textLine =['.text1','.text1','.text1','.text1','.text2','.text2','.text2','.text2','.text3','.text3','.text3','.text4','.text4','.text4','.text4'];
// var textLine =['.text1'];
var texts =['text1_1', 'text1_2', 'text1_3', 'text1_4', 'text2_1', 'text2_2', 'text2_3', 'text2_4', 'text3_1', 'text3_2', 'text3_3', 'text4_1', 'text4_2', 'text4_3', 'text4_4'];
var ps = ['.p1', '.p2', '.p3', '.p4', '.p1', '.p2', '.p3', '.p4', '.p1', '.p2', '.p3', '.p1', '.p2', '.p3', '.p4'];
var delayTime = 1;

for(var i=0; i<$('.text p').length; i++){
  texts[i] = new TimelineMax();
  texts[i].to($('.section2 .textBox ' + (textLine[i] +' '+ ps[i])), 1, {opacity: 1, delay: delayTime, animationName: 'upAni'})
  console.log(textLine[i] + ps[i])
var scene = new ScrollMagic.Scene({
  triggerElement: '.section2',
  triggerHook: 0.8
})
  .reverse(false)
  .setTween(texts[i])
  .addTo(controller);  
  delayTime = delayTime + 0.025;
}


// var text1_1 = new TimelineMax();
// text1_1.to($('.section2 .textBox .text1 .p1'), 1, {opacity: 1, delay: 1, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text1_1)
//   .addTo(controller);

// var text1_2 = new TimelineMax();
// text1_2.to($('.section2 .textBox .text1 .p2'), 1, {opacity: 1, delay: 1.025, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text1_2)
//   .addTo(controller);

// var text1_3 = new TimelineMax();
// text1_3.to($('.section2 .textBox .text1 .p3'), 1, {opacity: 1, delay: 1.05, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text1_3)
//   .addTo(controller);

// var text1_4 = new TimelineMax();
// text1_4.to($('.section2 .textBox .text1 .p4'), 1, {opacity: 1, delay: 1.075, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text1_4)
//   .addTo(controller);

// var text2_1 = new TimelineMax();
// text2_1.to($('.section2 .textBox .text2 .p1'), 1, {opacity: 1, delay: 1.1, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text2_1)
//   .addTo(controller);

// var text2_2 = new TimelineMax();
// text2_2.to($('.section2 .textBox .text2 .p2'), 1, {opacity: 1, delay: 1.125, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text2_2)
//   .addTo(controller);

// var text2_3 = new TimelineMax();
// text2_3.to($('.section2 .textBox .text2 .p3'), 1, {opacity: 1, delay: 1.15, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text2_3)
//   .addTo(controller);

// var text2_4 = new TimelineMax();
// text2_4.to($('.section2 .textBox .text2 .p4'), 1, {opacity: 1, delay: 1.175, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text2_4)
//   .addTo(controller);

// var text2_1 = new TimelineMax();
// text2_1.to($('.section2 .textBox .text2 .p1'), 1, {opacity: 1, delay: 1.1, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text2_1)
//   .addTo(controller);

// var text2_2 = new TimelineMax();
// text2_2.to($('.section2 .textBox .text2 .p2'), 1, {opacity: 1, delay: 1.125, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text2_2)
//   .addTo(controller);

// var text2_3 = new TimelineMax();
// text2_3.to($('.section2 .textBox .text2 .p3'), 1, {opacity: 1, delay: 1.15, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text2_3)
//   .addTo(controller);

// var text2_4 = new TimelineMax();
// text2_4.to($('.section2 .textBox .text2 .p4'), 1, {opacity: 1, delay: 1.175, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text2_4)
//   .addTo(controller);

// var text3_1 = new TimelineMax();
// text3_1.to($('.section2 .textBox .text3 .p1'), 1, {opacity: 1, delay: 1.2, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text3_1)
//   .addTo(controller);

// var text3_2 = new TimelineMax();
// text3_2.to($('.section2 .textBox .text3 .p2'), 1, {opacity: 1, delay: 1.225, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text3_2)
//   .addTo(controller);

// var text3_3 = new TimelineMax();
// text3_3.to($('.section2 .textBox .text3 .p3'), 1, {opacity: 1, delay: 1.25, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text3_3)
//   .addTo(controller);

// var text4_1 = new TimelineMax();
// text4_1.to($('.section2 .textBox .text4 .p1'), 1, {opacity: 1, delay: 1.275, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text4_1)
//   .addTo(controller);

// var text4_2 = new TimelineMax();
// text4_2.to($('.section2 .textBox .text4 .p2'), 1, {opacity: 1, delay: 1.3, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text4_2)
//   .addTo(controller);

// var text4_3 = new TimelineMax();
// text4_3.to($('.section2 .textBox .text4 .p3'), 1, {opacity: 1, delay: 1.325, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text4_3)
//   .addTo(controller);

// var text4_4 = new TimelineMax();
// text4_4.to($('.section2 .textBox .text4 .p3'), 1, {opacity: 1, delay: 1.35, animationName: 'upAni'})
// var scene = new ScrollMagic.Scene({
//   triggerElement: '.section2',
//   triggerHook: 0.8
// })
//   .reverse(false)
//   .setTween(text4_4)
//   .addTo(controller);

// image animation ------------------------------------------------------------------------------------------------------------------------------------------------------


var image1 = new TimelineMax();
image1.to($('.section3 .imageBox .image1 img'), 1, {opacity: 0, delay: 2, animationName: 'imgUpAni'})
var scene = new ScrollMagic.Scene({
  triggerElement: '.section3',
  triggerHook: 0.8
})
  .reverse(false)
  .setTween(image1)
  .addTo(controller);

var image2 = new TimelineMax();
image2.to($('.section3 .imageBox .image2 img'), 1, {opacity: 0, delay: 2.05, animationName: 'imgUpAni'})
var scene = new ScrollMagic.Scene({
  triggerElement: '.section3',
  triggerHook: 0.8
})
  .reverse(false)
  .setTween(image2)
  .addTo(controller);

var image3 = new TimelineMax();
image3.to($('.section3 .imageBox .image3 img'), 1, {opacity: 0, delay: 2.1, animationName: 'imgUpAni'})
var scene = new ScrollMagic.Scene({
  triggerElement: '.section3',
  triggerHook: 0.8
})
  .reverse(false)
  .setTween(image3)
  .addTo(controller);

var image4 = new TimelineMax();
image4.to($('.section3 .imageBox .image4 img'), 1, {opacity: 0, delay: 2.15, animationName: 'imgUpAni'})
var scene = new ScrollMagic.Scene({
  triggerElement: '.section3',
  triggerHook: 0.8
})
  .reverse(false)
  .setTween(image4)
  .addTo(controller);

var image5 = new TimelineMax();
image5.to($('.section3 .imageBox .image5 img'), 1, {opacity: 0, delay: 2.2, animationName: 'imgUpAni'})
var scene = new ScrollMagic.Scene({
  triggerElement: '.section3',
  triggerHook: 0.8
})
  .reverse(false)
  .setTween(image5)
  .addTo(controller);

var image6 = new TimelineMax();
image6.to($('.section3 .imageBox .image6 img'), 1, {opacity: 0, delay: 2.25, animationName: 'imgUpAni'})
var scene = new ScrollMagic.Scene({
  triggerElement: '.section3',
  triggerHook: 0.8
})
  .reverse(false)
  .setTween(image6)
  .addTo(controller);

var image7 = new TimelineMax();
image7.to($('.section3 .imageBox .image7 img'), 1, {opacity: 0, delay: 2.3, animationName: 'imgUpAni'})
var scene = new ScrollMagic.Scene({
  triggerElement: '.section3',
  triggerHook: 0.8
})
  .reverse(false)
  .setTween(image7)
  .addTo(controller);

var image8 = new TimelineMax();
image8.to($('.section3 .imageBox .image8 img'), 1, {opacity: 0, delay: 2.35, animationName: 'imgUpAni'})
var scene = new ScrollMagic.Scene({
  triggerElement: '.section3',
  triggerHook: 0.8
})
  .reverse(false)
  .setTween(image8)
  .addTo(controller);
