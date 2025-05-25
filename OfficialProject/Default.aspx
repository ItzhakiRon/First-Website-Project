<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OfficialProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script>
        //השעון//
        function showTime() {
            var date = new Date();
            var h = date.getHours();
            var m = date.getMinutes();
            var s = date.getSeconds();
            var session = "AM";

            if (h == 0) {
                h = 12;
            }

            if (h > 12) {
                h = h - 12;
                session = "PM";
            }

            h = (h < 10) ? "0" + h : h;
            m = (m < 10) ? "0" + m : m;
            s = (s < 10) ? "0" + s : s;

            var time = h + ":" + m + ":" + s + " " + session;
            document.getElementById("clock").innerText = time;
            document.getElementById("clock").textContent = time;

            setTimeout(showTime, 1000);

        }
        
         

        /*
        let slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
             showSlides(slideIndex += n);
        }

     function currentSlide(n) {
             showSlides(slideIndex = n);
     }

        function showSlides(n) {

           let i;
           let slides = document.getElementsByClassName("slides");
           let dots = document.getElementsByClassName("radio");
           if (n > slides.length) {slideIndex = 1}
           if (n < 1) {slideIndex = slides.length}
           for (i = 0; i < slides.length; i++) {
             slides[i].style.display = "none";
           }
           for (i = 0; i < dots.length; i++) {
             dots[i].className = dots[i].className.replace(" active", "");
           }
             slides[slideIndex-1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 2000); // Change image every 2 seconds
        }*/ 
    </script>
    <br />
    <br />
    <br />
    <center>
        <h2 class="SlideUp"><b>Welcome to Guns & Stuff</b></h2>
        <br />
        <br />
        <br />
        <div class="ParagraphLeft">
            <p>
                <h4><b>
                    Welcome to the official webiste "Guns & Stuff",the official website that
                    helps people protect themselves with the necessary equipment.
                </b></h4>
            </p>
            <p>
                <h4><b>
                    In this website,We will give you any information about any type of weapon which
                    you will need to help you protect yourself in any situation.
                </b></h4>
            </p>
        </div>
        <br />
        <br />
        <br />

        <div class="ParagraphRight">
            <p>
                <h4><b>
                    "Guns & Stuff" offers any information about any type of weapon like:handguns,
                    revolvers,shotguns,rifles,assault rifles,machine guns and more.
                </b></h4>
            </p>

            <p>
                <h4><b>
                    "Guns & Stuff" aldo offers information about self-defense and sharpened weapons
                    like:pepper spray,tasers,stun guns,knifes,swords,daggers nad more.
                </b></h4>
            </p>
        </div>
        <br />
        <br />
        <br />
        <div class="ParagraphDown">
            <p>
                <h4><b>
                    All the information in the website "Guns & Stuff" is completely free and available
                    for all the visitors in this website who is interested about weapons and other stuff.
                </b></h4>
            </p>
            <p>
                <h4><b>
                    The main purpose of "Guns & Stuff" is to support any person who wants knowledge
                    about the complicated subject called weapons.
                </b></h4>
            </p>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <h2 class="SlideUp"><b>Weapons in our life</b></h2>
        <br />
        <br />
        <div class="back">
            <div class="slider">
                <div class="slides">

                    <input type="radio" name="radio-btn" id="radio1" />
                    <input type="radio" name="radio-btn" id="radio2" />
                    <input type="radio" name="radio-btn" id="radio3" />
                    <input type="radio" name="radio-btn" id="radio4" />
                    <input type="radio" name="radio-btn" id="radio5" />
                    <input type="radio" name="radio-btn" id="radio6" />

                    <div class="slide first">
                        <img src="Pictures/Weapon1.jpg" alt="" />
                    </div>
                    <div class="slide">
                        <img src="Pictures/Weapon2.jpg" alt="" />
                    </div>
                    <div class="slide">
                        <img src="Pictures/Weapon3.jpg" alt="" />
                    </div>
                    <div class="slide">
                        <img src="Pictures/Weapon4.jpg" alt="" />
                    </div>
                    <div class="slide">
                        <img src="Pictures/Weapon5.jpg" alt="" />
                    </div>
                    <div class="slide">
                        <img src="Pictures/Weapon6.jpg" alt="" />
                    </div>
             
                    <div class="navigation-auto">
                        <div class="auto-btn1"></div>
                        <div class="auto-btn2"></div>
                        <div class="auto-btn3"></div>
                        <div class="auto-btn4"></div>
                        <div class="auto-btn5"></div>
                        <div class="auto-btn6"></div>
                    </div>

                </div>

                <div class="navigation-manual">
                    <label for="radio1" class="manual-btn"></label>
                    <label for="radio2" class="manual-btn"></label>
                    <label for="radio3" class="manual-btn"></label>
                    <label for="radio4" class="manual-btn"></label>
                    <label for="radio5" class="manual-btn"></label>
                    <label for="radio6" class="manual-btn"></label>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <h2 class="SlideUp"><b>Weapons Categories</b></h2>
        <br />
        <br />
        <br />
        <br />
        <div class="Container">
            <div class="gallery">
                <img src="Pictures/HandGun.jpg" />
                <div class="desc"><h1>Hand Guns</h1></div>
            </div>
            <div class="gallery">
                <img src="Pictures/AssaultRifles.jpg" />
                <div class="desc"><h1>Assault Rifles</h1></div>
            </div>
            <div class="gallery">
                <img src="Pictures/AWP.jpg" />
                <div class="desc"><h1>Snipers</h1></div>
            </div>
        </div>
        <br />
        <div class="Container">
            <div class="gallery">
                <img src="Pictures/MilitaryKnife.jpg" />
                <div class="desc"><h1>Knifes</h1></div>
            </div>
            <div class="gallery">
                <img src="Pictures/Sword.jpg" />
                <div class="desc"><h1>Swords</h1></div>
            </div>
            <div class="gallery">
                <img src="Pictures/Crossbow.jpg" />
                <div class="desc"><h1>Crossbows</h1></div>
            </div>
        </div>
        <br />
        <div class="Container">
            <div class="gallery">
                <img src="Pictures/PepperSpray.jpg" />
                <div class="desc"><h1>Pepper Sprays</h1></div>
            </div>
            <div class="gallery">
                <img src="Pictures/Tasers.jpg" />
                <div class="desc"><h1>Tasers</h1></div>
            </div>
            <div class="gallery">
                <img src="Pictures/StunGun.jpg" />
                <div class="desc"><h1>Stun Guns</h1></div>
            </div>
        </div>
        <br />
        <br />
        <br />
    </center>
</asp:Content>
