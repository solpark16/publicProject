// 비디오의 시작점.
var frameNumber = 0,
  // 보여줄 비디오의 길이.
  playbackConst = 10000,
  // 스크롤을 기반으로 전개되는 이벤트이기 때문에 전체 container의 높이를 따로 지정하고자 변수로 가져옴.
  setHeight = document.getElementById("set-height"),
  // 비디오 부분       
  vid = document.getElementById('v0');

// 비디오가 로드되고 나서 호출되는 이벤트.
vid.addEventListener('loadedmetadata', function() {
  // container의 높이를 비디오의 전체길이와 보여줄 길이를 곱한 결과값으로 설정.
  setHeight.style.height = Math.floor(vid.duration) * playbackConst + "px";
  console.log(Math.floor(vid.duration) * playbackConst);
});

// scrollPlay 정의
function scrollPlay() {
  // 해당 비디오의 frame을 계산하여 정의.
  // window.pageYOffset을 통해 현재 브라우저의 y위치값(스크롤값)을 받아오고 이를 설정한 보여줄 비디오의 길이만큼 나눠줌.
  // window.pageYOffset의 크기가 늘어날수록 프레임이 늘어나기에 더 깔끔하게 보임.
  var frameNumber = (window.pageYOffset * 1000) / playbackConst;
  // 계산된 값을 비디오의 영상위치에 대입함으로써 스크롤에 따라 영상이 전개되도록 함.
  vid.currentTime = frameNumber;
  window.requestAnimationFrame(scrollPlay);
}

window.requestAnimationFrame(scrollPlay);