<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./styles.css">
</head>
<body>
    <nav class="main">
    <nav class="navbar">
        <h1 style="color: #1A98FF ;margin-right: 10px; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">BookMyCinema</h1>
       <img style="margin-right: 10px;" src="./logo-removebg-preview.png" alt="" height="50px" width="50px">
        <div class='input'>
            <ion-icon name="search"></ion-icon>
            <input className='search'
                placeholder='Search for Movies, Events, Plays, Sports, and Activities'></input>
        </div>
        <div class="right-container">
            
            <select name="city" id="city">
                <option value="Tumkuru">Tumkuru</option>
                <option value="Bengaluru">Bengaluru</option>
                <option value="Mysore">Mysore</option>
                <option value="Mangaluru">Mangaluru</option>
                <option value="Belagavi">Belagavi</option>
            </select>
            <button class="signin"
                onclick="document.getElementById('id01').style.display='block'">Signin</button>
                <div class="burg">
                <div></div>
                <div></div>
                <div></div>
            </div>
                </div>

            </div>

            <a href="#" class="btn-customized open-menu">
                <ion-icon name="menu-outline"></ion-icon>
            </a>
        </div>
    </nav>

    <nav class="subnavbar">
        <ul class='navitem'>
            <li><a href='#Movies'>Movies</a></li>
            <li><a href='#Movies'>Stream<span>NEW</span></a></li>
            <li><a href='#Movies'>Events</a></li>
            <li><a href='#Movies'>Plays</a></li>
            <li><a href='#Movies'>Activities</a></li>
          
        </ul>
        <ul class='navitem1'>
            <li><a href='#Movies'>ListYourShow<span>NEW</span></a></li>
            <li><a href='#Movies'>Offers</a></li>
            <li><a href='#Movies'>Gift Cards</a></li>
        </ul>
    </nav>
</nav>
    <div class="slider-container" style="width: max-content;">
        <div class="slider">
          <div class="slide"><img src="./banner/banner3.webp" alt="Slide 1" width="900px" ></div>
          <div class="slide"><img src="./banner/banner4.webp" alt="Slide 2" width="900px"></div>
          <div class="slide"><img src="./banner/banner5.webp" alt="Slide 3" width="900px"></div>
        </div>
      </div>
      <h1 style="color: #1A98FF;">Recommended Movies</h1>
      <br> <br>
      <div class="poster">
        <div>      <a href="./movieinnfo.html">  <img class="card-img" src="./Poster/poster2.jpg" alt="" height="300px" width="200px"></a>
            <h3 style="color: aliceblue;">vikranth ronna</h3>
            <p style="color: aliceblue;">suspence thriller</p>
        </div>
        <div>        <img class="card-img" src="./Poster/poster6.jpg" alt="" height="300px" width="200px">
            <h3 style="color: aliceblue;">sitha raman</h3>
            <p style="color: aliceblue;">Romantic drama</p>
        </div>
        <div>        <img class="card-img" src="./Poster/poster4.jpg" alt="" height="300px" width="200px">
            <h3 style="color: aliceblue;">2018</h3>
            <p style="color: aliceblue;">Survival Drama Film</p>
        </div>
        <div>        <img class="card-img" src="Poster/poster3.jpg" alt="" height="300px" width="200px" >
            <h3 style="color: aliceblue;">Leo</h3>
            <p style="color: aliceblue;"> Action Thriller Film</p>
        </div>
        <div>        <img class="card-img" src="./Poster/Sam bahudur" alt="" height="300px" width="200px">
            <h3 style="color: aliceblue;">Sam bahudur</h3>
            <p style="color: aliceblue;">suspence thriller</p>
        </div>
      </div>
      <br><br>
<img src="./banner/banner2.webp" alt="" width="1250px" height="80px">

      <br> <br>
      <h1 style="color:#1A98FF;">The Best Of Entertainment</h1>
      <br><br>
      <div class="event">
        <img src="./Enter/enter1.webp" alt="" height="180px" width="180px" style="border-radius: 8%;" >
        <img src="./Enter/enter11.webp" alt="" height="180px" width="180px" style="border-radius: 8%;">
        <img src="./Enter/enter3.webp" alt="" height="180px" width="180px" style="border-radius: 8%;">
        <img src="./Enter/enter4.webp" alt="" height="180px" width="180px" style="border-radius: 8%;">
        <img src="./Enter/enter6.webp" alt="" height="180px" width="180px" style="border-radius: 8%;">
        <img src="./Enter/enter5.webp" alt="" height="180px" width="180px" style="border-radius: 8%;">


      </div>
      <br> <br>
      <footer>
         <div>
                <img src="./images/hut.svg" alt="" style="width: 50px; height: 50px; margin-right: 10px;">
                <b>List your show</b> Got a show, event, or good experience? Partner with us and get listed in Book my cinema.
            </div>
        </div>
            <br><br>

            <div class="foot1" >
            <div >
                <img src="./images/customrecare.png" alt="" style="width: 50px; height: 50px; margin-right: 10px;">
               <p> 24/7 Customer care and support</p>
            </div>
            <div>
                <img src="./images/tickets.png" alt="" style="width: 50px; height: 50px; margin-right: 10px;">
              <p>Resend Booking Confirmation</p>
            </div>
            <div >
                <img src="./images/letter.png" alt="" style="width: 50px; height: 50px; margin-right: 10px;">
              <p>Subscribe To The NewsLetter</p>
            </div>
        </div>
        <h4>UpComing Movies</h4>
        <p class="foot2"> Salar | Fighter | Eagle | LalSalam </p>
        <i class="fa-regular fa-user"></i>

    </footer>

      <script>
        document.addEventListener('DOMContentLoaded', function () {
  const slider = document.querySelector('.slider');
  let slideIndex = 0;

  function showSlide(index) {
    const slideWidth = document.querySelector('.slide').offsetWidth;
    slider.style.transform = `translateX(-${slideWidth * index}px)`;
  }

  function nextSlide() {
    slideIndex = (slideIndex + 1) % document.querySelectorAll('.slide').length;
    showSlide(slideIndex);
  }

  function prevSlide() {
    slideIndex = (slideIndex - 1 + document.querySelectorAll('.slide').length) % document.querySelectorAll('.slide').length;
    showSlide(slideIndex);
  }

  setInterval(nextSlide, 3000); // Auto slide every 3 seconds
});

      </script>


</body>
</html>
