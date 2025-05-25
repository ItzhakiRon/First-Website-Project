using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OfficialProject
{
    public partial class Update : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlUpdate = "";
        public string sqlSelect = "";
        public string yearBorn = "";
        public string country = "";
        public string Uname;
        public string UserName, FirstName, LastName, Phone, Email, PassWord;
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



            string fileName = "ProjectDB.mdf";
            Uname = Session["UserName"].ToString();
            //string user = Session["username"].ToString();


            if (Request.Form["submit"] != null)
            {
                if (UserName == "Guest")
                {
                    msg = "<h4><b>You are not a registered user of the system </b></h4>";
                    Response.Redirect("Update.aspx");
                }

                sqlSelect = "SELECT * FROM usersTbl WHERE UserName= '" + Uname + "'";
                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

                //is existing user??
                int length = table.Rows.Count;
                if (length == 0)
                    msg = "<h4><b>You are not a registered user</b></h4>";
                else
                {
                    UserName = table.Rows[0]["UserName"].ToString().Trim();
                    FirstName = table.Rows[0]["FirstName"].ToString().Trim();
                    LastName = table.Rows[0]["LastName"].ToString().Trim();
                    yearBorn = table.Rows[0]["yearBorn"].ToString().Trim();
                    country = table.Rows[0]["country"].ToString().Trim();
                    Phone = table.Rows[0]["Phone"].ToString().Trim();
                    Email = table.Rows[0]["Email"].ToString().Trim();
                    PassWord = table.Rows[0]["PassWord"].ToString().Trim();


                }



                if (this.IsPostBack)
                {
                    UserName = Request.Form["UserName"];
                    FirstName = Request.Form["FirstName"];
                    LastName = Request.Form["LastName"];
                    yearBorn = Request.Form["yearBorn"];
                    country = Request.Form["country"];
                    Phone = Request.Form["Phone"];
                    Email = Request.Form["Email"];
                    PassWord = Request.Form["PassWord"];


                    //בניית שאילתת העדכון
                    sqlUpdate = "UPDATE usersTbl ";
                    sqlUpdate += "SET firstName = '" + FirstName + "', ";
                    sqlUpdate += "lastName = '" + LastName + "', ";
                    sqlUpdate += "yearBorn = '" + yearBorn + "',";
                    sqlUpdate += "Country = '" + country + "',";
                    sqlUpdate += "Phone = '" + Phone + "',";
                    sqlUpdate += "Email = '" + Email + "' , ";
                    sqlUpdate += "password= '" + PassWord + "' ";
                    sqlUpdate += "WHERE UserName = '" + Uname + "'";

                    Helper.DoQuery(fileName, sqlUpdate);
                    msg = "updating successfully ";
                }

            }
        }
    }
}