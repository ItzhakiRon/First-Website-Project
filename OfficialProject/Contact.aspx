<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OfficialProject.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="StyleContact.css" />
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
    <br />
    <br />
    <br />
    <center>
        <h2 class="SlideUp"><b>Need Help?</b></h2>
    </center>
    <br />
    <br />
    <br />
    <div class="ParagraphLeft">
        <p>
            <img src="Pictures/ProblemLogo.jpg" style="height:50px; width:100px" />
            <h4>
                <b>
                In our website "Guns & Stuff",our visitors rarely have problems while
                browsing our website.
                </b>
            </h4>
        </p>
        <p>
            <h4>
                <b>
                So if you have problems while browsing our website,you can contact
                with out admintor:
                </b>
            </h4>
        </p>
    </div>
    <br />
    <br />
    <br />
    <div class="ParagraphDown">
        <p>
            <h4>
                <b>
                <img src="Pictures/PhoneLogo.jpg" style="height:50px; width:50px" />
                    <a href="tel:+054-933-9040" style="color:black;">
                    054-933-9040</a>
                </b>
            </h4>
        </p>
        <p>
            <h4>
                <b>
                Bet-Eliezer,Hadera, Israel
                </b>
            </h4>
        </p>
    </div>
    <br />
    <br />
    <br />
    <div class="ParagraphDown">
        
        <p>
            <h4>
                <b>
                <img src="Pictures/GmailLogo.png" style="height:50px; width:70px" />
                <a href="mailto:ron.itzhaki@tihon-beteliezer.org.il" style="color:black;">
                    ron.itzhaki@tihon-beteliezer.org.il</a>
                </b>
            </h4>
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

</asp:Content>
