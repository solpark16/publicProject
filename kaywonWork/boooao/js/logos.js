console.log("Script Load");


const $logosList = $('.logosList');
const $logosText = $('.logosText')

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
  console.log("gg");
  student2.shuffle();
  // $projectList.text.empty();
  for (let i = 0; i < student2.length; i++) {
  $logosList.append(`
  <div class="logosWord">
    <p class="logos" id="logos${student2[i].num}">${student2[i].logos}</p>
  </div>`);
  }
}
mainLoad() // 모든 걸 시작하는 함수...








const $logos = $('.logos')



let currentDroppable = null;
for (let i = 0; i < $logos.length; i++) {
    $logos[i].onmousedown = function(event) {

      let shiftX = event.clientX - $logos[i].getBoundingClientRect().left;
      let shiftY = event.clientY - $logos[i].getBoundingClientRect().top;

      $logos[i].style.position = 'absolute';
      $logos[i].style.zIndex = 199;
      document.body.append($logos[i]);

      moveAt(event.pageX, event.pageY);

      function moveAt(pageX, pageY) {
        $logos[i].style.left = pageX - shiftX + 'px';
        $logos[i].style.top = pageY - shiftY + 'px';
      }

      function onMouseMove(event) {
        moveAt(event.pageX, event.pageY);

        $logos[i].hidden = true;
        let elemBelow = document.elementFromPoint(event.clientX, event.clientY);
        $logos[i].hidden = false;

        if (!elemBelow) return;

        let droppableBelow = elemBelow.closest('.droppable');
        if (currentDroppable != droppableBelow) {
          if (currentDroppable) { // null when we were not over a droppable before this event
            leaveDroppable(currentDroppable);
          }
          currentDroppable = droppableBelow;
          if (currentDroppable) { // null if we're not coming over a droppable now
            // (maybe just left the droppable)
            enterDroppable(currentDroppable);
          }
        }
      }

      document.addEventListener('mousemove', onMouseMove);

      $logos[i].onmouseup = function() {
        document.removeEventListener('mousemove', onMouseMove);
        $logos[i].onmouseup = null;
      };

    };



    function enterDroppable(elem) {
        
        console.log("이거 맞아?")
    //   elem.style.background = `${student[i].color}`;
    $logosText.empty();
    $logosText.append(`${student2[i].logosReason} [${student2[i].id}] ${student2[i].name}`);
    }

    function leaveDroppable(elem) {
    //   elem.style.background = '';
      $logosText.empty();
    $logosText.append(`
    이유를 디자인하다. 우리는 이성(Logos)을 통해 생각하고 새로운 것들을 만들어갑니다.  화면에는 다양한 단어들이 보여집니다. 상자 속 빈칸에 단어들을 넣어보며 학생들의 여러가지 이유들을 함께 디자인 해보세요.`);
      
    }

    $logos[i].ondragstart = function() {
      return false;
    };
}
    //-----------------------------

