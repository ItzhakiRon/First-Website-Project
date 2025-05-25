using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OfficialProject
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        public string msg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string Admin = Request.Form["Admin"];
                string AdminPassWord = Request.Form["AdminPassWord"];

                string fileName = "ProjectDB.mdf";
                string tableName = "managerTbl";

                string sqlLogin = "SELECT * FROM " + tableName + " WHERE Admin = '" + Admin + "' AND AdminPassWord = '" + AdminPassWord + "'";

                DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);

                int length = table.Rows.Count;
                if (length == 0)
                {
                    msg = "<div style ='text-align: center;'>";
                    msg += "<h4><b>This User Is not a Manager</b></h4>";
                    msg += "<a href='Default.aspx' style='font-size:25px;color:black;'>[Back to Home Page]</a>";
                    msg += "</div>";
                }
                else
                {
                    Session["userFName"] = "Manager";
                    Session["Admin"] = "yes";
                    Response.Redirect("Default.aspx");
                }
            }
        }
    }
}