<%@ Page Title="Boot Knife" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BootKnife.aspx.cs" Inherits="OfficialProject.BootKnife" %>
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
        <h2 class="SlideUp"><b>The Automatic Knife</b></h2>
        <br />
        <br />
        <br />
    </center>
    <table>
        <tr>
            <td>
                <div class="ParagraphLeft">
                    <video width="333" controls>
                        <source src="Videos/BootKnifeVideo.mp4" type="video/mp4" />
                    </video>
                </div>
            </td>
            <td>
                <div class="ParagraphLeft2">
                      <img src="Sharpened/BootKnifeUse.jpg" style="width: 333px; height:190px">
                </div>
            </td>
        </tr>
    </table>

        <div class="ParagraphDown">
            <p>
                <h4><b>
                    The Boot Knife is a small fixed-blade knife that is designed to
                </b></h4>
                <h4><b>
                     be carried in or on a boot and it's also called a "gambler's dagger".
                </b></h4>
            </p>
            <br />
            <p>
                <h4><b>
                    The Boot Knife is worn on a belt or under a pant leg and it generally
                </b></h4>
                <h4><b>
                    comes with a sheath that includes some form of a clip.
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
