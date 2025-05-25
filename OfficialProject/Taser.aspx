<%@ Page Title="Taser" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Taser.aspx.cs" Inherits="OfficialProject.Taser" %>
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
        <h2 class="SlideUp"><b>The Taser</b></h2>
        <br />
        <br />
        <br />
    </center>
    <table>
        <tr>
            <td>
                <div class="ParagraphLeft">
                    <video width="333" controls>
                        <source src="Videos/TaserVideo.mp4" type="video/mp4" />
                    </video>
                </div>
            </td>
            <td>
                <div class="ParagraphLeft2">
                      <img src="SelfDefense/TaserUse.jpg" style="width: 333px; height:190px">
                </div>
            </td>
        </tr>
    </table>

        <div class="ParagraphDown">
            <p>
                <h4><b>
                    The Taser ifan electroshock weapon used to incapacitate people
                </b></h4>
                <h4><b>
                    allowing them to be approached and handled in an unresisting and thus safe manner.
                </b></h4>
            </p>
            <br />
            <p>
                <h4><b>
                    The Taser is a legal hand-held, battery operated, electronic shooting
                </b></h4>
                <h4><b>
                    self-defense device that puts out a series of high voltage pulsing shocks.
                </b></h4>
            </p>
            <p>
                <h4><b>
                    While firing, compressed nitrogen shoots out two needlepointed probes at
                </b></h4>
                <h4><b>
                    an attacker 15 feet at a speed of 135 feet per second.
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
