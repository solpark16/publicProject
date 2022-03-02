const studentList = document.querySelector("ul.studentsList");
let detailList = document.querySelectorAll(".detailWrap > ul > li");

// 랜덤으로 나오게 하기
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
 mainLoad()

// hover event

let studentNameEls = document.querySelectorAll("ul.studentsList > li ");
const studentNameVideo = document.querySelectorAll("ul.studentsList > li > a > span > video");
const studentNameImg = document.querySelectorAll("ul.studentsList > li > a > span > img");
studentNameEls = Array.prototype.slice.call(studentNameEls);

const blackBack = document.querySelector(".blackBack");

/* hover spot light */
function onSettingsStudent(){
  for (let i = 0; i < studentNameEls.length; i++) {
    studentNameEls[i].addEventListener("mouseenter", (e) => {
      let target = e.currentTarget;
      let index = studentNameEls.indexOf(target);
      let spotLightSrc = student[index].spotLight;
      studentNameVideo[index].src = spotLightSrc;
      studentNameVideo[i].className = 'spotLight on';
      blackBack.className = 'blackBack on';
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
detailList[0].addEventListener("click", function () {
  let allList = [];
  studentList.innerHTML = "";
  for (let i = 0; i < student.length; i++) {
      allList.push(student[i]);
      studentList.innerHTML += `<li><a href="${student[i].site}" target="_blank"><span class="photoChange"><video muted autoplay width="421" class="spotLight"></video><img src="${student[i].photo}"/></span><p class="name"><strong>${student[i].name}</strong>${student[i].id}</p><p class = "projectDetail">${student[i].team} | ${student[i].detail}</p></a></li>`;
  }

  let studentNameEls = document.querySelectorAll("ul.studentsList > li ");
  const studentNameVideo = document.querySelectorAll("ul.studentsList > li > a > span > video");
  const studentNameImg = document.querySelectorAll("ul.studentsList > li > a > span > img");
  studentNameEls = Array.prototype.slice.call(studentNameEls);

  function changeEvent() {
    for (let i = 0; i < studentNameEls.length; i++) {
      studentNameEls[i].addEventListener("mouseenter", (e) => {
        let target = e.currentTarget;
        let index = studentNameEls.indexOf(target);
        let spotLightSrc = allList[index].spotLight;
        studentNameVideo[index].src = spotLightSrc;
        studentNameVideo[i].className = 'spotLight on';
        blackBack.className = 'blackBack on';
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
detailList[1].addEventListener("click", function () {
  let plannerList = [];
  studentList.innerHTML = "";
  for (let i = 0; i < student.length; i++) {
      if (student[i].detail === "Planner") {
        plannerList.push(student[i]);
        studentList.innerHTML += `<li><a href="${student[i].site}" target="_blank"><span class="photoChange"><video muted autoplay width="421" class="spotLight"></video><img src="${student[i].photo}"/></span><p class="name"><strong>${student[i].name}</strong>${student[i].id}</p><p class = "projectDetail">${student[i].team} | ${student[i].detail}</p></a></li>`;
      }
  }

  let studentNameEls = document.querySelectorAll("ul.studentsList > li ");
  const studentNameVideo = document.querySelectorAll("ul.studentsList > li > a > span > video");
  const studentNameImg = document.querySelectorAll("ul.studentsList > li > a > span > img");
  studentNameEls = Array.prototype.slice.call(studentNameEls);

  function changeEvent() {
    for (let i = 0; i < studentNameEls.length; i++) {
      studentNameEls[i].addEventListener("mouseenter", (e) => {
        let target = e.currentTarget;
        let index = studentNameEls.indexOf(target);
        let spotLightSrc = plannerList[index].spotLight;
        studentNameVideo[index].src = spotLightSrc;
        studentNameVideo[i].className = 'spotLight on';
        blackBack.className = 'blackBack on';
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
detailList[2].addEventListener("click", function () {
  let designList = [];
  studentList.innerHTML = "";
  for (let i = 0; i < student.length; i++) {
      if (student[i].detail === "Designer") {
        designList.push(student[i]);
        studentList.innerHTML += `<li><a href="${student[i].site}" target="_blank"><span class="photoChange"><video muted autoplay width="421" class="spotLight"></video><img src="${student[i].photo}"/></span><p class="name"><strong>${student[i].name}</strong>${student[i].id}</p><p class = "projectDetail">${student[i].team} | ${student[i].detail}</p></a></li>`;
      }
  }

  let studentNameEls = document.querySelectorAll("ul.studentsList > li ");
  const studentNameVideo = document.querySelectorAll("ul.studentsList > li > a > span > video");
  const studentNameImg = document.querySelectorAll("ul.studentsList > li > a > span > img");
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
detailList[3].addEventListener("click", function () {
  let programmingList = [];
  studentList.innerHTML = "";
  for (let i = 0; i < student.length; i++) {
      if (student[i].detail === "Programmer") {
        programmingList.push(student[i]);
        studentList.innerHTML += `<li><a href="${student[i].site}" target="_blank"><span class="photoChange"><video muted autoplay width="421" class="spotLight"></video><img src="${student[i].photo}"/></span><p class="name"><strong>${student[i].name}</strong>${student[i].id}</p><p class = "projectDetail">${student[i].team} | ${student[i].detail}</p></a></li>`;
      }
  }

  let studentNameEls = document.querySelectorAll("ul.studentsList > li ");
  const studentNameVideo = document.querySelectorAll("ul.studentsList > li > a > span > video");
  const studentNameImg = document.querySelectorAll("ul.studentsList > li > a > span > img");
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
detailList[4].addEventListener("click", function () {
  let fourGradeList = [];
  studentList.innerHTML = "";
  for (let i = 0; i < student.length; i++) {
    if (student[i].detail === "4 Grade") {
      fourGradeList.push(student[i]);
      studentList.innerHTML += `<li><a href="${student[i].site}" target="_blank"><span class="photoChange"><video muted autoplay width="421" class="spotLight"></video><img src="${student[i].photo}"/></span><p class="name"><strong>${student[i].name}</strong>${student[i].id}</p><p class = "projectDetail">${student[i].team} | ${student[i].detail}</p></a></li>`;
    }
  }

  let studentNameEls = document.querySelectorAll("ul.studentsList > li ");
  const studentNameVideo = document.querySelectorAll("ul.studentsList > li > a > span > video");
  const studentNameImg = document.querySelectorAll("ul.studentsList > li > a > span > img");
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


/* 각 전공 클릭 표시 */
detailList = Array.prototype.slice.call(detailList);
for (let i = 0; i < detailList.length; i++) {
  detailList[i].addEventListener("click", (e) => {
    const el = e.currentTarget;
    const target = detailList.indexOf(el);
    for (let j = 0; j < detailList.length; j++) {
      detailList[j].classList.remove("side-active");
    }
    detailList[target].classList.add("side-active");
  });
}

// top Button
const $topBtn = $('.topBtn')
$topBtn.click(function(){
  window.scrollTo({ top: 0, behavior: "smooth"});
})