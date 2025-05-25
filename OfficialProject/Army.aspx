<%@ Page Title="Military" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Army.aspx.cs" Inherits="OfficialProject.Army" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="StyleArmy.css" />
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
        <h2 class="SlideUp"><b>Military Weapons Info</b></h2>
        <br />
        <br />
        <br />
    <table>
        <tr>
            <td>
                <div class="card">
                    <div class="item-zoom">
                        <a runat="server" href="~/AK"><img src="Military/AKProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/AK" style="text-align: center;"><h4>AK-47</h4></a> 
                    
                </div>
            </td>
            <td>
                <div class="card2">
                    <div class="item-zoom2">
                        <a runat="server" href="~/AWP"><img src="Military/AWPProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/AWP" style="text-align: center;"><h4>AWP</h4></a> 
                    
                </div>
            </td>
            <td>
                <div class="card3">
                    <div class="item-zoom3">
                        <a runat="server" href="~/Crossbow"><img src="Military/CrossbowProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/Crossbow" style="text-align: center;"><h4>Crossbow</h4></a> 
                    </div>
               
            </td>
            <td>
                <div class="card4">
                    <div class="item-zoom4">
                        <a runat="server" href="~/DesertEagle"><img src="Military/DesertEagleProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/DesertEagle" style="text-align: center;"><h4>DesertEagle</h4></a> 
                    
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="card5">
                    <div class="item-zoom5">
                        <a runat="server" href="~/Famas"><img src="Military/FamasProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/Famas" style="text-align: center;"><h4>Famas</h4></a> 
                    
                </div>
            </td>
            <td>
                <div class="card6">
                    <div class="item-zoom6">
                        <a runat="server" href="~/FiveSeven"><img src="Military/FiveSevenProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/FiveSeven" style="text-align: center;"><h4>Five Seven</h4></a> 
                    
                </div>
            </td>
            <td>
                <div class="card7">
                    <div class="item-zoom7">
                        <a runat="server" href="~/Glock"><img src="Military/Glock18Profile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/Glock" style="text-align: center;"><h4>Glock-18</h4></a> 
                    
                </div>
            </td>
            <td>
                <div class="card8">
                    <div class="item-zoom8">
                        <a runat="server" href="~/M16"><img src="Military/M16Profile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/M16" style="text-align: center;"><h4>The M16</h4></a> 
                    
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="card9">
                    <div class="item-zoom9">
                        <a runat="server" href="~/Nova"><img src="Military/NovaProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/Nova" style="text-align: center;"><h4>Nova</h4></a> 
                    
                </div>
            </td>
            <td>
                <div class="card10">
                    <div class="item-zoom10">
                        <a runat="server" href="~/Scar"><img src="Military/Scar20Profile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/Scar" style="text-align: center;"><h4>Scar-20</h4></a> 
                    
                </div>
            </td>
            <td>
                <div class="card11">
                    <div class="item-zoom11">
                        <a runat="server" href="~/USP"><img src="Military/USPProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/USP" style="text-align: center;"><h4>The USP</h4></a> 
                    
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
