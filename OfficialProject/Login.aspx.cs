using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

namespace OfficialProject
{
    public partial class Login : System.Web.UI.Page
    {
        public string msg;
        public string sqlLogin;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string UserName = Request.Form["UserName"];
                string PassWord = Request.Form["PassWord"];


                string fileName = "ProjectDB.mdf";
                string tableName = "usersTbl";



                sqlLogin = "SELECT * FROM " + tableName + " WHERE UserName = '" + UserName + "' AND PassWord = '" + PassWord + "' ";


                DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);


                int length = table.Rows.Count;

                if (length == 0)
                {
                    msg = "<div style ='text-align: center;'>";
                    msg += "<h4><b>User Not Found</b></h4>";
                    msg += "<a href='Register.aspx' style='font-size:25px;color:black;'>[Register]</a>";
                    msg += "</div>";
                }

                else
                {
                    Session["UserName"] = table.Rows[0]["UserName"];
                    Session["UserFirstName"] = table.Rows[0]["FirstName"];
                    Response.Redirect("Default.aspx");
                }

            }
        }
    }
}