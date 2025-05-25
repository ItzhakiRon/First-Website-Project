<%@ Page Title="Nunchaku" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Nunchaku.aspx.cs" Inherits="OfficialProject.Nunchaku" %>
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
        <h2 class="SlideUp"><b>The Nunchaku</b></h2>
        <br />
        <br />
        <br />
    </center>
    <table>
        <tr>
            <td>
                <div class="ParagraphLeft">
                    <video width="333" controls>
                        <source src="Videos/NunchakuVideo.mp4" type="video/mp4" />
                    </video>
                </div>
            </td>
            <td>
                <div class="ParagraphLeft2">
                      <img src="SelfDefense/NunchakuUse.jpg" style="width: 333px; height:190px">
                </div>
            </td>
        </tr>
    </table>

        <div class="ParagraphDown">
            <p>
                <h4><b>
                    The Nunchaku is a traditional martial arts weapon consisting of two sticks, 
                </b></h4>
                <h4><b>
                    connected to each other at their ends by a short metal chain or a rope.
                </b></h4>
            </p>
            <br />
            <p>
                <h4><b>
                    Because of the Nunchaku's innocent appearance, It could easily be mistaken 
                </b></h4>
                <h4><b>
                    for a toy or harmless bundle of sticks. In a defensive situation,
                </b></h4>

                <h4><b>
                    however, it could be used to strike, block, hit, twist and punch.
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
