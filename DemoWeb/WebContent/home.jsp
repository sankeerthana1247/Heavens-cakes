<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WINNI</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="home.css">
</head>
<body>
<jsp:include page="Header.jsp" />
<div id="slider">  
<div class="slides">  
  <img src="https://www.sendonlinecake.com/images/cake_banner.jpg" width="100%" />
 </div>
  
  <div class="slides">  
  <img src="https://homelykitchenbh.files.wordpress.com/2020/09/cake-banner-1-1500x500-1.jpg?w=1200" width="100%" />
</div>
  
  <div class="slides">  
  <img src="https://ribbonsandballoons.com/frontassets/images/slider/desktop05.jpg" width="100%" />
</div> 
  
   <div class="slides">  
  <img src="https://www.cakeplaza.in/cdn/shop/collections/Black-forest_1_1350x.jpg?v=1605717712" width="100%" />
</div> 
  
  <div id="dot"><span class="dot"></span><span class="dot"></span><span class="dot"></span><span class="dot"></span><span class="dot"></span></div>
 </div>
 <script>
    var index = 0;
var slides = document.querySelectorAll(".slides");
var dot = document.querySelectorAll(".dot");

function changeSlide(){

  if(index<0){
    index = slides.length-1;
  }
  
  if(index>slides.length-1){
    index = 0;
  }
  
  for(let i=0;i<slides.length;i++){
    slides[i].style.display = "none";
    dot[i].classList.remove("active");
  }
  
  slides[index].style.display= "block";
  dot[index].classList.add("active");
  
  index++;
  
  setTimeout(changeSlide,2000);
  
}

changeSlide();
 </script>

<div class="icon-row">
    <div class="icon-container">
    <a href="path1.html" target="_blank">
        <img src="https://assets.winni.in/groot/2023/12/18/desktop/cake.jpg" alt="Icon 1" class="icon">
    </a>
    <div class="Cakes">Cakes</div>
   </div>
   <div class="icon-container">
    <a href="path2.html" target="_blank">
        <img src="https://i.pinimg.com/564x/d3/52/a5/d352a51786dd2d2cd695a3fb8d74a242.jpg" alt="Icon 2" class="icon">
    </a>
    <div class="Chocolates">Chocolates</div>
   </div>
   <div class="icon-container">
    <a href="path3.html" target="_blank">
        <img src="https://i.pinimg.com/564x/2d/55/d0/2d55d026856e77dffb5d507effa66a5c.jpg" alt="Icon 3" class="icon">
    </a>
    <div class="Flowers">Flowers</div>
   </div>
   <div class="icon-container">
    <a href="path4.html" target="_blank">
        <img src="https://i.pinimg.com/564x/71/8e/b3/718eb39b1bb87bd5f4c945c9b6bf2fef.jpg" alt="Icon 4" class="icon">
    </a>
    <div class="Gifts">Gifts</div>
   </div>
   <div class="icon-container">
    <a href="path5.html" target="_blank">
        <img src="https://i.pinimg.com/564x/e1/23/97/e12397aca5c42f33b5b68de596c1eee3.jpg" alt="Icon 5" class="icon">
    </a>
    <div class="Combs">Combs</div>
  </div>
  <div class="icon-container">
    <a href="path6.html" target="_blank">
        <img src="https://i.pinimg.com/564x/24/97/f8/2497f8cb4e3860b816f7f7ec10cb80e7.jpg" alt="Icon 6" class="icon">
    </a>
    <div class="Crystal Gifts">Crystal Gifts</div>
  </div>
  <div class="icon-container">
    <a href="path7.html" target="_blank">
        <img src="https://i.pinimg.com/564x/ae/07/52/ae0752eaef12464326bdaea4ecc4d157.jpg" alt="Icon 7" class="icon">
    </a>
    <div class="Plants">Plants</div>
  </div>
  <div class="icon-container">
    <a href="path8.html" target="_blank">
        <img src="https://i.pinimg.com/736x/28/c9/a6/28c9a6a95eef12e40b5877f648025f5a.jpg" alt="Icon 8" class="icon">
    </a>
    <div class="Personalised">Personalised</div>
  </div>
</div>
<div class="title">
  Must Have
</div>
<div class="main-content">
    <div class="random-size">
    <img src="https://assets.winni.in/groot/2024/01/22/desktop/best-seller-cake.jpg?w=600" alt="Gift Image 1" class="gift-image"style="width: 30%;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <img src="https://assets.winni.in/groot/2023/12/18/desktop/hampers.jpg" alt="Gift Image 3" class="gift-image"style="width: 30%;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <img src="https://assets.winni.in/groot/2023/12/18/desktop/chocolate-bouquet.jpg" alt="Gift Image 3" class="gift-image"style="width: 30%;height: 60%;">
  </div>
  </div>
  </div>
</div>

<div class="image-content">
  <div class="image-row">
  <img src="https://assets.winni.in/sf-img/live/visuals/home/desktop/2024/4/1711969076588.jpg" alt="image" class="image">
</div>
</div>
<div class="title">
  International Gifts Delivery
</div>
<div class="icon-row">
  <div class="icon-container">
  <a href="path1.html" target="_blank">
      <img src="https://assets.winni.in/groot/2023/05/11/desktop/austrelia.png" alt="Icon 1" class="icon">
  </a>
  <div class="Australia">Australia</div>
 </div>
 <div class="icon-container">
  <a href="path2.html" target="_blank">
      <img src="https://assets.winni.in/groot/2023/05/11/desktop/usa.png" alt="Icon 2" class="icon">
  </a>
  <div class="USA">USA</div>
 </div>
 <div class="icon-container">
  <a href="path3.html" target="_blank">
      <img src="https://assets.winni.in/groot/2023/05/11/desktop/canada.png" alt="Icon 3" class="icon">
  </a>
  <div class="Canada">Canada</div>
 </div>
 <div class="icon-container">
  <a href="path4.html" target="_blank">
      <img src="https://assets.winni.in/groot/2023/05/11/desktop/uk.png" alt="Icon 4" class="icon">
  </a>
  <div class="UK">UK</div>
 </div>
 <div class="icon-container">
  <a href="path5.html" target="_blank">
      <img src="https://assets.winni.in/groot/2023/05/11/desktop/uae.png" alt="Icon 5" class="icon">
  </a>
  <div class="UAE">UAE</div>
</div>
<div class="icon-container">
  <a href="path6.html" target="_blank">
      <img src="https://assets.winni.in/groot/2023/05/11/desktop/world.png" alt="Icon 6" class="icon">
  </a>
  <div class="Worldwide">Worldwide</div>
</div>
</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="image-content">
  <div class="image-row">
  <img src="https://assets.winni.in/groot/2024/01/22/desktop/service-and-experience-banner-desktop-images.png?w=1570" alt="image" class="image"> 
</div>
</div>
</div>
</html>