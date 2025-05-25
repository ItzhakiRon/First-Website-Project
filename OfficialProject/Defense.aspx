<%@ Page Title="Self-Defense" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Defense.aspx.cs" Inherits="OfficialProject.Defense" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="StyleDefense.css" />
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
        <h2 class="SlideUp"><b>Defense Weapons Info</b></h2>
        <br />
        <br />
        <br />
    <table>
        <tr>
            <td>
                <div class="card">
                    <div class="item-zoom">
                        <a runat="server" href="~/BrassKnuckles"><img src="SelfDefense/BrassKnucklesProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/BrassKnuckles" style="text-align: center;"><h4>Brass Knuckles</h4></a> 
                    
                </div>
            </td>
            <td>
                <div class="card2">
                    <div class="item-zoom2">
                        <a runat="server" href="~/Nunchaku"><img src="SelfDefense/NunchakuProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/Nunchaku" style="text-align: center;"><h4>Nunchaku</h4></a> 
                    
                </div>
            </td>
            <td>
                <div class="card3">
                    <div class="item-zoom3">
                        <a runat="server" href="~/PepperSpray"><img src="SelfDefense/PepperSprayProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/PepperSpray" style="text-align: center;"><h4>Pepper Spray</h4></a> 
                    </div>
               
            </td>
            <td>
                <div class="card4">
                    <div class="item-zoom4">
                        <a runat="server" href="~/SAPGloves" style="text-align: center;"><img src="SelfDefense/SAPGlovesProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/SAPGloves" style="text-align: center;"><h4>SAP Gloves</h4></a> 
                    
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="card5">
                    <div class="item-zoom5">
                        <a runat="server" href="~/StunGun" style="text-align: center;"><img src="SelfDefense/StunGunProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/StunGun" style="text-align: center;"><h4>Stun Gun</h4></a> 
                    
                </div>
            </td>
            <td>
                <div class="card6">
                    <div class="item-zoom6">
                        <a runat="server" href="~/Taser"><img src="SelfDefense/TaserProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/Taser" style="text-align: center;"><h4>Taser</h4></a> 
                    
                </div>
            </td>
        </tr>

	</table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </center>
</asp:Content>
