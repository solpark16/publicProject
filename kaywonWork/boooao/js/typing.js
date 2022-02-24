const $typing = $('.typing');
var typingEl = document.querySelector('.team');
const otherBtn = document.querySelector('#scroll-section6 .afterOursText .otherBtn button');

console.log($typing);
console.log(typingEl);
console.log(project);

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
const rand = Math.floor(Math.random());

// 로드되었을 때 셔플 한 번 실행
function mainLoad() {
  grade2Project.shuffle();
  $typing.empty();
    $typing.append(`<h6 class="team">${grade2Project[rand].afterOurs}<br><span>-${grade2Project[rand].projectCode}-</span></h6>`);
}

mainLoad();

// 버튼을 누르면 셔플도 실행되고 애니도 추가
otherBtn.addEventListener('click', mainLoad);