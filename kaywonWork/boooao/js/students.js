console.log("students Load")

const studentList = document.querySelector("ul.studentsList"); // 나대로 바꿈
console.log(studentList)
const nameList = document.querySelector("li.name-list");
const imgList = document.querySelector("li.img-list");
const topBtn = document.querySelector("button.top-btn");
const topBtnImg = document.querySelector("button.top-btn > img");
const searchBtnImg = document.querySelector("button.button > img");
const studentsBody = document.querySelector("body.students-body");
const searchInput = document.querySelector("div.search > input");
const stuHamburger = document.querySelectorAll("div.hamburger > div");
const nameListImg = document.querySelector("li.name-list > img");
const imgListImg = document.querySelector("li.img-list > img");
const stuHeader = document.querySelector("header.students-header");

const hamberger = document.querySelectorAll("a.hamburger > span");
const aText = document.querySelectorAll("ul.students-list > li > a ");

let sideNavLis = document.querySelectorAll(".detailWrap > ul > li");
let li = document.createElement("li");
let p = document.createElement("p");
let img = document.createElement("img");

// 랜덤으로 나오게 하기
Array.prototype.shuffle = function () {
    let length = this.length;
    while (length) {
      let index = Math.floor(Math.random() * length--);
      let temp = this[length];
      this[length] = this[index];
      this[index] = temp;
    }
    console.log('suffle -------------------------------------------- ' ,this);
    return this;
  };

function mainLoad() {
    student.shuffle();
    studentList.innerHTML = "";
    for (let i = 0; i < student.length; i++) {
    studentList.innerHTML += `
    <li>
      <a href="${student[i].site}" target="_blank">
        <span class="photoChange">
          <video muted autoplay width="421" class="spotLight">
          </video><img src="${student[i].photo}"/>
          </span>
          <p class="name">
            <strong>${student[i].name}</strong>
          ${student[i].id}</p>
        <p class = "projectDetail">${student[i].team} | ${student[i].detail}</p>
      </a>
    </li>`;
    }
  }
  /*temp
  ${student[i].spotLight}

  studentList.innerHTML += `
    <li>
      <a href="${student[i].pofol}">
        <span class="photoChange">
          <video muted autoplay width="421" class="spotLight">
            <source src="${student[i].spotLight}" type="video/mp4">
          </video><img src="${student[i].photo}"/>
          </span>
          <p class="name">
            <strong>${student[i].name}</strong>
          ${student[i].id}</p>
        <p class = "projectDetail">${student[i].team} | ${student[i].detail}</p>
      </a>
    </li>`;
  */

  mainLoad() // 모든 걸 시작하는 함수...

//   hover event

let studentNameEls = document.querySelectorAll("ul.studentsList > li ");
studentNameEls = document.querySelectorAll("ul.studentsList > li");
const studentNameSpan = document.querySelectorAll("ul.studentsList > li > a > span");
const studentNameVideo = document.querySelectorAll("ul.studentsList > li > a > span > video");
const studentNameImg = document.querySelectorAll("ul.studentsList > li > a > span > img");
const studentNameA = document.querySelectorAll("ul.studentsList > li > a");
studentNameEls = Array.prototype.slice.call(studentNameEls);
let LivePhoto = document.createElement("img");

const blackBack = document.querySelector(".blackBack");
// blackBack = document.querySelectorAll(".blackBack");
console.log(blackBack);

/* hover gif */

const projectDetail = document.querySelectorAll(".projectDetail");

function onSettingsStudent(){
  for (let i = 0; i < studentNameEls.length; i++) {
    studentNameEls[i].addEventListener("mouseenter", (e) => {
      let target = e.currentTarget;
      let index = studentNameEls.indexOf(target);
      let spotLightSrc = student[index].spotLight;
      studentNameVideo[index].src = spotLightSrc;
      // studentNameImg[i].setAttribute("src", student[i].spotLight); 
      studentNameVideo[i].className = 'spotLight on';
      // studentNameImg[i].style.display = 'none';
      blackBack.className = 'blackBack on';
      studentNameImg[i].style.opacity = '0%';
      studentNameEls[i].style.zIndex = '300';
    });
  
    
    studentNameEls[i].addEventListener("mouseleave", (e) => {
      // studentNameImg[i].setAttribute("src", student[i].photo);
      studentNameVideo[i].className = 'spotLight';
      // studentNameImg[i].style.display = 'block';
      blackBack.className = 'blackBack';
      studentNameImg[i].style.opacity = '100%';
      studentNameEls[i].style.zIndex = '0';
    });
  }
}

function changeEvent() {
  onSettingsStudent();
}
changeEvent();


// 검색기능
function filter() {
    let value, name, item, i;
  
    value = document.getElementById("value").value.toUpperCase();
    item = document.querySelectorAll("ul.studentsList > li");
  
    for (i = 0; i < item.length; i++) {
      name = item[i].getElementsByClassName("name");
      if (name[0].innerHTML.toUpperCase().indexOf(value) > -1) {
        item[i].style.display = "inline-block";
      } else {
        item[i].style.display = "none";
      }
    }
  }


// all
sideNavLis[0].addEventListener("click", function () {
  let allList = [];
    studentList.innerHTML = "";
    console.log('for --------------------------------------------', student);
    for (let i = 0; i < student.length; i++) {
          allList.push(student[i]);
          studentList.innerHTML += `<li><a href="${student[i].site}" target="_blank"><span class="photoChange"><video muted autoplay width="421" class="spotLight"></video><img src="${student[i].photo}"/></span><p class="name"><strong>${student[i].name}</strong>${student[i].id}</p><p class = "projectDetail">${student[i].team} | ${student[i].detail}</p></a></li>`;
      }

    let studentNameEls = document.querySelectorAll("ul.studentsList > li ");
    studentNameEls = document.querySelectorAll("ul.studentsList > li");
    const studentNameSpan = document.querySelectorAll("ul.studentsList > li > a > span");
    const studentNameVideo = document.querySelectorAll("ul.studentsList > li > a > span > video");
    const studentNameImg = document.querySelectorAll("ul.studentsList > li > a > span > img");
    const studentNameA = document.querySelectorAll("ul.studentsList > li > a");
    studentNameEls = Array.prototype.slice.call(studentNameEls);

    function changeEvent() {
        for (let i = 0; i < studentNameEls.length; i++) {
          studentNameEls[i].addEventListener("mouseenter", (e) => {
            console.log('hover --------------------------', student);
            let target = e.currentTarget;
            let index = studentNameEls.indexOf(target);
            let spotLightSrc = allList[index].spotLight;
            studentNameVideo[index].src = spotLightSrc;
            studentNameVideo[i].className = 'spotLight on';
            blackBack.className = 'blackBack on';
            console.log('hover')
            studentNameImg[i].style.opacity = '0%';
            studentNameEls[i].style.zIndex = '300';
          });
        
          
          studentNameEls[i].addEventListener("mouseleave", (e) => {
            studentNameVideo[i].className = 'spotLight';
            blackBack.className = 'blackBack';
            studentNameImg[i].style.opacity = '100%';
        studentNameEls[i].style.zIndex = '0';
          });
        }
    }
    changeEvent();
  });

// 기획
sideNavLis[1].addEventListener("click", function () {
    let plannerList = [];
    studentList.innerHTML = "";
    console.log('for --------------------------------------------', student);
    for (let i = 0; i < student.length; i++) {
        if (student[i].detail === "Planner") {
          plannerList.push(student[i]);
          studentList.innerHTML += `<li><a href="${student[i].site}" target="_blank"><span class="photoChange"><video muted autoplay width="421" class="spotLight"></video><img src="${student[i].photo}"/></span><p class="name"><strong>${student[i].name}</strong>${student[i].id}</p><p class = "projectDetail">${student[i].team} | ${student[i].detail}</p></a></li>`;
        }
        
      }

    let studentNameEls = document.querySelectorAll("ul.studentsList > li ");
    studentNameEls = document.querySelectorAll("ul.studentsList > li");
    const studentNameSpan = document.querySelectorAll("ul.studentsList > li > a > span");
    const studentNameVideo = document.querySelectorAll("ul.studentsList > li > a > span > video");
    const studentNameImg = document.querySelectorAll("ul.studentsList > li > a > span > img");
    const studentNameA = document.querySelectorAll("ul.studentsList > li > a");
    studentNameEls = Array.prototype.slice.call(studentNameEls);

    function changeEvent() {
        for (let i = 0; i < studentNameEls.length; i++) {
          studentNameEls[i].addEventListener("mouseenter", (e) => {
            console.log('hover --------------------------', student);
            let target = e.currentTarget;
            let index = studentNameEls.indexOf(target);
            let spotLightSrc = plannerList[index].spotLight;
            studentNameVideo[index].src = spotLightSrc;
            studentNameVideo[i].className = 'spotLight on';
            blackBack.className = 'blackBack on';
            console.log('hover')
            studentNameImg[i].style.opacity = '0%';
            studentNameEls[i].style.zIndex = '300';
          });
        
          
          studentNameEls[i].addEventListener("mouseleave", (e) => {
            studentNameVideo[i].className = 'spotLight';
            blackBack.className = 'blackBack';
            studentNameImg[i].style.opacity = '100%';
        studentNameEls[i].style.zIndex = '0';
          });
        }
    }
    changeEvent();
  });

// 디자인
sideNavLis[2].addEventListener("click", function () {
    let designList = [];
    studentList.innerHTML = "";
    for (let i = 0; i < student.length; i++) {
        if (student[i].detail === "Designer") {
          designList.push(student[i]);
          studentList.innerHTML += `<li><a href="${student[i].site}" target="_blank"><span class="photoChange"><video muted autoplay width="421" class="spotLight"></video><img src="${student[i].photo}"/></span><p class="name"><strong>${student[i].name}</strong>${student[i].id}</p><p class = "projectDetail">${student[i].team} | ${student[i].detail}</p></a></li>`;
        }
      }

    let studentNameEls = document.querySelectorAll("ul.studentsList > li ");
    studentNameEls = document.querySelectorAll("ul.studentsList > li");
    const studentNameSpan = document.querySelectorAll("ul.studentsList > li > a > span");
    const studentNameVideo = document.querySelectorAll("ul.studentsList > li > a > span > video");
    const studentNameImg = document.querySelectorAll("ul.studentsList > li > a > span > img");
    const studentNameA = document.querySelectorAll("ul.studentsList > li > a");
    studentNameEls = Array.prototype.slice.call(studentNameEls);

    function changeEvent() {
        for (let i = 0; i < studentNameEls.length; i++) {
          studentNameEls[i].addEventListener("mouseenter", (e) => {
            let target = e.currentTarget;
            let index = studentNameEls.indexOf(target);
            let spotLightSrc = designList[index].spotLight;
            studentNameVideo[index].src = spotLightSrc;
            studentNameVideo[i].className = 'spotLight on';
            blackBack.className = 'blackBack on';
            console.log('hover')
            studentNameImg[i].style.opacity = '0%';
        studentNameEls[i].style.zIndex = '300'; 
          });
        
          
          studentNameEls[i].addEventListener("mouseleave", (e) => {
            studentNameVideo[i].className = 'spotLight';
            blackBack.className = 'blackBack';
            studentNameImg[i].style.opacity = '100%';
        studentNameEls[i].style.zIndex = '0';
          });
        }
    }
    changeEvent();
  });

// 프로그래밍
sideNavLis[3].addEventListener("click", function () {
  let programmingList = [];
    studentList.innerHTML = "";
    for (let i = 0; i < student.length; i++) {
        if (student[i].detail === "Programmer") {
          programmingList.push(student[i]);
          studentList.innerHTML += `<li><a href="${student[i].site}" target="_blank"><span class="photoChange"><video muted autoplay width="421" class="spotLight"></video><img src="${student[i].photo}"/></span><p class="name"><strong>${student[i].name}</strong>${student[i].id}</p><p class = "projectDetail">${student[i].team} | ${student[i].detail}</p></a></li>`;
        }
      }

    let studentNameEls = document.querySelectorAll("ul.studentsList > li ");
    studentNameEls = document.querySelectorAll("ul.studentsList > li");
    const studentNameSpan = document.querySelectorAll("ul.studentsList > li > a > span");
    const studentNameVideo = document.querySelectorAll("ul.studentsList > li > a > span > video");
    const studentNameImg = document.querySelectorAll("ul.studentsList > li > a > span > img");
    const studentNameA = document.querySelectorAll("ul.studentsList > li > a");
    studentNameEls = Array.prototype.slice.call(studentNameEls);

    function changeEvent() {
        for (let i = 0; i < studentNameEls.length; i++) {
          studentNameEls[i].addEventListener("mouseenter", (e) => {
            let target = e.currentTarget;
            let index = studentNameEls.indexOf(target);
            let spotLightSrc = programmingList[index].spotLight;
            studentNameVideo[index].src = spotLightSrc;
            studentNameVideo[i].className = 'spotLight on';
            blackBack.className = 'blackBack on';
            console.log('hover')
            studentNameImg[i].style.opacity = '0%';
        studentNameEls[i].style.zIndex = '300';
          });
        
          
          studentNameEls[i].addEventListener("mouseleave", (e) => {
            studentNameVideo[i].className = 'spotLight';
            blackBack.className = 'blackBack';
            studentNameImg[i].style.opacity = '100%';
        studentNameEls[i].style.zIndex = '0';
          });
        }
    }
    changeEvent();
  });

// 4학년
sideNavLis[4].addEventListener("click", function () {
  let fourGradeList = [];
    studentList.innerHTML = "";
    for (let i = 0; i < student.length; i++) {
        if (student[i].detail === "4 Grade") {
          fourGradeList.push(student[i]);
          studentList.innerHTML += `<li><a href="${student[i].site}" target="_blank"><span class="photoChange"><video muted autoplay width="421" class="spotLight"></video><img src="${student[i].photo}"/></span><p class="name"><strong>${student[i].name}</strong>${student[i].id}</p><p class = "projectDetail">${student[i].team} | ${student[i].detail}</p></a></li>`;
        }
      }

    let studentNameEls = document.querySelectorAll("ul.studentsList > li ");
    studentNameEls = document.querySelectorAll("ul.studentsList > li");
    const studentNameSpan = document.querySelectorAll("ul.studentsList > li > a > span");
    const studentNameVideo = document.querySelectorAll("ul.studentsList > li > a > span > video");
    const studentNameImg = document.querySelectorAll("ul.studentsList > li > a > span > img");
    const studentNameA = document.querySelectorAll("ul.studentsList > li > a");
    studentNameEls = Array.prototype.slice.call(studentNameEls);

    function changeEvent() {
        for (let i = 0; i < studentNameEls.length; i++) {
          studentNameEls[i].addEventListener("mouseenter", (e) => {
            let target = e.currentTarget;
            let index = studentNameEls.indexOf(target);
            let spotLightSrc = fourGradeList[index].spotLight;
            studentNameVideo[index].src = spotLightSrc;
            studentNameVideo[i].className = 'spotLight on';
            blackBack.className = 'blackBack on';
            console.log('hover')
            studentNameImg[i].style.opacity = '0%';
        studentNameEls[i].style.zIndex = '300';
          });
        
          
          studentNameEls[i].addEventListener("mouseleave", (e) => {
            studentNameVideo[i].className = 'spotLight';
            blackBack.className = 'blackBack';
            studentNameImg[i].style.opacity = '100%';
        studentNameEls[i].style.zIndex = '0';
          });
        }
    }
    changeEvent();
  });
  sideNavLis = Array.prototype.slice.call(sideNavLis);
/* 사이드 네비 클릭 표시 */
for (let i = 0; i < sideNavLis.length; i++) {
  sideNavLis[i].addEventListener("click", (e) => {
    const el = e.currentTarget;
    const target = sideNavLis.indexOf(el);
    for (let j = 0; j < sideNavLis.length; j++) {
      sideNavLis[j].classList.remove("side-active");
    }
    sideNavLis[target].classList.add("side-active");
  });
}

$(window).scroll(function(){
  console.log("스크롤");
});

const $topBtn = $('.topBtn')

$topBtn.click(function(){
  console.log("topBtnClick")
  window.scrollTo({ top: 0, behavior: "smooth"});
})