<!DOCTYPE html>
<%@ page session="false"
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/Capstone/src/main/webapp/WEB-INF/views/template/css.css">
<link rel="stylesheet" href="/Capstone/src/main/webapp/WEB-INF/views/template/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="#band" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Introduction</a>
    <a href="#tour" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Guides</a>
    <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Sample Page</a>
    <a href="#members" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Members</a>
    <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a>
  </div>
</div>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="#band" class="w3-bar-item w3-button w3-padding-large">BAND</a>
  <a href="#tour" class="w3-bar-item w3-button w3-padding-large">TOUR</a>
  <a href="#contact" class="w3-bar-item w3-button w3-padding-large">CONTACT</a>
  <a href="#members" class="w3-bar-item w3-button w3-padding-large">MEMBERS</a>
</div>

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">

  <!-- Automatic Slideshow Images -->
  <div class="mySlides w3-display-container w3-center">
    <img src="https://i.imgur.com/ew9hVAX.png" style="width:30%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
    </div>
  </div>

  <!-- The Band Section -->
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="band">
    <h2 class="w3-wide">Machine learning OCR</h2>
    <p class="w3-opacity"><i>Find the letters in your photos!</i></p>
    <p class="w3-justify">*이 페이지는 현재 테스트 중입니다.*(종설) </p>
    <p class="w3-justify">Machine learning OCR 프로젝트는 머신러닝 기술이 접목시킨 OCR 프로그램 제작을 목표로 하고 있습니다.</p>
    <p class="w3-justify">그 결과, 현존하는 다른 OCR 프로그램보다 더 좋은 문자인식 기능을 발휘할 수 있을 것으로 예상하고 있습니다.</p>
      <p class="w3-justify">
이 웹페이지는 머신러닝 OCR 프로젝트의 소개 및 배포, 구성원 소개를 위해 제작되었습니다.</p>
<p class="w3-justify">그리고 사용자가 직접 체험해 볼 수 있는 샘플 페이지를 제공하고 있습니다.</p>
  </div>

  <!-- The Tour Section -->
  <div class="w3-black" id="tour">
    <div class="w3-container w3-content w3-padding-64" style="max-width:800px">
      <h2 class="w3-wide w3-center">Guides</h2>
      <p class="w3-opacity w3-center"><i>How does it work?</i></p><br>
	<p class="w3-justify">1. 시스템 구성</p>
	<img src="https://i.imgur.com/kmqlBxh.jpg" style="width:100%">
	<p class="w3-justify">1.1 이미지 전송</p>
	<p class="w3-justify"></p>
	<p class="w3-justify">1.2 OpenCV 모듈</p>
	<p class="w3-justify"></p>
	<p class="w3-justify">1.3 딥러닝 모델</p>
	<p class="w3-justify"></p>
	<p class="w3-justify">1.4 OCR 모듈</p>
	<p class="w3-justify"></p>
    </div>
  </div>


  <!-- The Contact Section -->
  <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="contact">
    <h2 class="w3-wide w3-center">Sample Page</h2>
    <p class="w3-opacity w3-center"><i>Try it yourself!</i></p>
<article>
  <p id="status">File API &amp; FileReader API not supported</p>
  <p><input type=file></p>
  <p></p>
  <div id="holder"></div>
</article>
<script>
var upload = document.getElementsByTagName('input')[0],
    holder = document.getElementById('holder'),
    state = document.getElementById('status');

if (typeof window.FileReader === 'undefined') {
  state.className = 'fail';
} else {
  state.className = 'success';
  state.innerHTML = 'Select an image from your machine to read the contents of the file!';
}
 
upload.onchange = function (e) {
  e.preventDefault();

  var file = upload.files[0],
      reader = new FileReader();
  reader.onload = function (event) {
    var img = new Image();
    img.src = event.target.result;
    if (img.width > 800) { 
      img.width = 800;
    }
    if(img.height > 560){
    	img.height = 560;
    }
    holder.innerHTML = '';
    holder.appendChild(img);
  };
  reader.readAsDataURL(file);

  return false;
};
</script>
<p class="w3-justify">검출된 문자 : ${text }</p>
  </div>
  
<!-- End Page Content -->
<!-- The Band Section -->
<div class="w3-black" id="tour">
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="members">
    <h2 class="w3-wide">Members</h2>
    <p class="w3-opacity"><i></i></p>
    <p class="w3-justify">
이 곳에는 구성원 소개와 사진 집어넣을 예정</p>
	<p class="w3-opacity"><i></i></p>
    <p class="w3-justify">
OCLow Team (Dankook Univ.)</p>
	<p class="w3-opacity"><i></i></p>
    <p class="w3-justify">1. 윤지원</p>
    <p class="w3-opacity"><i></i></p>
    <p class="w3-justify">2. 박윤아</p>
    <p class="w3-opacity"><i></i></p>
    <p class="w3-justify">3. 김성현</p>
    <p class="w3-opacity"><i></i></p>
    <p class="w3-justify">4. 서영준</p>
    <p class="w3-opacity"><i></i></p>
      
<p class="w3-justify">Source code : https://github.com/yoonah5991/Capstone-OCR</p>
  </div>
  </div>
</div>
<!-- Add Google Maps -->

<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
  <i class="fa fa-facebook-official w3-hover-opacity"></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <i class="fa fa-snapchat w3-hover-opacity"></i>
  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
  <i class="fa fa-twitter w3-hover-opacity"></i>
  <i class="fa fa-linkedin w3-hover-opacity"></i>
  <p class="w3-medium">Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 4000);    
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>
