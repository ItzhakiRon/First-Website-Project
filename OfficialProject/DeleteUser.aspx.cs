using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

namespace OfficialProject
{
    public partial class DeleteUser : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlDelete = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "ProjectDB.mdf";
            string tableName = "usersTbl";

            string sqlSelect = "SELECT * FROM " + tableName;
            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

            string userToDelete = "";
            int length = table.Rows.Count;
            if (length == 0)
                msg = "No Members";
            else
            {
                st += "<thead>";
                st += "<tr>";
                st += "<th>User Name</th>";
                st += "<th>First Name</th>";
                st += "<th>Last Name</th>";
                st += "<th>Year Born</th>";
                st += "<th>Country</th>";
                st += "<th>Phone</th>";
                st += "<th>Email</th>";
                st += "<th>PassWord</th>";

                st += "</tr>";
                st += "</thead>";

                for (int i = 0; i < length; i++)
                {
                    st += "<tbody>";
                    st += "<tr>";
                    st += "<td>" + table.Rows[i]["UserName"] + "</td>";
                    st += "<td>" + table.Rows[i]["FirstName"] + "</td>";
                    st += "<td>" + table.Rows[i]["LastName"] + "</td>";
                    st += "<td>" + table.Rows[i]["YearBorn"] + "</td>";
                    st += "<td>" + table.Rows[i]["Country"] + "</td>";
                    st += "<td>" + table.Rows[i]["Phone"] + "</td>";
                    st += "<td>" + table.Rows[i]["Email"] + "</td>";
                    st += "<td>" + table.Rows[i]["PassWord"] + "</td>";



                    userToDelete = table.Rows[i]["userName"].ToString();

                    st += "<td style= 'text-align: center; border: 1px solid black;'>";
                    st += "<a href = 'DeleteRecord.aspx?UserName=" + userToDelete + "' class='button-style'>Delete</a>";
                    st += "</tr>";
                    st += "</tbody>";


                }

            }
        }
    }
}