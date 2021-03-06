<!DOCTYPE html>
<%@ page session="false"
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<title>Machine Learning OCR</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="resources/template/w3.css">
<link rel="stylesheet" type="text/css" href="resources/template/css.css">
<link rel="stylesheet" type="text/css" href="resources/template/font-awesome.min.css">
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
    <a href="#Introduction" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Introduction</a>
    <a href="#Guides" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Guides</a>
    <a href="#SamplePage" class="w3-bar-item w3-button w3-padding-large w3-hide-small">SamplePage</a>
    <a href="#Team" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Team</a>
    <!--  <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a> -->
  </div>
</div>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="#Introduction" class="w3-bar-item w3-button w3-padding-large">Introduction</a>
  <a href="#Guides" class="w3-bar-item w3-button w3-padding-large">Guides</a>
  <a href="#SamplePage" class="w3-bar-item w3-button w3-padding-large">Sample Page</a>
  <a href="#Team" class="w3-bar-item w3-button w3-padding-large">Team</a>
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
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="Introduction">
    <h2 class="w3-wide">Machine learning OCR Project</h2>
    <p class="w3-opacity"><i>Find the letters in your photos!</i></p>
    <p class="w3-justify">　</p>
    <p class="w3-justify"><strong>OCR(Optical Character Recognition, 광학 문자 인식)</strong>은 사람이 쓰거나 기계가 인쇄한 문자의 영상을 획득하여 텍스트로 변환해주는 기술을 뜻하며 디지털 문서와 서적, 간판 등을 대상으로 다양한 목적으로 사용되고 있습니다.</p>
    <p class="w3-justify">하지만, 현재 존재하는 OCR 프로그램들은 각각 상이한 글씨체의 존재 또는 배경의 명암 여부 등 여러가지 환경에 의하여 나타나는 인식률 하락 등 여러가지 한계점을 가지고 있습니다.</p>
    <p class="w3-justify">그래서 우리는 기존 OCR 기술에 <strong>기계학습을 접목시켜 간판 및 표지판 인식에 특화된</strong> 새로운 OCR 프로그램을 제작하였습니다.</p>
    <p class="w3-justify">이 새로운 프로그램은 기존 OCR 프로그램보다 환경에 구애받지 않고 더 좋은 문자인식 기능을 발휘할 수 있을 것으로 예상하고 있습니다. 또한 간판 및 표지판 인식을 통한 위치와 정보 제공 등 향후 다양한 분야에 활용할 수 있을 것으로 기대하고 있습니다.</p>
    <p class="w3-justify">　</p>
    <p class="w3-justify">이 페이지는 <strong>프로젝트의 설명 및 배포</strong>, 그리고 <strong>팀 구성원 소개</strong>를 위해 제작되었습니다.</p>
	<p class="w3-justify">그리고 사용자가 프로그램을 직접 체험해 볼 수 있는 <strong>샘플 페이지</strong>를 제공하고 있습니다.</p>
  </div>

  <!-- The Tour Section -->
  <div class="w3-black" id="Guides">
    <div class="w3-container w3-content w3-padding-64" style="max-width:800px">
      <h2 class="w3-wide w3-center">Guides</h2>
      <p class="w3-opacity w3-center"><i>How does it work?</i></p><br>
	<p class="w3-justify">○ 프로그램 동작 과정</p>
	<img src="https://i.imgur.com/kmqlBxh.jpg" style="width:100%">
	<p class="w3-justify">　</p>
	<p class="w3-justify">(1) 이미지 전송</p>
	<p class="w3-justify">브라우저 또는 모바일 환경에서 접속한 사용자는 문자 인식을 원하는 이미지를 선택하여 서버로 전송시킵니다. </p>
	<p class="w3-justify"><strong>Stream을 이용한 전송</strong>이 이루어지며 전송된 이미지는 OpenCV 모듈에서 불러오기 위한 저장소에 저장이 됩니다.</p>
	<p class="w3-justify">　</p>
	<p class="w3-justify">(2) OpenCV 모듈</p>
	<p class="w3-justify">사용자의 머신에서 전송된 이미지는 OpenCV를 이용한 전처리 과정을 거칩니다. </p>
	<p class="w3-justify">전처리 과정은 이미지 내에 있는 <strong>글자로 의심되는 영역들을 더욱 쉽게 파싱할 수 있게</strong> 만들어 줍니다. </p>
	<p class="w3-justify">이미지에 Gray Filter 등 여러가지 <strong>필터 효과를 적용</strong>하여 글자 의심영역을 두드러지게 만듭니다.</p>
	<p class="w3-justify">　</p>
	<p class="w3-justify">(3) 딥러닝 모델</p>
	<p class="w3-justify">전처리 과정이 끝난 이미지는 텐서플로 환경에서 사전에 학습된 딥러닝 모델을 이용하여 <strong>문자 여부를 판별</strong>합니다.</p>
	<p class="w3-justify">이 모델은 약 1700여장의 학습 이미지 데이터를 바탕으로 훈련시켰으며 약 95%의 정확도를 보여주고 있습니다.</p>
	<p class="w3-justify">　</p>
	<p class="w3-justify">(4) OCR 모듈</p>
	<p class="w3-justify">딥러닝 모델에서 글자로 판별된 이미지들은 OCR 모듈을 이용하여 <strong>텍스트로 변환</strong>시킵니다.</p>
	<p class="w3-justify">OCR 모듈은 오픈소스로 공개된 OCR 엔진을 사용합니다.</p>
	<p class="w3-justify">　</p>
	<p class="w3-justify">(5) 텍스트 전송</p>
	<p class="w3-justify">OCR모듈을 거쳐 판별된 텍스트를 <strong>소켓을 이용하여</strong> 클라이언트로 전송시킵니다.</p>
    <p class="w3-justify">사용자는 자신이 선택했던 이미지와 함께 출력결과를 직접 확인할 수 있게 됩니다.</p>
    <p class="w3-justify">　</p>
   
    </div>
  </div>


  <!-- The Contact Section -->
  <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="SamplePage">
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
  state.innerHTML = '글자를 판별하고 싶은 사진을 선택하세요.';
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
  
	<form method="POST" enctype="multipart/form-data" action="/test-upload">
		<div>
			<input type="file" name="file" />
			<input type="submit" value="Upload" />
		</div>
	</form>
  
<!-- End Page Content -->
<!-- The Band Section -->
<div class="w3-black" id="tour">
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="Team">
    <h2 class="w3-wide">Team</h2>
    <p class="w3-opacity w3-center"><i>Information of Team</i></p>
    <p class="w3-opacity"><i></i></p>
    <p class="w3-justify"></p>
	<p class="w3-opacity"><i></i></p>
    <p class="w3-justify">Team Name : <Strong>OCLow</Strong></p>
	<p class="w3-opacity"><i></i></p>
    <p class="w3-justify">Team Members :</p>
    <p class="w3-opacity"><i></i></p>
    <p class="w3-justify">- 윤지원 (Team Leader, OpenCV 모듈 설계)</p>
    <p class="w3-opacity"><i></i></p>
    <p class="w3-justify">- 박윤아 (TensorFlow를 이용한 딥러닝 모델 설계)</p>
    <p class="w3-opacity"><i></i></p>
    <p class="w3-justify">- 김성현 (학습 데이터 수집 및 분류)</p>
    <p class="w3-opacity"><i></i></p>
    <p class="w3-justify">- 서영준 (웹 프론트 제작)</p>
    <p class="w3-opacity"><i></i></p>
    <p class="w3-justify">Development period : 2018. 3 ~ 2018. 6</p>
    <p class="w3-opacity"><i></i></p>
    <p class="w3-justify">Source code : <a href="https://github.com/yoonah5991/Capstone-OCR">https://github.com/yoonah5991/Capstone-OCR</a></p>  
  </div>
  </div>
</div>
<!-- Add Google Maps -->

<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

<!-- Footer -->
<!-- 
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
  <i class="fa fa-facebook-official w3-hover-opacity"></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <i class="fa fa-snapchat w3-hover-opacity"></i>
  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
  <i class="fa fa-twitter w3-hover-opacity"></i>
  <i class="fa fa-linkedin w3-hover-opacity"></i>
  <p class="w3-medium">Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>
-->

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
