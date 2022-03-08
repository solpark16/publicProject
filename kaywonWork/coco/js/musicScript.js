// 뮤직

$(function(){
	
		var display_image_number = 5; // 화면에 표시될 이미지를 5개로 지정해줍니다.
		
		var circle_method = 2;
		
		var anispeed = 200;
		
		var auto_scroll = 1;
		
		
	
	// ========= 

	var image_count = $('.slide-image').length; //slide-image 클래스의 갯수를 가져온 변수입니다.
	var image_width = $('.slide-image').width();//slide-image 클래스의 너비를 가져온 변수입니다.

	var stage_width = image_width * image_count; //stage_width는 slide-image 클래스의 갯수와 너비를 곱해준 변수입니다.

	var display_width = display_image_number * image_width; //display_width는 화면에 표시될 이미지의 갯수와 slide-image 클래스의 너비를 곱해준 변수입니다.
	

	$('.slide-holder').css("width", display_width + "px"); // slide-holder의 너비는 display_width로 계산해준 값만큼 지정해줍니다.
	

	$('.slide-stage').css("width", stage_width + "px"); // slide-stage의 너비는 stage_width로 계산해준 값만큼 지정해줍니다.
	

	//-------------------------------
	
	function left_slide_circle(){ // left_slide_scroll 내의 함수로써 슬라이드 이미지의 마지막 child에 클래스를 추가시켜줌으로써 이동시키는 함수입니다.
		$('.slide-image:last-child').addClass('swapthis');
		$('.swapthis').insertBefore('.slide-image:first');
		$('.slide-stage').css("left",-image_width + "px"); 
		$('.slide-stage').stop().animate({left:0},anispeed);
		$('.swapthis').removeClass('swapthis');
	}
	function right_slide_circle(){ // right_slide_scroll 내의 함수로써 슬라이드 이미지의 첫번째 child에 클래스를 추가시켜줌으로써 이동시키는 함수입니다.
		$('.slide-image:first').addClass('swapthis');
		$('.swapthis').insertAfter('.slide-image:last-child');
		$('.slide-stage').css("left",-(stage_width - image_width - display_width) + "px");
		$('.slide-stage').stop().animate({left:display_width - stage_width},anispeed);
		$('.swapthis').removeClass('swapthis');
	}
	function left_slide_scroll(){ // 왼쪽 화살표를 클릭했을 시, 슬라이드가 오른쪽 방향으로 이동함으로써 왼쪽에 있는 컨텐츠를 볼 수 있는 함수입니다.
		var stage_left = $('.slide-stage').position().left;
		
		if(stage_left < 0 && !$('.slide-stage').is(':animated')){
			$('.slide-stage').stop().animate({left:"+=" + image_width},anispeed);
		}
		else
		{	
			switch(circle_method){ 
				case 1:
					$('.slide-stage').stop().animate({left:display_width - stage_width},anispeed);
					break;
				case 2:
					left_slide_circle();
					break;
			}
			
		}
	}
	function right_slide_scroll(){ // 오른쪽 화살표를 클릭했을 시, 슬라이드가 왼쪽 방향으로 이동함으로써 오른쪽에 있는 컨텐츠를 볼 수 있는 함수입니다.
		var stage_left = Math.abs($('.slide-stage').position().left);
		var right_remain = stage_width - (display_width + stage_left);
		
		if(right_remain > 0 && !$('.slide-stage').is(':animated')){
			$('.slide-stage').stop().animate({left:"-=" + image_width},anispeed);
		}
		else
		{
			switch(circle_method){ 
				case 1:
					$('.slide-stage').stop().animate({left:0},anispeed);
					break;
				case 2:
					right_slide_circle();
					break;
			}
		}
	}
	
	$('.slide-control-prev').click(function(){left_slide_scroll();}); 
	//  왼쪽 화살표를 클릭했을 시 left_slide_scroll이 실행됩니다.
	$('.slide-control-next').click(function(){right_slide_scroll();});
	//  오른쪽 화살표를 클릭했을 시 right_slide_scroll이 실행됩니다.
	
	$(".slide-container,.slide-control-prev,.slide-control-next").hover(function() {
		clearInterval(play);
	});
	

	// for(let i=0;i<$(".slide-image").length;i++){
    //     $(".slide-image").eq(i).on("click", function(){
	// 		$(".slideImg").css("width","300px");
	// 		$(".slideImg").css("filter","brightness(50%)");
	// 		// 나머지 글 초기화
	// 		$(".slideTitle").css("font-size","20px");
	// 		$(".slideP").css("font-size","8px");
	// 		$(".imgP").css("color","rgb(129, 129, 129)");
	// 		$(".imgP").css("bottom","80px");

	// 		// 클릭된 이미지는 크기와 밝기를 조정해주고, 글 역시도 크기와 컬러, 위치를 조정해줍니다.
	// 		// 클릭된 이미지 활성화
	// 		$(".slideImg").eq(i).css("width","500px");
	// 		$(".slideImg").eq(i).css("filter","brightness(100%)");
	// 		// 클릭된 글 활성화
	// 		$(".slideTitle").eq(i).css("font-size","30px");
	// 		$(".slideTitle").eq(i).css("height","40px");
	// 		$(".slideP").eq(i).css("font-size","11px");
	// 		$(".imgP").eq(i).css("color","white");
	// 		$(".imgP").eq(i).css("bottom","0");
    //     });
    // }


// 이미지 클릭 시 해당 이미지 활성화 및 다른 이미지 원상복귀 스크립트

	$("#slide1").on("click", function(){ // slide1을 클릭했을 시

		$(".slideImg").css("width","300px");
			$(".slideImg").css("filter","brightness(50%)");
			// 나머지 글 초기화
			$(".slideTitle").css("font-size","20px");
			$(".slideP").css("font-size","8px");
			$(".imgP").css("color","rgb(129, 129, 129)");
			$(".imgP").css("bottom","80px");

		// 클릭된 이미지는 크기와 밝기를 조정해주고, 글 역시도 크기와 컬러, 위치를 조정해줍니다.
		// 클릭된 이미지 활성화
        $("#slideImg1").css("width","500px");
		$("#slideImg1").css("filter","brightness(100%)");
		// 클릭된 글 활성화
		$("#slideTitle1").css("font-size","30px");
		$("#slideTitle1").css("height","40px");
		$("#slideP1").css("font-size","11px");
		$("#imgP1").css("color","white");
		$("#imgP1").css("bottom","0");
    });

	// 다른 slide들 역시도 같은 방식으로, 나머지 slide들은 초기화시키고 클릭된 slide만 활성화가 되게 했습니다.

	$("#slide2").on("click", function(){

		$(".slideImg").css("width","300px");
			$(".slideImg").css("filter","brightness(50%)");
			// 나머지 글 초기화
			$(".slideTitle").css("font-size","20px");
			$(".slideP").css("font-size","8px");
			$(".imgP").css("color","rgb(129, 129, 129)");
			$(".imgP").css("bottom","80px");

		// 클릭된 이미지 활성화
        $("#slideImg2").css("width","500px");
		$("#slideImg2").css("filter","brightness(100%)");
		// 클릭된 글 활성화
		$("#slideTitle2").css("font-size","23px");
		$("#slideTitle2").css("height","40px");
		$("#slideP2").css("font-size","11px");
		$("#imgP2").css("color","white");
		$("#imgP2").css("bottom","0");
    });

	$("#slide3").on("click", function(){

		$(".slideImg").css("width","300px");
			$(".slideImg").css("filter","brightness(50%)");
			// 나머지 글 초기화
			$(".slideTitle").css("font-size","20px");
			$(".slideP").css("font-size","8px");
			$(".imgP").css("color","rgb(129, 129, 129)");
			$(".imgP").css("bottom","80px");

		// 클릭된 이미지 활성화
        $("#slideImg3").css("width","500px");
		$("#slideImg3").css("filter","brightness(100%)");
		// 클릭된 글 활성화
		$("#slideTitle3").css("font-size","22px");
		$("#slideTitle3").css("height","40px");
		$("#slideP3").css("font-size","11px");
		$("#imgP3").css("color","white");
		$("#imgP3").css("bottom","0");
    });

	$("#slide4").on("click", function(){

		$(".slideImg").css("width","300px");
			$(".slideImg").css("filter","brightness(50%)");
			// 나머지 글 초기화
			$(".slideTitle").css("font-size","20px");
			$(".slideP").css("font-size","8px");
			$(".imgP").css("color","rgb(129, 129, 129)");
			$(".imgP").css("bottom","80px");

		// 클릭된 이미지 활성화
        $("#slideImg4").css("width","500px");
		$("#slideImg4").css("filter","brightness(100%)");
		// 클릭된 글 활성화
		$("#slideTitle4").css("font-size","22px");
		$("#slideTitle4").css("height","40px");
		$("#slideP4").css("font-size","11px");
		$("#imgP4").css("color","white");
		$("#imgP4").css("bottom","0");
    });

	$("#slide5").on("click", function(){

		$(".slideImg").css("width","300px");
			$(".slideImg").css("filter","brightness(50%)");
			// 나머지 글 초기화
			$(".slideTitle").css("font-size","20px");
			$(".slideP").css("font-size","8px");
			$(".imgP").css("color","rgb(129, 129, 129)");
			$(".imgP").css("bottom","80px");

		// 클릭된 이미지 활성화
        $("#slideImg5").css("width","500px");
		$("#slideImg5").css("filter","brightness(100%)");
		// 클릭된 글 활성화
		$("#slideTitle5").css("font-size","22px");
		$("#slideTitle5").css("height","40px");
		$("#slideP5").css("font-size","11px");
		$("#imgP5").css("color","white");
		$("#imgP5").css("bottom","0");
    });
})


// 오디오 재생 스크립트
// 다섯개의 음악을 재생시켜줘야하기 때문에, 다섯개의 스크립트를 만들어줬습니다.
function play() { // play라는 함수는 해당 이미지를 클릭하면 실행됩니다.
	var audio = document.getElementById('audio1'); // audio1에는 이미 html에서 음악을 넣어주었습니다.
	if (audio.paused) { // 이미지가 클릭 된 상태라면
		audio.play(); // 플레이가 됩니다.
	} else { // 다시 한 번 눌렀을 경우
		audio.pause(); //오디오를 멈춥니다. 
		audio.currentTime = 0 // 재생지점을 처음으로 지정해줍니다.
	}
}

// 나머지 스크립트에도 똑같이 적용시켜주었습니다.

function play2() {
	var audio = document.getElementById('audio2');
	if (audio.paused) {
		audio.play();
	} else {
		audio.pause();
		audio.currentTime = 0
	}
}

function play3() {
	var audio = document.getElementById('audio3');
	if (audio.paused) {
		audio.play();
	} else {
		audio.pause();
		audio.currentTime = 0
	}
}

function play4() {
	var audio = document.getElementById('audio4');
	if (audio.paused) {
		audio.play();
	} else {
		audio.pause();
		audio.currentTime = 0
	}
}

function play5() {
	var audio = document.getElementById('audio5');
	if (audio.paused) {
		audio.play();
	} else {
		audio.pause();
		audio.currentTime = 0
	}
}