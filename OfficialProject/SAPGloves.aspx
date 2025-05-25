<%@ Page Title="SAP Gloves" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SAPGloves.aspx.cs" Inherits="OfficialProject.SAPGloves" %>
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
        <h2 class="SlideUp"><b>The SAP Gloves</b></h2>
        <br />
        <br />
        <br />
    </center>
    <table>
        <tr>
            <td>
                <div class="ParagraphLeft">
                    <video width="333" controls>
                        <source src="Videos/SAPGlovesVideo.mp4" type="video/mp4" />
                    </video>
                </div>
            </td>
            <td>
                <div class="ParagraphLeft2">
                      <img src="SelfDefense/SAPGlovesUse.jpg" style="width: 333px; height:190px">
                </div>
            </td>
        </tr>
    </table>

        <div class="ParagraphDown">
            <p>
                <h4><b>
                    Sap gloves are a form of glove that's meant for hand combat and self-defense. 
                </b></h4>
                <h4><b>
                    Don't be fooled by their ordinary appearance.
                </b></h4>
            </p>
            <br />
            <p>
                <h4><b>
                    The Sap gloves are actually made from tough material with steel
                </b></h4>
                <h4><b>
                    or hard rubber sewn into the knuckles.
                </b></h4>
            </p>
            <p>
                <h4><b>
                    They help to improve your punching power and also protects your hands
                </b></h4>
                <h4><b>
                     and also similar to the effectiveness of brass knuckles.
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
