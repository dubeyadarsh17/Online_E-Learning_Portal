using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class maindashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            Bind_ddlCountry();
        }
        private void Bind_ddlCountry()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select course_title from tbl_courses", con);
            SqlDataReader dr = cmd.ExecuteReader();
            DropDownList1.DataSource = dr;
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("--Please Select country--");
            DropDownList1.DataTextField = "course_title";
            DropDownList1.DataBind();
            con.Close();
           
        }
              

    }
}