using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OfficialProject
{
    public partial class SiteMaster : MasterPage
    {
        public string myTime;

        public string loginMsg;
        public string Menu;

        public string menuStr = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            myTime = DateTime.Now.ToString();

            //--- מחרוזת הברכה ---

            if (Session["UserName"] != "Guest")
            {
                loginMsg = "<li><h4><b>Welcome ";
                loginMsg += Session["UserName"].ToString();
                loginMsg += "</b></h4></li>";
            }

            else if (Session["Admin"] != "no")
            {
                loginMsg = "<li><h4><b>Welcome ";
                loginMsg += Session["userFName"].ToString();
                loginMsg += "</b></h4></li>";
            }
            else
            {
                loginMsg = "<li><h4><b>Hello ";
                loginMsg += Session["UserName"].ToString();
                loginMsg += "</b></h4></li>";
            }



            /*תפריט לאורח
            string menu = " [<a href = 'Default.aspx'>דף הבית</a>]";


            תוספת למשתמש רשום
            string regUser = " [<a href = 'Game.aspx'>משחק החיים</a>]";
            */
            //תפריט ראשי מותאם לסוג המשתמש//
            if (Session["UserName"] == "Guest" && Session["Admin"] == "no")
            {
                Menu += "<a href = 'Login.aspx'>Login</a>";
                Menu += "<a href = 'Register.aspx'>Register</a>";
                Menu += "<a href = 'LoginAdmin.aspx'>Admin</a>";
            }

            else if (Session["Admin"] == "yes")
            {
                Menu += "<a href = 'LogOut.aspx'>LogOut</a>";

            }
            else
            {
                Menu += "<a href = 'Update.aspx'>Update</a>";
                Menu += "<a href = 'LogOut.aspx'>LogOut</a>";
            }
        }
    }
}