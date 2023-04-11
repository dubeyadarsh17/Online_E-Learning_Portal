using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class navbar : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usertype"] == null)
            {
                userlogo.Visible = false;
                Link_logout.Visible = false;
                sinup_id.Visible = true;
                login_id.Visible = true;
            }
            else
            {
                userlogo.Visible = true;
                Label2.Text =Session["name"].ToString();
                Link_logout.Visible = true;
                sinup_id.Visible = false;
                login_id.Visible = false;
            }
           
            if (Session["usertype"].ToString() == "Teacher")
            {
                viewteacher.Visible= false;
                Adminhome.Visible = false;
                addteacher.Visible=false;
            }
            else
            {
                teacherhome1.Visible = false;
                updatePass.Visible = false;
            }

        }
        protected void Link_logout_Click1(object sender, EventArgs e)
        {
            Session["usertype"] = null;
            Response.Redirect("loginpage.aspx");
        }
    }
}