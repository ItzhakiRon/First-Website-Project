<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OfficialProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="StylePost.css" />
    <center>
    <form name = "loginFrm" id = "loginFrm" method = "post">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <h2 class="SlideUp"><b>Login</b></h2>
        <br />
        <br />
        <div class="ParagraphLeft">
            <div class="backlogin">
        <table id = "table1">
            <tr>
                <td><h4><b> User Name:</b></h4></td>
                <td><input type = "text" name = "UserName" id = "UserName" maxlength="15"
                    oninput="this.value=this.value.replace(/[^A-Za-z0-9\s]/g,'');" 
                    onkeypress="return event.charCode != 32" required/></td>
            </tr>
            <tr>
                <td><h4><b>PassWord:</b></h4></td>
                <td><input type = "password" name = "PassWord" id = "PassWord" maxlength="15" required /></td>
            </tr>
            <tr>
                <td colspan = "2" align = "center">
                    <input type="reset" class="button-style" name="reset" value="     Erase      " />
                    <input type="submit" class="button-style"  name="submit"  value="     Login     "/>
                </td>
            </tr>
        </table>
                </div>
            </div>
        <% = msg %>
            
        
       
        
     </form>
        </center>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
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
