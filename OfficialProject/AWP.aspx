<%@ Page Title="AWP" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AWP.aspx.cs" Inherits="OfficialProject.AWP" %>
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
        <h2 class="SlideUp"><b>The Arctic Warfare Police</b></h2>
        <br />
        <br />
        <br />
    </center>
    <table>
        <tr>
            <td>
                <div class="ParagraphLeft">
                    <video width="333" controls>
                        <source src="Videos/AWPVideo.mp4" type="video/mp4" />
                    </video>
                </div>
            </td>
            <td>
                <div class="ParagraphLeft2">
                      <img src="Military/AWPUse.jpg" style="width: 333px; height:190px">
                </div>
            </td>
        </tr>
    </table>

        <div class="ParagraphDown">
            <p>
                <h4><b>
                    The Arctic Warfare Police (AWP) is the law enforcement variant
                </b></h4>
                <h4><b>
                    of the series, commonly chambered for 7.62×51mm NATO. 
                </b></h4>
            </p>
            <br />
            <p>
                <h4><b>
                    The Arctic Warfare Police also designed and manufactured by the
                </b></h4>
                <h4><b>
                    British company Accuracy International.
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
