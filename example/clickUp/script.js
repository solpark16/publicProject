console.log('start')

const selectedLi = document.querySelectorAll('.item');
const container = document.querySelector('#container');

selectedLi.forEach((target) => target.addEventListener("click", clickEvent));

function clickEvent() {
    container.insertBefore(this, container.lastChild);
}