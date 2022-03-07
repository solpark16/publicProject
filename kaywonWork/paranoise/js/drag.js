// 실패한 js.
// const $para1 = $('.para1')

const $para1Text = $('.para1Text');
const $droppable = $('.droppable');


let currentDroppable = null;
    para1.onmousedown = function(event) {

      let shiftX = event.clientX - para1.getBoundingClientRect().left;
      let shiftY = event.clientY - para1.getBoundingClientRect().top;

      para1.style.position = 'absolute';
      para1.style.zIndex = 1000;
      document.body.append(para1);

      moveAt(event.pageX, event.pageY);

      function moveAt(pageX, pageY) {
        para1.style.left = pageX - shiftX + 'px';
        para1.style.top = pageY - shiftY + 'px';
      }

      function onMouseMove(event) {
        moveAt(event.pageX, event.pageY);

        para1.hidden = true;
        let elemBelow = document.elementFromPoint(event.clientX, event.clientY);
        para1.hidden = false;

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

      para1.onmouseup = function() {
        document.removeEventListener('mousemove', onMouseMove);
        para1.onmouseup = null;
      };

    };

    function enterDroppable(elem) {
    }

    function leaveDroppable(elem) {
      elem.style.background = '';
    }

    para1.ondragstart = function() {
      return false;
    };

    // 2

    para2.onmousedown = function(event) {

      let shiftX = event.clientX - para2.getBoundingClientRect().left;
      let shiftY = event.clientY - para2.getBoundingClientRect().top;

      para2.style.position = 'absolute';
      para2.style.zIndex = 1000;
      document.body.append(para2);

      moveAt(event.pageX, event.pageY);

      function moveAt(pageX, pageY) {
        para2.style.left = pageX - shiftX + 'px';
        para2.style.top = pageY - shiftY + 'px';
      }

      function onMouseMove(event) {
        moveAt(event.pageX, event.pageY);

        para2.hidden = true;
        let elemBelow = document.elementFromPoint(event.clientX, event.clientY);
        para2.hidden = false;

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

      para2.onmouseup = function() {
        document.removeEventListener('mousemove', onMouseMove);
        para2.onmouseup = null;
      };

    };

    function enterDroppable(elem) {
    }

    function leaveDroppable(elem) {
      elem.style.background = '';
    }

    para2.ondragstart = function() {
      return false;
    };
    // 3

    para3.onmousedown = function(event) {

      let shiftX = event.clientX - para3.getBoundingClientRect().left;
      let shiftY = event.clientY - para3.getBoundingClientRect().top;

      para3.style.position = 'absolute';
      para3.style.zIndex = 1000;
      document.body.append(para3);

      moveAt(event.pageX, event.pageY);

      function moveAt(pageX, pageY) {
        para3.style.left = pageX - shiftX + 'px';
        para3.style.top = pageY - shiftY + 'px';
      }

      function onMouseMove(event) {
        moveAt(event.pageX, event.pageY);

        para3.hidden = true;
        let elemBelow = document.elementFromPoint(event.clientX, event.clientY);
        para3.hidden = false;

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

      para3.onmouseup = function() {
        document.removeEventListener('mousemove', onMouseMove);
        para3.onmouseup = null;
      };

    };

    function enterDroppable(elem) {
    }

    function leaveDroppable(elem) {
      elem.style.background = '';
    }

    para3.ondragstart = function() {
      return false;
    };
