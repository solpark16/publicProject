const $objectList = $('.objectList');
const $typeTitle = $('.typeTitle');

var br = "<br>"

// 메인 페이지 퍼센테이지 애니메이션
$(function() {
    var cnt0 = 0;
    var cnt1 = 0;
    var cnt2 = 0;
    var cnt3 = 0;
    var cnt4 = 0;

    counterFn();

    function counterFn() {
        id0 = setInterval(count0Fn, 60);
        id1 = setInterval(count1Fn, 60);
        id2 = setInterval(count2Fn, 60);
        id3 = setInterval(count3Fn, 60);
        id4 = setInterval(count4Fn, 60);

        function count0Fn() {
            cnt0++
            if (cnt0 > 32) {
                clearInterval(id0);
            } else {
                $(".rate1").text(cnt0 + "%");
            }
        }
        function count1Fn() {
            cnt1++
            if (cnt1 > 23) {
                clearInterval(id1);
            } else {
                $(".rate2").text(cnt1 + "%");
            }
        }
        function count2Fn() {
            cnt2++
            if (cnt2 > 13) {
                clearInterval(id2);
            } else {
                $(".rate3").text(cnt2 + "%");
            }
        }
        function count3Fn() {
            cnt3++
            if (cnt3 > 18) {
                clearInterval(id3);
            } else {
                $(".rate4").text(cnt3 + "%");
            }
        }
        function count4Fn() {
            cnt4++
            if (cnt4 > 14) {
                clearInterval(id4);
            } else {
                $(".rate5").text(cnt4 + "%");
            }
        }
        
    }
});

const $typeListLi = $('.typeList li');
const $objectLi = $('.objectLi');
const $objectText = $('.objectText');

const $mainTypeListLi = $('.mainTypeList li');

const $sectionTypes = $('.sectionTypes');
const $sectionObjects = $('.sectionObjects');

function changeEvent() {
    const $objectLi = $('.objectLi');
    const $objectText = $('.objectText');
    for (let i = 0; i < student.length; i++) {
        if ((i+1)%3 === 0) {
            $objectLi.eq(i).after(br);
        }
        $objectLi.eq(i).mouseover(function(){
            $objectText.eq(i).css({
                'display': 'inline-block'
            })
            $objectLi.eq(i).css({
                'width' : 'calc(100vw * 828 / 1800)'
            })
        });
        $objectLi.eq(i).mouseleave(function(){
            $objectLi.eq(i).css({
                'width' : 'calc(100vw * 414 / 1800)'
            })
            $objectText.eq(i).css({
                'display': 'none'
            })
        });
    }
}

// 셔플
Array.prototype.shuffle = function () {
    let length = this.length;
    while (length) {
      let index = Math.floor(Math.random() * length--);
      let temp = this[length];
      this[length] = this[index];
      this[index] = temp;
    }
    return this;
  };

function type1Show() {
    student.shuffle();
    $typeTitle.empty();
    $typeTitle.append(`<strong>Multiplied</strong>원동력`);
    for (let i = 0; i < student.length; i++) {
        if (student[i].objectType === "Multiplied" ) {
            $objectList.append(`
            <li class="objectLi">
                <img src="${student[i].object}">
                <div class="objectText">
                    <p class="text1"><strong>${student[i].name}</strong> ${student[i].id}</p>
                    <p class="text2">${student[i].team} | ${student[i].objectName}</p>
                    <div class="objectLine"></div>
                    <p class="objectReason ${student[i].reasonLength}">
                        ${student[i].objectReason}
                    </p>
                </div>
                <p class="code">[${student[i].id}]</p>
            </li>`)
        }
    }
}
function type2Show() {
    student.shuffle();
    $typeTitle.empty();
    $typeTitle.append(`<strong>Equals</strong>닮고 싶은 존재`);
    for (let i = 0; i < student.length; i++) {
        if (student[i].objectType === "Equals" ) {
            $objectList.append(`
            <li class="objectLi">
                <img src="${student[i].object}">
                <div class="objectText">
                    <p class="text1"><strong>${student[i].name}</strong> ${student[i].id}</p>
                    <p class="text2">${student[i].team} | ${student[i].objectName}</p>
                    <div class="objectLine"></div>
                    <p class="objectReason ${student[i].reasonLength}">
                        ${student[i].objectReason}
                    </p>
                </div>
                <p class="code">[${student[i].id}]</p>
            </li>`)
        }
    }
}
function type3Show() {
    student.shuffle();
    $typeTitle.empty();
    $typeTitle.append(`<strong>Sum</strong>나의 구성원`);
    for (let i = 0; i < student.length; i++) {
        if (student[i].objectType === "Sum" ) {
            $objectList.append(`
            <li class="objectLi">
                <img src="${student[i].object}">
                <div class="objectText">
                    <p class="text1"><strong>${student[i].name}</strong> ${student[i].id}</p>
                    <p class="text2">${student[i].team} | ${student[i].objectName}</p>
                    <div class="objectLine"></div>
                    <p class="objectReason ${student[i].reasonLength}">
                        ${student[i].objectReason}
                    </p>
                </div>
                <p class="code">[${student[i].id}]</p>
            </li>`)
        }
    }
}

function type4Show() {
    student.shuffle();
    $typeTitle.empty();
    $typeTitle.append(`<strong>Divided</strong>또 다른 나`);
    for (let i = 0; i < student.length; i++) {
        if (student[i].objectType === "Divided" ) {
            $objectList.append(`
            <li class="objectLi">
                <img src="${student[i].object}">
                <div class="objectText">
                    <p class="text1"><strong>${student[i].name}</strong> ${student[i].id}</p>
                    <p class="text2">${student[i].team} | ${student[i].objectName}</p>
                    <div class="objectLine"></div>
                    <p class="objectReason ${student[i].reasonLength}">
                        ${student[i].objectReason}
                    </p>
                </div>
                <p class="code">[${student[i].id}]</p>
            </li>`)
        }
    }
}
function type5Show() {
    student.shuffle();
    $typeTitle.empty();
    $typeTitle.append(`<strong>Infinity</strong>무한한 가능성`);
    for (let i = 0; i < student.length; i++) {
        if (student[i].objectType === "Infinity" ) {
            $objectList.append(`
            <li class="objectLi">
                <img src="${student[i].object}">
                <div class="objectText">
                    <p class="text1"><strong>${student[i].name}</strong> ${student[i].id}</p>
                    <p class="text2">${student[i].team} | ${student[i].objectName}</p>
                    <div class="objectLine"></div>
                    <p class="objectReason ${student[i].reasonLength}">
                        ${student[i].objectReason}
                    </p>
                </div>
                <p class="code">[${student[i].id}]</p>
            </li>`)
        }
    }
}

function addEvent() {
    // 뒤로 가기
    $('.backBtn').click(function() {
        $sectionTypes.css({
            'display' : 'block'
        })
        $sectionObjects.css({
            'display' : 'none'
        })
    })

    // 메인에서 들어가기
    $mainTypeListLi.eq(0).click(function() {
        $sectionTypes.css({
            'display' : 'none'
        })
        $sectionObjects.css({
            'display' : 'block'
        })
        $objectList.empty();
        type1Show();
        changeEvent();
    })
    $mainTypeListLi.eq(1).click(function() {
        $sectionTypes.css({
            'display' : 'none'
        })
        $sectionObjects.css({
            'display' : 'block'
        })
        $objectList.empty();
        type2Show();
        changeEvent();
    })
    $mainTypeListLi.eq(2).click(function() {
        $sectionTypes.css({
            'display' : 'none'
        })
        $sectionObjects.css({
            'display' : 'block'
        })
        $objectList.empty();
        type3Show();
        changeEvent();
    })
    $mainTypeListLi.eq(3).click(function() {
        $sectionTypes.css({
            'display' : 'none'
        })
        $sectionObjects.css({
            'display' : 'block'
        })
        $objectList.empty();
        type4Show();
        changeEvent();
    })
    $mainTypeListLi.eq(4).click(function() {
        $sectionTypes.css({
            'display' : 'none'
        })
        $sectionObjects.css({
            'display' : 'block'
        })
        $objectList.empty();
        type5Show();
        changeEvent();
    })


    $typeListLi.eq(0).click(function() {
        $objectList.empty();
        type1Show();
        changeEvent();
    })
    $typeListLi.eq(1).click(function() {
        $objectList.empty();
        type2Show();
        changeEvent();
    })
    $typeListLi.eq(2).click(function() {
        $objectList.empty();
        type3Show();
        changeEvent();
    })
    $typeListLi.eq(3).click(function() {
        $objectList.empty();
        type4Show();
        changeEvent();
    })
    $typeListLi.eq(4).click(function() {
        $objectList.empty();
        type5Show();
        changeEvent();
    })
}
addEvent();

// top Button
const $topBtn = $('.topBtn')
$topBtn.click(function(){
  window.scrollTo({ top: 0, behavior: "smooth"});
})