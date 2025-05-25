<%@ Page Title="Sharpened" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sharp.aspx.cs" Inherits="OfficialProject.Sharp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="StyleSharp.css" />
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
        <h2 class="SlideUp"><b>Sharp Weapons Info</b></h2>
        <br />
        <br />
        <br />
    <table>
        <tr>
            <td>
                <div class="card">
                    <div class="item-zoom">
                        <a runat="server" href="~/AutomaticKnife"><img src="Sharpened/AutomaticKnifeProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/AutomaticKnife" style="text-align: center;"><h4>Automatic Knife</h4></a> 
                    
                </div>
            </td>
            <td>
                <div class="card2">
                    <div class="item-zoom2">
                        <a runat="server" href="~/BootKnife"><img src="Sharpened/BootKnifeProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/BootKnife" style="text-align: center;"><h4>Boot Knife</h4></a> 
                    
                </div>
            </td>
            <td>
                <div class="card3">
                    <div class="item-zoom3">
                        <a runat="server" href="~/ButterflyKnife"><img src="Sharpened/ButterflyKnifeProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/ButterflyKnife" style="text-align: center;"><h4>Butterfly Knife</h4></a> 
                    </div>
               
            </td>
            <td>
                <div class="card4">
                    <div class="item-zoom4">
                        <a runat="server" href="~/HuntingKnife"><img src="Sharpened/HuntingKnifeProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/HuntingKnife" style="text-align: center;"><h4>Hunting Knife</h4></a> 
                    
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="card5">
                    <div class="item-zoom5">
                        <a runat="server" href="~/PocketKnife"><img src="Sharpened/PocketKnifeProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/PocketKnife" style="text-align: center;"><h4>Pocket Knife</h4></a> 
                    
                </div>
            </td>
            <td>
                <div class="card6">
                    <div class="item-zoom6">
                        <a runat="server" href="~/PushDaggerKnife"><img src="Sharpened/PushDaggerKnifeProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/PushDaggerKnife" style="text-align: center;"><h4>Push Dagger Knife</h4></a> 
                    
                </div>
            </td>
            <td>
                <div class="card7">
                    <div class="item-zoom7">
                        <a runat="server" href="~/Sword"><img src="Sharpened/SwordProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/Sword" style="text-align: center;"><h4>Sword</h4></a> 
                    
                </div>
            </td>
            <td>
                <div class="card8">
                    <div class="item-zoom8">
                        <a runat="server" href="~/ThrowingKnife"><img src="Sharpened/ThrowingKnifeProfile.jpg" alt="Avatar" style="width:100%; height:150px"></a>
                    </div>
                    
                        <a runat="server" href="~/ThrowingKnife" style="text-align: center;"><h4>Throwing Knife</h4></a> 
                    
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
