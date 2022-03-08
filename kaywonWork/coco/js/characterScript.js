$('.characterLi').on('click', function () {
    $('.characterLi').removeClass('selected');
    $(this).addClass('selected');
});

$(function(){
    for(let i=0;i<$(".characterLi").length;i++){
        $(".characterLi").eq(i).on("click", function(){
            $('#characterPic article').css("display","none");
            $('#characterPic article').eq(i).css("display","block");
        });
    }
});

