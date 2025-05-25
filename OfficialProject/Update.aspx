<%@ Page Title="Update" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="OfficialProject.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="StylePost.css" />
    <script>

            function chkForm() {


                //תקינות שם משתמש - שם משתמש קצר מדי או לא קיים
                var UserName = document.getElementById("UserName").value;
                if (UserName.length < 4) {
                    document.getElementById("mUserName").value = "שם משתמש קצר מדי";
                    document.getElementById("mUserName").style.display = "inline";
                    return false;


                }
                else
                    document.getElementById("mUserName").style.display = "none";


                // chkfirstName()תקינות שם פרטי //
                var FirstName = document.getElementById("FirstName").value;
                if (FirstName.length < 2) {
                    document.getElementById("mFirstName").value = "חייב להכניס שם פרטי לפחות 2 אותיות";
                    document.getElementById("mFirstName").style.display = "inline";
                    return false;
                }
                else
                    document.getElementById("mFirstName").style.display = "none";

                //chklastName תקינות שם משפחה
                var LastName = document.getElementById("LastName").value;
                if (LastName.length < 2) {
                    document.getElementById("mLastName").value = "חייב להכניס שם משפחה לפחות 2 אותיות";
                    document.getElementById("mLastName").style.display = "inline";
                    return false;
                }
                else
                    document.getElementById("mFirstName").style.display = "none";


                //alert("end of email check");


                //---   בדיקת שנת לידה ---
                //--- שנת לידה חייבת להיות מספר ---
                var YearBorn = document.getElementById("YearBorn").value;
                //alert("YearBorn = " + YearBorn);
                var d = new Date();
                var year = d.getFullYear();//השנה הנוכחית
                var msg = "";
                if (isNaN(YearBorn))
                    msg = "שנת לידה חייבת להכיל ספרות בלבד";
                else if (YearBorn < 1900)
                    msg = "שנת לידה חייבת להכיל מספר שלם, 4 ספרתי גדול מ- 1900";
                else if (YearBorn > (year - 5))
                    msg = "צעיר מידי מכדי להירשם";

                if (msg != "") {
                    document.getElementById("mYearBorn").value = msg;
                    document.getElementById("mYearBorn").style.display = "inline";
                    msg = "";
                    return false;
                }
                else
                    document.getElementById("mYearBorn").style.display = "none";


                //--- בדיקת מספר טלפון --- 
                var Phone = document.getElementById("Phone").value;
                //alert("Phone = " + Phone);
                if (Phone == "" || (Phone.length != 7) || (isNaN(Phone))) {

                    document.getElementById("mPhone").value = " מספר הטלפון חייב להיות  7 ספרות ";
                    document.getElementById("mPhone").style.display = "inline";

                    return false;
                }
                else
                    document.getElementById("mPhone").style.display = "none";


                //---- בדיקת תקינות לכתובת דוא'ל ----s
                var email = document.getElementById("email").value;
                //alert("email: " + email);
                var size = email.length;
                //alert("email length is: " + size);
                var atSign = email.indexOf('@');
                //alert("@ at place: " + atSign);
                var dotSign = email.indexOf('.', atSign);
                //alert("dot at place: " + dotSign);
                //alert("dot - at = " + (dotSign - atSign));
                var msg = "";
                if (size < 6)
                    msg = "כתובת דוא'ל קצרה מדי או לא קיימת ";
                else if (atSign == -1)
                    msg = "סימן @ לא קיים בכתובת";
                else if (atSign != email.lastIndexOf('@'))
                    msg = "אסור יותר מ- @ אחד בכתובת דוא'ל ";
                else if (atSign < 2 || email.lastIndexOf('@') == size - 1)
                    msg = "סימן ה-@ אינו יכול להיות במקום ראשון או אחרון ";
                else if (email.indexOf('.') == 0 || email.lastIndexOf('.') == size - 1)
                    msg = "נקודה לא יכולה להיות תו ראשון או אחרון בכתובת ";
                else if (dotSign - atSign <= 1)
                    msg = "נקודה חייבת להיות לפחות 2 תווים אחרי סימן ה-@";
                else if (!isQuot(email))
                    msg = "כתובת דוא'ל לא יכולה להכיל גרש או גרשיים";
                else if (!isValidString(email))
                    msg = "כתובת דוא'ל לא יכולה להכיל תווים אסורים";
                else if (!isHebres(email))
                    msg = "כתובת דוא'ל לא יכולה להכיל עברית";

                if (msg != "") {
                    document.getElementById("mEmail").value = msg;
                    document.getElementById("mEmail").style.display = "inline";
                    return false;
                }
                else
                    document.getElementById("mEmail").style.display = "none";


                //--- בדיקה עבור סיסמא --
                var PassWord1 = document.getElementById("PassWord").value;
                //alert("pw1 = " + pw1);
                var PassWord2 = document.getElementById("SecPassWord").value;
                //alert("pw2 = " + pw2);
                if (PassWord1.length < 6 || PassWord1.length > 8) {  //6 דורשים הכנסה של סיסמא בעלת אורך מינימלי
                    msg = " סיסמא חייבת להיות בין 6 - 8 תווים ";

                    document.getElementById("mPassWord").value = msg;
                    document.getElementById("mPassWord").style.display = "inline";
                    msg = "";
                    return false;
                }
                else
                    document.getElementById("mPassWord").style.display = "none";


                //--- בדיקה האם הסיסמא שווה לסיסמת האימות ---
                if (PassWord1 != PassWord2) {
                    msg = " הסיסמא וסיסמת האימות אינם זהות ";

                    //alert(msg);
                    document.getElementById("mSecPassWord").value = msg;
                    document.getElementById("mSecPassWord").style.display = "inline";
                    msg = "";
                    return false;
                }
                else
                    document.getElementById("mSecPassWord").style.display = "none";




                alert("הטופס תקין");
                return true;

            }

            //--- אם מכיל גרש או גרשיים - לא תקין ---            
            function isQuot(mail) {
                var quot = '\"', quot1 = "\'";
                if (mail.indexOf(quot) != -1 || mail.indexOf(quot1) != -1)
                    return false;
                return true;
            }

            //--- מכיל תווים אסורים ---
            function isValidString(mail) {
                var badChr = "$%^&*()-! []{}<>?";
                var len = badChr.length;

                var i = 0, pos, ch;
                while (i < len) {
                    ch = badChr.charAt(i);
                    pos = mail.indexOf(ch);
                    if (pos != -1)
                        return false;
                    i++;
                }
                return true;
            }

            //--- מכיל תווים בעברית ---
            function isHebres(mail) {
                var badChr = "אבגדהוזחטיכךלמםנןסעפףצץקרשת";
                var len = badChr.length;

                var i = 0, pos, ch;
                while (i < len) {
                    ch = badChr.charAt(i);
                    pos = mail.indexOf(ch);
                    if (pos != -1)
                        return false;
                    i++;
                }
                return true;
            }
    </script>
    <center>
        
        <br />
        <h2 class="SlideUp"><b>User update form:</b></h2>
        <br />
        <br />
        <div class="ParagraphLeft">
            <div class="back">
        <table>
            <tr>
                <td><h4><b> User Name:</b></h4></td>   
                <td><input type="text" Id="UserName" name="UserName" disabled ="disabled" value ="<% = Uname %>"  maxlength="15" required /> </td>
                <td><input type="text" Id="mUserName" size="30"
                    style="display:none; background-color:silver; font-weight:bold;" disabled="disabled" />
                </td>
            </tr>

             <tr>
                <td><h4><b> First Name:</b></h4></td>
                <td><input type="text" Id="FirstName" name="FirstName"  maxlength="10" 
                    pattern=".{2,10}"
                    oninput="this.value=this.value.replace(/[^A-Za-z\s]/g,'');" 
                    required/></td>

                  <td><input type="text" Id="mFirstName" size="30"
                    style="display:none; background-color:silver; font-weight:bold;" disabled="disabled" />
                </td>
            </tr>

             <tr>
                <td><h4><b>Last Name:</b></h4></td>
                <td><input type="text" Id="LastName" name="LastName" maxlength="15" 
                    pattern=".{2,10}"
                    oninput="this.value=this.value.replace(/[^A-Za-z\s]/g,'');" 
                    required /></td>

                  <td><input type="text" Id="mLastName" size="30"
                    style="display:none; background-color:silver; font-weight:bold;" disabled="disabled" />
                </td>
            </tr>

            <tr>
                <td><h4><b>Year Born :</b></h4> </td>
                <td>  
                    <select name="yearBorn" id="yearBorn" required>
                        <% =yearBorn %>
                    </select>
                   
                </td>
                   <td> <input type="text"; id="mYearBorn" size="30"
                        style="display:none; background-color:silver; font-weight:bold;" disabled="disabled" />
                   </td>
            </tr>

            <tr>
                <td><h4><b>Country:</b></h4></td>
                <td>  
                    <select name="country" id="country" required>
                        <% =country %>
                    </select>
                   
                </td>
                <td><input type="text" Id="mCountry" size="30"
                    style="display:none; background-color:silver; font-weight:bold;" disabled="disabled" />
                 </td>              
            </tr>

            <tr>
                    <td><h4><b>Phone Number:</b></h4></td>
                    <td>
                        <input type="text" id="phone" name="phone" minlength="10" 
                           pattern="[0]{1}[5]{1}[0-9]{1}[0-9]{7}" 
                            oninput="this.value=this.value.replace(/[^0-9\s]/g,'');" 
                            onKeyPress="if(this.value.length==10) return false;" 
                            required /> 

                        <input type="text" id="mPhone" size="300" 
                            style="display:none; background-color:silver; font-weight:bold;"
                            disabled="disabled" />
                    </td>
                </tr>

            <tr>
                <td><h4><b>Email Adress:</b></h4></td>
                <td><input type="text" Id="Email" name="Email" maxlength="30" 
                    pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{3,}$" 
                    oninput="this.value=this.value.replace(/[^A-Za-z0-9.@\s]/g,'');" 
                    maxlength="30"
                    required /> 

                  <td><input type="text" Id="mEmail" size="50"
                    style="display:none; background-color:silver; font-weight:bold;" disabled="disabled" />
                </td>
            </tr>

            <tr>
                <td><h4><b>PassWord:</b></h4></td>
                <td><input type="password" Id="PassWord" name="PassWord" minlength="6"  maxlength="15" required /> </td>
                <td><input type="password" Id="mPassWord" size="30"
                    style="display:none; background-color:silver; font-weight:bold;" disabled="disabled" />
                 </td>              
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <input type="reset" class="button-style" name="reset" value="     Erase      " />
                    <input type="submit" class="button-style"  name="submit"  value="     Send     "/>
                </td>
            </tr>
        </table>
        </div>
        </div>
        
        <br />

    <h4><b><%=sqlSelect %></b></h4>

    <h5 style="color:black;"><b><%=sqlUpdate %></b></h5>

    <h4><b><%=msg %></b></h4>
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
