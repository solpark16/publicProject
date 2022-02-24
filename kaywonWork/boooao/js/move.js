$(document).ready(function () {
    var page_url = window.location.href;
    var page_id = page_url.substring(page_url.lastIndexOf("#") + 1);
    if (page_id == 'section5') {
      indexY = 4;
      secIndex = 4;
      transY = indexY * -100;
      sectionTransformEl.style.transform = "translateY(" + transY + "vh)";
      sectionTransformEl.style.transition = "all 0.8s ease";
      sectionTransformEl.style.transitionDelay = "0.3s";
    }
});