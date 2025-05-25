using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OfficialProject
{
    public partial class DeleteRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "ProjectDB.mdf";
            string UserName = Request.QueryString["UserName"].ToString();
            string sqlDelete = "DELETE FROM usersTbl WHERE UserName='" + UserName + "'";
            Helper.DoQuery(fileName, sqlDelete);
            Response.Redirect("DeleteUser.aspx");
        }
    }
}