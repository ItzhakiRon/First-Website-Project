<%@ Page Title="Pepper Spray" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PepperSpray.aspx.cs" Inherits="OfficialProject.PepperSpray" %>
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
        <h2 class="SlideUp"><b>The Pepper Spray</b></h2>
        <br />
        <br />
        <br />
    </center>
    <table>
        <tr>
            <td>
                <div class="ParagraphLeft">
                    <video width="333" controls>
                        <source src="Videos/PepperSprayVideo.mp4" type="video/mp4" />
                    </video>
                </div>
            </td>
            <td>
                <div class="ParagraphLeft2">
                      <img src="SelfDefense/PepperSprayUse.jpg" style="width: 333px; height:190px">
                </div>
            </td>
        </tr>
    </table>

        <div class="ParagraphDown">
            <p>
                <h4><b>
                    The Pepper spray is an aerosol spray that contains an inflammatory compound called capsaicin.
                </b></h4>
                <h4><b>
                    It causes burning, pain, and tears when it comes into contact with a person's eyes.
                </b></h4>
            </p>
            <br />
            <p>
                <h4><b>
                    The Pepper spray is self-defense spray that instantly overpowers an attacker 
                </b></h4>
                <h4><b>
                    by merely spraying a person with pepper spray from a safe distance.
                </b></h4>
            </p>
            <p>
                <h4><b>
                    the attacker will be knocked to the ground and incapacitated with the
                </b></h4>
                <h4><b>
                     effects lasting for 30 to 45 minutes.
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
