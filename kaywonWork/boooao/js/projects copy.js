console.log("projects Start");

const $firstList = $('.firstList');
const $projectPage = $('.projectPage');
const $deleteBlue = $('.deleteBlue');


const deleteEvent = () => {
    console.log("Click");
    $projectPage
        .css({
            'display': 'none'
        })
}
$deleteBlue.on('click', deleteEvent);



// 위는 실험이라능

















const $btn1_1 = $('.btn1-1');
const $btn1_2 = $('.btn1-2');
const $btn2_1 = $('.btn2-1');
const $btn2_2 = $('.btn2-2');

const $goProjectPage = $('.goProjectPage');
const $goMemberPage = $('.goMemberPage');

const $projectTextBox = $('.projectTextBox');
const $imagePart = $('.imagePart');

const $teamTextBox = $('.teamTextBox');
const $memberPart = $('.memberPart');



const $meberart = $('.meberart');

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
Array.prototype.order = function () {
    let length = this.length;
    while (length) {
      let index = Math.floor(Math * length--);
      let temp = this[length];
    //   this[length] = this[index];
    //   this[index] = temp;
    }
    return this;
  };

const $projectList = $('ul.projectsList')

function mainLoad() {
    console.log("gg");
    project.shuffle();
    // $projectList.text.empty();
    for (let i = 0; i < project.length; i++) {
    $projectList.append(`
        <li class="${project[i].nameFontB}">
            <div class="numCode">
                <p class="projectNum">${project[i].projectNum}</p>
                <p class="projectCode">[${project[i].projectCode}]</p>
            </div>
        
            <a href="#">
                ${project[i].name}
            </a>
        </li><br>`);
    }
  }
  mainLoad() // 모든 걸 시작하는 함수...


    //all List
    const $divAllList = $('.divAllList');
  const $divList = $('.divList');

  const $projectAllList = $('.projectsAllList');
  const $allList1 = $('.allList1');
  const $allList2 = $('.allList2');
  const $allList3 = $('.allList3');

  const $allListIcon = $('.allListIcon');
  const $allListIconImg = $('.allListIcon img');
  let iconNum = 0;

  $allListIcon.click(function(){
      console.log("iconClick")
    
      if (iconNum == 0) {
        $allListIconImg.css({
            'opacity': '100%'
        })
        $allList1.empty();
        $allList2.empty();
        $allList3.empty();
          console.log("iconNum=0")
          $divAllList.css({
            'display' : 'inline-block'
        })
          $divList.css({
            'display' : 'none'
        })
          for (let i = 0; i < 12; i++) {
            $allList1.append(`
                <li class="${allProject[i].nameFontB}">
                <p>${allProject[i].projectNum}</p>
                <a href="#">
                    ${allProject[i].name}
                </a>
                </li><br>`);
          }
          for (let i = 12; i < 24; i++) {
            $allList2.append(`
                <li class="${allProject[i].nameFontB}">
                <p>${allProject[i].projectNum}</p>
                <a href="#">
                    ${allProject[i].name}
                </a>
                </li><br>`);
          }
          for (let i = 24; i < 31; i++) {
            $allList3.append(`
                <li class="${allProject[i].nameFontB}">
                <p>${allProject[i].projectNum}</p>
                <a href="#">
                    ${allProject[i].name}
                </a>
                </li><br>`);
          }
          iconNum = 1;
      }
      else if (iconNum == 1) {
        $allListIconImg.css({
            'opacity': '18%'
        })
          console.log("iconNum=1")
          $divAllList.css({
              'display' : 'none'
          })
          $divList.css({
              'display' : 'inline-block'
          })
          iconNum = 0;
      }
      const $projectAllListLi = $('ul.projectsAllList li a');
      console.log($projectAllListLi);
      // 올 리스트

      for (let i = 0; i < $projectAllListLi.length; i++) {
          $projectAllListLi.eq(i).mouseenter(function(){
            // $projectThumb.empty();
            console.log(i);
            console.log("hover");
            $projectThumbImg.css({
                // 'display': 'none'
            })
            $('ul.projectsAllList li').eq(i).css({
                'opacity':'100%'
            })
            $projectCode.eq(i).css({
                'color':'white'
            })
            $projectThumb.append(`<img src="${allProject[i].thumb}"/>`);
        });
        $projectAllListLi.eq(i).mouseleave(function(){
            $projectThumb.empty();
            console.log(i);
            console.log("hover");
            $projectThumbImg.css({
                // 'display': 'none'
            })
            $('ul.projectsAllList li').eq(i).css({
                'opacity':'50%'
            })
            $projectCode.eq(i).css({
                'color':'#505050'
            })
            $projectThumb.append(`<img src="./img/project/basic.png"/>`);
        });

        // 상세 페이지 이동

        $projectAllListLi.eq(i).click(function(){
            // console.log(i);
            console.log("click");
            $projectTextBox.empty();
            $teamTextBox.empty();
            $imagePart.empty();
            $memberPart.empty();

            $projectPage.css({
                'display': 'block'
            })

            $projectTextBox.append(`<p class="projectText1 ${allProject[i].teamFontM}">Team. ${allProject[i].team}</p>
            <p class="projectText2 ${allProject[i].nameFontB}">${allProject[i].name}</p>
            <p class="projectText1 ${allProject[i].sloganFont}">${allProject[i].slogan}</p>
            <p class="projectText3">${allProject[i].intro}</p>
            <ul>
                <li class="projectLiFirst">분야</li>
                <li>${allProject[i].projectLi1}</li>
            </ul>
            <ul>
                <li class="projectLiFirst">대상</li>
                <li>${allProject[i].projectLi2}</li>
            </ul>
            <ul>
                <li class="projectLiFirst">매체</li>
                <li>${allProject[i].projectLi3}</li>
            </ul>`)

            $imagePart.append(`
            <a href="#">
                <div class="firstDiv">
                    <img src="${allProject[i].projectImage}" class="firstImage">
                </div>
                <div class="hoverDiv">
                    <img src="./img/project/hoverImage.svg" class="hoverImage">
                </div>
            </a>`)

            $teamTextBox.append(`<p class="teamText1">Member</p>
            <p class="teamText2 ${allProject[i].teamFontB}">${allProject[i].team}</p>
            <p class="teamText3">${allProject[i].teamIntro}</p>
            <ul>
                <li class="teamLiFirst">${allProject[i].detail1}</li>
                <li>${allProject[i].detail1Mem}</li>
            </ul>
            <ul>
                <li class="teamLiFirst">${allProject[i].detail2}</li>
                <li>${allProject[i].detail2Mem}</li>
            </ul>
            <ul>
                <li class="teamLiFirst">${allProject[i].detail3}</li>
                <li>${allProject[i].detail3Mem}</li>
            </ul>`)

            $memberPart.append(`<div class="memberFlex">
            <div class="meberart">
                <video class="projectVideo">
                    <source src="${allProject[i].teamVideo}" type="video/mp4">
                </video>
            </div>
            <div class="memberPic">
                <ul>
                    <li class="memberPhoto">
                        <a href="${allProject[i].site1}" target="_blank">
                            <img src="${allProject[i].memberPic1}">
                        </a>
                    </li>
                    <li>
                        <p>${allProject[i].memName1}</p>
                        <p>${allProject[i].memDetail1}</p>
                    </li>
                </ul>
                <ul>
                    <li class="memberPhoto">
                        <a href="${allProject[i].site2}" target="_blank" class="${allProject[i].no2}">
                            <img src="${allProject[i].memberPic2}">
                        </a>
                    </li>
                    <li>
                        <p>${allProject[i].memName2}</p>
                        <p>${allProject[i].memDetail2}</p>
                    </li>
                </ul>
                <ul>
                    <li class="memberPhoto">
                        <a href="${allProject[i].site3}" target="_blank" class="${allProject[i].no3}">
                            <img src="${allProject[i].memberPic3}">
                        </a>
                    </li>
                    <li>
                        <p>${allProject[i].memName3}</p>
                        <p>${allProject[i].memDetail3}</p>
                    </li>
                </ul>
                <ul>
                    <li class="memberPhoto">
                        <a href="${allProject[i].site4}" target="_blank" class="${allProject[i].no4}">
                            <img src="${allProject[i].memberPic4}">
                        </a>
                    </li>
                    <li>
                        <p>${allProject[i].memName4}</p>
                        <p>${allProject[i].memDetail4}</p>
                    </li>
                </ul>
                <ul>
                    <li class="memberPhoto">
                        <a href="${allProject[i].site5}" target="_blank" class="${allProject[i].no5}">
                            <img src="${allProject[i].memberPic5}">
                        </a>
                    </li>
                    <li>
                        <p>${allProject[i].memName5}</p>
                        <p>${allProject[i].memDetail5}</p>
                    </li>
                </ul>
                
            </div>

            
        </div>`)
        $goMemberPage.click(function(){
            const $proVideo = $('.projectVideo');
            console.log($proVideo);
            $proVideo[i].play();
            $goProjectPage.click(function(){
                $proVideo[i].pause();
            })
            $deleteBlue.click(function(){
                $proVideo[i].pause();
            })
        });
        });



      }

  })



  const $projectListLi = $('ul.projectsList li a');
//   const $projectAllListLi = $('ul.projectsAllList li a');

  console.log($projectListLi);
//   console.log($projectAllListLi);

  const $projectThumb = $('.divThumb');
  const $projectThumbImg = $('.divThumb img');
  console.log($projectThumb);
  console.log($projectList);
  console.log($projectListLi);
  const $numCode = $('.numCode');
  const $projectNum = $('.projectNum');
  const $projectCode = $('.projectCode');
// 썸네일조지기
function changeEvent() {
    for (let i = 0; i < $projectListLi.length; i++) {

        // 랜덤 리스트
        $projectListLi.eq(i).mouseenter(function(){
            // $projectThumb.empty();
            console.log(i);
            console.log("hover");
            $projectThumbImg.css({
                // 'display': 'none'
            })
            $projectNum.eq(i).css({
                'color':'white'
            })
            $projectCode.eq(i).css({
                'color':'white'
            })
            $projectThumb.append(`<img src="${project[i].thumb}"/>`);
        });
        $projectListLi.eq(i).mouseleave(function(){
            $projectThumb.empty();
            console.log(i);
            console.log("hover");
            $projectThumbImg.css({
                // 'display': 'none'
            })
            $projectNum.eq(i).css({
                'color':'#a0a0a0'
            })
            $projectCode.eq(i).css({
                'color':'#505050'
            })
            $projectThumb.append(`<img src="./img/project/basic.png"/>`);
        });
        
        
        




    }
}
changeEvent();

// const $projectPage = $('.projectPage');


function listClickEvent() {
    for (let i = 0; i < $projectListLi.length; i++) {
        $projectListLi.eq(i).click(function(){
            // console.log(i);
            console.log("click");
            $projectTextBox.empty();
            $teamTextBox.empty();
            $imagePart.empty();
            $memberPart.empty();

            $projectPage.css({
                'display': 'block'
            })

            $projectTextBox.append(`
            <div class="mobileProject">
                <img src="${project[i].projectImage}">
            </div>
            
            <p class="projectText1 ${project[i].teamFontM}">Team. ${project[i].team}</p>
            <p class="projectText2 ${project[i].nameFontB}">${project[i].name}</p>
            <p class="projectText1 ${project[i].sloganFont}">${project[i].slogan}</p>
            <p class="projectText3">${project[i].intro}</p>
            <ul>
                <li class="projectLiFirst">분야</li>
                <li>${project[i].projectLi1}</li>
            </ul>
            <ul>
                <li class="projectLiFirst">대상</li>
                <li>${project[i].projectLi2}</li>
            </ul>
            <ul>
                <li class="projectLiFirst">매체</li>
                <li>${project[i].projectLi3}</li>
            </ul>`)

            $imagePart.append(`
            <a href="#">
                <div class="firstDiv">
                    <img src="${project[i].projectImage}" class="firstImage">
                </div>
                <div class="hoverDiv">
                    <img src="./img/project/hoverImage.svg" class="hoverImage">
                </div>
            </a>`)

            $teamTextBox.append(`<p class="teamText1">Member</p>
            <p class="teamText2 ${project[i].teamFontB}">${project[i].team}</p>
            <p class="teamText3">${project[i].teamIntro}</p>
            <ul>
                <li class="teamLiFirst">${project[i].detail1}</li>
                <li>${project[i].detail1Mem}</li>
            </ul>
            <ul>
                <li class="teamLiFirst">${project[i].detail2}</li>
                <li>${project[i].detail2Mem}</li>
            </ul>
            <ul>
                <li class="teamLiFirst">${project[i].detail3}</li>
                <li>${project[i].detail3Mem}</li>
            </ul>`)

            $memberPart.append(`<div class="memberFlex">
            <div class="meberart">
                <video playsinline class="projectVideo">
                    <source src="${project[i].teamVideo}" type="video/mp4">
                </video>
            </div>
            <div class="memberPic">
                <ul>
                    <li class="memberPhoto">
                        <a href="${project[i].site1}" target="_blank">
                            <img src="${project[i].memberPic1}">
                        </a>
                    </li>
                    <li>
                        <p>${project[i].memName1}</p>
                        <p>${project[i].memDetail1}</p>
                    </li>
                </ul>
                <ul>
                    <li class="memberPhoto">
                        <a href="${project[i].site2}" target="_blank" class="${project[i].no2}">
                            <img src="${project[i].memberPic2}">
                        </a>
                    </li>
                    <li>
                        <p>${project[i].memName2}</p>
                        <p>${project[i].memDetail2}</p>
                    </li>
                </ul>
                <ul>
                    <li class="memberPhoto">
                        <a href="${project[i].site3}" target="_blank" class="${project[i].no3}">
                            <img src="${project[i].memberPic3}">
                        </a>
                    </li>
                    <li>
                        <p>${project[i].memName3}</p>
                        <p>${project[i].memDetail3}</p>
                    </li>
                </ul>
                <ul>
                    <li class="memberPhoto">
                        <a href="${project[i].site4}" target="_blank" class="${project[i].no4}">
                            <img src="${project[i].memberPic4}">
                        </a>
                    </li>
                    <li>
                        <p>${project[i].memName4}</p>
                        <p>${project[i].memDetail4}</p>
                    </li>
                </ul>
                <ul>
                    <li class="memberPhoto">
                        <a href="${project[i].site5}" target="_blank" class="${project[i].no5}">
                            <img src="${project[i].memberPic5}">
                        </a>
                    </li>
                    <li>
                        <p>${project[i].memName5}</p>
                        <p>${project[i].memDetail5}</p>
                    </li>
                </ul>
                
            </div>

            
        </div>`)

        $goMemberPage.click(function(){
            const $proVideo = $('.projectVideo');
            console.log($proVideo);
            $proVideo[i].play();
            $goProjectPage.click(function(){
                $proVideo[i].pause();
            })
            $deleteBlue.click(function(){
                $proVideo[i].pause();
            })
        });
        });
    }
}
listClickEvent();



function buttonClickEvent() {
    $goProjectPage.click(function(){
        console.log("click");
        $btn1_1.css({
            'display': 'none'
        })
        $btn1_2.css({
            'display': 'block'
        })
        $btn2_1.css({
            'display': 'block'
        })
        $btn2_2.css({
            'display': 'none'
        })

        // 프로젝트 페이지 활성화
        $projectTextBox.css({
            'display': 'block'
        })
        $imagePart.css({
            'display': 'inline-block'
        })
        // 팀 페이지 비활성화
        $teamTextBox.css({
            'display': 'none'
        })
        $memberPart.css({
            'display': 'none'
        })
    });
    $goMemberPage.click(function(){
        console.log("click");
        $btn1_1.css({
            'display': 'block'
        })
        $btn1_2.css({
            'display': 'none'
        })
        $btn2_1.css({
            'display': 'none'
        })
        $btn2_2.css({
            'display': 'block'
        })
        // 프로젝트 페이지 비활성화
        $projectTextBox.css({
            'display': 'none'
        })
        $imagePart.css({
            'display': 'none'
        })
        // 팀 페이지 활성화
        $teamTextBox.css({
            'display': 'block'
        })
        $memberPart.css({
            'display': 'inline-block'
        })
        // $("video").prop('muted', false);
        // $("video").play();
        
    });
    
}
buttonClickEvent();

// 프로젝트 페이지에서 이미지 호버해서 프로젝트 페이지 드가게


const $firstDiv = $('.firstDiv');
const $hoverDiv = $('.hoverDiv');

function visitEvent() {

    $imagePart.mouseover(function(){
        $(".hoverDiv").addClass('on');
    })
    $imagePart.mouseleave(function(){
        $(".hoverDiv").removeClass('on');
    })

}
visitEvent();

// $projectTextBox.css({'display':'none'})
// $hoverDiv.css({'display':'none'})

