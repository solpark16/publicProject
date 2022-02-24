// 캐릭터 스크립트.

// 캐릭터 리스트에서 클릭이 되면 해당 리스트에 selected 클래스를 추가시키고,
// 나머지 리스트에는 selected를 삭제하도록 합니다. 
$('.characterLi').on('click', function () {
    $('.characterLi').removeClass('selected');
    $(this).addClass('selected');
});

// Jquery를 사용하여, 캐릭터의 이름을 클릭하면 해당 캐릭터의 카드가 뜨게 되고,
// 그 외 캐릭터의 카드가 떠 있을시 전부 사라지게 하는 코드를 제작해보았습니다.

$(function(){
    $("#list1").on("click", function(){ // list1(Miguel Rivera)을 클릭했을 시,
        $("#card1").css("display","block"); // card1이 display가 none이기에 보이지 않았지만, block으로 바꿔줌으로써 보이게 됩니다.
        $("#card2, #card3, #card4, #card5, #card6, #card7, #card8").css("display","none");
        // 그리고 나머지 card들은 display none을 해줌으로써, 만약 화면에 보이고 있는 상황이었다고 해도 사라지고 card1만 보이도록 해주었습니다.
    });

    // 다른 카드들 역시, 특정 리스트를 클릭하면 해당 카드만 display block이 되고 다른 card들은 display none이 되도록 해주었습니다.

    $("#list2").on("click", function(){
        $("#card2").css("display","block");
        $("#card1, #card3, #card4, #card5, #card6, #card7, #card8").css("display","none");
    });
    // Héctor를 클릭했을 시 해당 카드가 보이게 하고 나머지 카드들은 보이지 않게 했습니다.
    $("#list3").on("click", function(){
        $("#card3").css("display","block");
        $("#card1, #card2, #card4, #card5, #card6, #card7, #card8").css("display","none");
    });
    // Imelda를 클릭했을 시 해당 카드가 보이게 하고 나머지 카드들은 보이지 않게 했습니다.
    $("#list4").on("click", function(){
        $("#card4").css("display","block");
        $("#card1, #card2, #card3, #card5, #card6, #card7, #card8").css("display","none");
    });
    // Ernesto de la Cruz를 클릭했을 시 해당 카드가 보이게 하고 나머지 카드들은 보이지 않게 했습니다.
    $("#list5").on("click", function(){
        $("#card5").css("display","block");
        $("#card1, #card2, #card3, #card4, #card6, #card7, #card8").css("display","none");
    });
    // Coco를 클릭했을 시 해당 카드가 보이게 하고 나머지 카드들은 보이지 않게 했습니다.
    $("#list6").on("click", function(){
        $("#card6").css("display","block");
        $("#card1, #card2, #card3, #card4, #card5, #card7, #card8").css("display","none");
    });
    // Elena Rivera를 클릭했을 시 해당 카드가 보이게 하고 나머지 카드들은 보이지 않게 했습니다.
    $("#list7").on("click", function(){
        $("#card7").css("display","block");
        $("#card1, #card2, #card3, #card4, #card5, #card6, #card8").css("display","none");
    });
    // Dante를 클릭했을 시 해당 카드가 보이게 하고 나머지 카드들은 보이지 않게 했습니다.
    $("#list8").on("click", function(){
        $("#card8").css("display","block");
        $("#card1, #card2, #card3, #card4, #card5, #card6, #card7").css("display","none");
    });
    // Pepita를 클릭했을 시 해당 카드가 보이게 하고 나머지 카드들은 보이지 않게 했습니다.
});
