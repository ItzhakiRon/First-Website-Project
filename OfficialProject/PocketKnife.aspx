<%@ Page Title="Pocket Knife" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PocketKnife.aspx.cs" Inherits="OfficialProject.PocketKnife" %>
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
        <h2 class="SlideUp"><b>The Pocket Knife</b></h2>
        <br />
        <br />
        <br />
    </center>
    <table>
        <tr>
            <td>
                <div class="ParagraphLeft">
                    <video width="333" controls>
                        <source src="Videos/PocketKnifeVideo.mp4" type="video/mp4" />
                    </video>
                </div>
            </td>
            <td>
                <div class="ParagraphLeft2">
                      <img src="Sharpened/PocketKnifeUse.jpg" style="width: 333px; height:190px">
                </div>
            </td>
        </tr>
    </table>

        <div class="ParagraphDown">
            <p>
                <h4><b>
                    The Pocket Knife is a foldable knife with one or more blades
                </b></h4>
                <h4><b>
                    that fold into the handle.They are also known as jackknives
                </b></h4>
                <h4><b>
                    or may be referred to as a penknife.
                </b></h4>
            </p>
            <br />
            <p>
                <h4><b>
                    The Pocket Knife blad generally range from 5 to 15 centimetres (2 to 6 inches)
                </b></h4>
                <h4><b>
                     in length, and are usually made of steel and have a plastic, metal, or wooden handle or holder.
                </b></h4>
            </p>
            <p>
                <h4><b>
                    The Pocket Knife  has multiple uses, and can be used for opening items, 
                </b></h4>
                <h4><b>
                     cutting items or for self defence, among others.
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
