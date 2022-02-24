var footerBtn = document.querySelector('#button1');
var footerBtndiv = document.querySelector('#buttondiv1');
var footerBtnimg = document.querySelector('#button1 > span > img');
var footerBtn2 = document.querySelector('#button2');
var footerBtndiv2 = document.querySelector('#buttondiv2');

var count=0;
var count1=0;
function onClickfooterBtn(e){
    e.preventDefault;
    count++;

    if(count % 2 == 0){
        footerBtndiv.classList.add('blind');
    } else{
        footerBtndiv.classList.remove('blind');
        footerBtndiv2.classList.add('blind');
    }
}
function onClickfooterBtn2(e){
    e.preventDefault;
    count1++;
    if(count1 % 2 == 0){
        footerBtndiv2.classList.add('blind');
    } else{
        footerBtndiv2.classList.remove('blind');
        footerBtndiv.classList.add('blind');
    }
}

footerBtn.addEventListener('click',onClickfooterBtn);
footerBtn2.addEventListener('click',onClickfooterBtn2);

// 메뉴
$(function(){
    $(".logo").on("mouseover", function(){
        $("#navBg").css("display","none");
    });
    $("#gnb1").on("mouseover", function(){
        $("#navBg").css("display","block");
    });
    $("#gnb2").on("mouseover", function(){
        $("#navBg").css("display","block");
    });
    $("#gnb3").on("mouseover", function(){
        $("#navBg").css("display","block");
    });
    $("#gnb4").on("mouseover", function(){
        $("#navBg").css("display","block");
    });
    $("#gnb5").on("mouseover", function(){
        $("#navBg").css("display","block");
    });
    $("#gnb6").on("mouseover", function(){
        $("#navBg").css("display","block");
    });
    $("#gnb7").on("mouseover", function(){
        $("#navBg").css("display","none");
    });
    $("#gnb8").on("mouseover", function(){
        $("#navBg").css("display","none");
    });
    $("#navBg").on("mouseout", function(){
        $("#navBg").css("display","none");
    });
});

$(function(){
    $("#gnb1").on("mouseover", function(){
        $(".subMenu1").css("display","block");
    });
    $("#gnb1").on("mouseout", function(){
        $(".subMenu1").css("display","none");
    });
    $(".subMenu1").on("mouseover", function(){
        $(".subMenu1").css("display","block");
    });
    $(".subMenu1").on("mouseout", function(){
        $(".subMenu1").css("display","none");
    });
});

$(function(){
    $("#gnb2").on("mouseover", function(){
        $(".subMenu2").css("display","block");
    });
    $("#gnb2").on("mouseout", function(){
        $(".subMenu2").css("display","none");
    });
    $(".subMenu2").on("mouseover", function(){
        $(".subMenu2").css("display","block");
    });
    $(".subMenu2").on("mouseout", function(){
        $(".subMenu2").css("display","none");
    });
});

$(function(){
    $("#gnb3").on("mouseover", function(){
        $(".subMenu3").css("display","block");
    });
    $("#gnb3").on("mouseout", function(){
        $(".subMenu3").css("display","none");
    });
    $(".subMenu3").on("mouseover", function(){
        $(".subMenu3").css("display","block");
    });
    $(".subMenu3").on("mouseout", function(){
        $(".subMenu3").css("display","none");
    });
});

$(function(){
    $("#gnb4").on("mouseover", function(){
        $(".subMenu4").css("display","block");
    });
    $("#gnb4").on("mouseout", function(){
        $(".subMenu4").css("display","none");
    });
    $(".subMenu4").on("mouseover", function(){
        $(".subMenu4").css("display","block");
    });
    $(".subMenu4").on("mouseout", function(){
        $(".subMenu4").css("display","none");
    });
});

$(function(){
    $("#gnb5").on("mouseover", function(){
        $(".subMenu5").css("display","block");
    });
    $("#gnb5").on("mouseout", function(){
        $(".subMenu5").css("display","none");
    });
    $(".subMenu5").on("mouseover", function(){
        $(".subMenu5").css("display","block");
    });
    $(".subMenu5").on("mouseout", function(){
        $(".subMenu5").css("display","none");
    });
});

$(function(){
    $("#gnb6").on("mouseover", function(){
        $(".subMenu6").css("display","block");
    });
    $("#gnb6").on("mouseout", function(){
        $(".subMenu6").css("display","none");
    });
    $(".subMenu6").on("mouseover", function(){
        $(".subMenu6").css("display","block");
    });
    $(".subMenu6").on("mouseout", function(){
        $(".subMenu6").css("display","none");
    });
});

$(function(){
    $("#sec4Menu1").on("mouseover", function(){

        // 섹션1
        $("#sec4Menu1More").css("display","block");
        $("#sec4Menu1Border").css("width","448px");
        $("#sec4Menu1Border").css("border","solid 1px #000");

        // 섹션2
        $("#sec4Menu2More").css("display","none");
        $("#sec4Menu2Border").css("width","330px");
        $("#sec4Menu2Border").css("border","solid 1px #00000026");

        // 섹션3
        $("#sec4Menu3More").css("display","none");
        $("#sec4Menu3Border").css("width","330px");
        $("#sec4Menu3Border").css("border","solid 1px #00000026");

        // 이미지
        $("#sec4Img1").css("display","block");
        $("#sec4Img2").css("display","none");
        $("#sec4Img3").css("display","none");  
    });
});

$(function(){
    $("#sec4Menu2").on("mouseover", function(){

        // 섹션1
        $("#sec4Menu1More").css("display","none");
        $("#sec4Menu1Border").css("width","330px");
        $("#sec4Menu1Border").css("border","solid 1px #00000026");

        // 섹션2
        $("#sec4Menu2More").css("display","block");
        $("#sec4Menu2Border").css("width","448px");
        $("#sec4Menu2Border").css("border","solid 1px #000");

        // 섹션3
        $("#sec4Menu3More").css("display","none");
        $("#sec4Menu3Border").css("width","330px");
        $("#sec4Menu3Border").css("border","solid 1px #00000026");

        // 이미지
        $("#sec4Img1").css("display","none");
        $("#sec4Img2").css("display","block");
        $("#sec4Img3").css("display","none");     
    });
});

$(function(){
    $("#sec4Menu3").on("mouseover", function(){

        // 섹션1
        $("#sec4Menu1More").css("display","none");
        $("#sec4Menu1Border").css("width","330px");
        $("#sec4Menu1Border").css("border","solid 1px #00000026");

        // 섹션2
        $("#sec4Menu2More").css("display","none");
        $("#sec4Menu2Border").css("width","330px");
        $("#sec4Menu2Border").css("border","solid 1px #00000026");

        // 섹션3
        $("#sec4Menu3More").css("display","block");
        $("#sec4Menu3Border").css("width","448px");
        $("#sec4Menu3Border").css("border","solid 1px #000");

        // 이미지
        $("#sec4Img1").css("display","none");
        $("#sec4Img2").css("display","none");
        $("#sec4Img3").css("display","block");         
    });
});