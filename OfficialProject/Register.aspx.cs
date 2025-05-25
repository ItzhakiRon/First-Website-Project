using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;              // very important
using System.Web.DynamicData;

namespace OfficialProject
{
    public partial class Register : System.Web.UI.Page
    {
        public string st = "";
        public string country = "";
        public string yearBorn = "";
        public string msg = "";      //מחזרזת טקסט שתשמור הודעה למשתמש אם הכל תקין יחסית לשם שתמש נכנס
        public string sqlMsg = ""; //מחרוזת שתכיל את תוכן השאילתה
        protected void Page_Load(object sender, EventArgs e)
        {
            string myTime = DateTime.Now.ToString();
            int year = DateTime.Now.Year;
            int from = year - 60;
            int to = year - 10;

            yearBorn = "<option value=''disabled selected hidden>Year</option>";
            for (int y = from; y < to; y++)
            {
                yearBorn += "<option value='" + y + "'>" + y + "</option>";
            }

            country = "<option value=''disabled selected hidden>Choose Country</option>";

            country += "<option value='Canada'>Canada</option>";
            country += "<option value='Germany'>Germany</option>";
            country += "<option value='France'>France</option>";
            country += "<option value='China'>China</option>";
            country += "<option value='Russia '>Russia</option>";
            country += "<option value='Spain'>Spain</option>";
            country += "<option value='Israel'>Israel</option>";
            country += "<option value='USA'>USA</option>";
            country += "<option value='Italy'>Italy</option>";
            country += "<option value='Turkey'>Turkey</option>";
            country += "<option value='Greece'>Greece</option>";
            country += "<option value='Mexico'>Mexico</option>";
            country += "<option value='Poland'>Poland</option>";
            country += "<option value='Portugal'>Portugal</option>";
            country += "<option value='India'>India</option>";
            country += "<option value='Japan'>Japan</option>";



            if (Request.Form["submit"] != null)
            {
                st += "<table dir = 'ltr' border='5'>";
                st += "<tr><th colspan='2'>Details Received: </th></tr>";

                string UserName = Request.Form["UserName"];
                string FirstName = Request.Form["FirstName"];
                string LastName = Request.Form["LastName"];
                string YearBorn = Request.Form["YearBorn"];
                string Country = Request.Form["Country"];
                string Phone = Request.Form["Phone"];
                string Email = Request.Form["Email"];
                string PassWord = Request.Form["PassWord"];


                st += "<tr><td>User Name: </td><td>" + UserName + "</td></tr>";
                st += "<tr><td>First Name: </td><td>" + FirstName + "</td></tr>";
                st += "<tr><td>Last Name: </td><td>" + LastName + "</td></tr>";
                st += "<tr><td>Year Born: </td><td>" + YearBorn + "</td></tr>";
                st += "<tr><td>Country: </td><td>" + Country + "</td></tr>";
                st += "<tr><td>Phone Number: </td><td>" + Phone + "</td></tr>";
                st += "<tr><td>Email: </td><td>" + Email + "</td></tr>";
                st += "<tr><td>Password </td><td>" + PassWord + "</td></tr>";
                st += "</table>";


                string fileName = "ProjectDB.mdf";
                string tableName = "usersTbl";
                //בדיקה האם משתמש קיים 
                string sqlSelect = "SELECT * FROM " + tableName + " WHERE UserName='" + UserName + "'";
                //sqlMsg = sqlSelect;

                if (Helper.IsExist(fileName, sqlSelect))
                {
                    sqlMsg = sqlSelect;
                    st = "<h4><b><u>User name has been taken... Try another one</u></b></h4>";
                }

                else
                {
                    string sqlInsert = "INSERT INTO " + tableName; // "INSERT INTO usersTbl";
                    sqlInsert += " VALUES ('" + UserName + "' , N'" + FirstName + "' , N'" + LastName + "' , '";
                    sqlInsert += YearBorn + "'  , '" + Country + "' , " + Phone + " , '";
                    sqlInsert += Email + "' , '" + PassWord + "' );";

                    sqlMsg = sqlInsert;
                    Helper.DoQuery(fileName, sqlInsert);
                    msg = "Success inserting user to the table";

                    Session["UserName"] = UserName;
                    Session["UserFirstName"] = FirstName;
                }

            }
        }
    }
}