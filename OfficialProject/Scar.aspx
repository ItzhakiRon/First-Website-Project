<%@ Page Title="Scar-20" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Scar.aspx.cs" Inherits="OfficialProject.Scar" %>
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
        <h2 class="SlideUp"><b>The Scar-20</b></h2>
        <br />
        <br />
        <br />
    </center>
    <table>
        <tr>
            <td>
                <div class="ParagraphLeft">
                    <video width="333" controls>
                        <source src="Videos/Scar20Video.mp4" type="video/mp4" />
                    </video>
                </div>
            </td>
            <td>
                <div class="ParagraphLeft2">
                      <img src="Military/Scar20Use.jpg" style="width: 333px; height:190px">
                </div>
            </td>
        </tr>
    </table>

        <div class="ParagraphDown">
            <p>
                <h4><b>
                    The FN SCAR 20S Precision Rifle chambered in 7.62×51mm NATO was introduced in 2019.
                </b></h4>
                <h4><b>
                    It is a semi-automatic only civilian version of the FN Mk 20 SSR.
                </b></h4>
            </p>
            <br />
            <p>
                <h4><b>
                    In 2020 the FN SCAR 20S 6.5CM variant was announced chambered in 6.5mm Creedmoor. 
                </b></h4>
                <h4><b>
                    This chambering has been selected by USSOCOM for long-range use.
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
