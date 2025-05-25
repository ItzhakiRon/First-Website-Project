<%@ Page Title="Brass Knuckles" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BrassKnuckles.aspx.cs" Inherits="OfficialProject.BrassKnuckles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="StyleInfo.css" />
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
        <h2 class="SlideUp"><b>The Brass Knuckles</b></h2>
        <br />
        <br />
        <br />
    </center>
    <table>
        <tr>
            <td>
                <div class="ParagraphLeft">
                    <video width="333" controls>
                        <source src="Videos/BrassKnucklesVideo.mp4" type="video/mp4" />
                    </video>
                </div>
            </td>
            <td>
                <div class="ParagraphLeft2">
                      <img src="SelfDefense/BrassKnucklesUse.jpg" style="width: 333px;">
                </div>
            </td>
        </tr>
    </table>

        <div class="ParagraphDown">
            <p>
                <h4><b>
                    If you want to know about Brass Knuckles,this is the perfect page for you.
                </b></h4>
                <h4><b>
                    Brass Knuckles can add some usefule power to your fist while defending yourself.
                </b></h4>
            </p>
            <br />
            <p>
                <h4><b>
                    Brass Knuckles are "fist load weapons" used hand to hand combat against enemies.
                </b></h4>
                <h4><b>
                    The Brass Knuckles are pieces of metal shaped to fit around the knuckles.
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
</asp:Content>
