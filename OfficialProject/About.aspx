<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="OfficialProject.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="StyleAbout.css" />
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
    </script>
    <body onload="showTime()">
    <br />
    <br />
    <br />
    <center>
        <h2 class="SlideUp"><b>About Us</b></h2>
        <br />
        <br />
        <br />
        <div class="ParagraphDown">
            <p>
                <h4><b>
                    This website was created originally for helping people who want basic information
                    in common weapons and then developed over
                </b></h4>
            </p>
            <p>
                <h4><b>
                    the years with new information about new weapons which were created over the years
                    and helped more people about new weapons that
                </b></h4>
            </p>
        </div>
        <br />
        <div class="ParagraphDown2">
            <p>
                <h4><b>
                    they do not know about them but in the end the main The main purpose of "Guns & Stuff" is to support any person who wants
                </b></h4>
            </p>
            <p>
                <h4><b>
                    knowledge about weapons no matter if they are old or new.
                </b></h4>
            </p>
        </div>
            <br />
            <div class="ParagraphDown3">
                <p>
                    <h4><b>
                        "Guns & Stuff" always open in every day,every week,every month no matter what is the reason 
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
            <h2 class="SlideUp"><b>Types Of Weapons</b></h2>
            <br />
            <br />

            <div class="back">
                <div class="Container">
                <video width="570" controls>
                        <source src="Videos/TypesOfWeapons.mp4" type="video/mp4" />
                    </video>
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />
            
</center>
       </body>
</asp:Content>
