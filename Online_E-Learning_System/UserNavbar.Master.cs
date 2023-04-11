using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class navbarr : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                bindData();
                //string a = Session["usertype"].ToString();
                if (Session["usertype"] == null)
                {
                    userlogo.Visible = false;
                    Link_logout.Visible = false;
                    sinup_id.Visible = true;
                    login_id.Visible = true;
                    ourallquestion.Visible = false;
                }
                else
                {
                    ourallquestion.Visible = true;
                    userlogo.Visible = true;
                    Label2.Text = Session["name"].ToString();
                    Link_logout.Visible = true;
                    sinup_id.Visible = false;
                    login_id.Visible = false;
                }
            }
        }
        private void bindData()
        {
            BsObject.BsObj obj = new BsObject.BsObj();
            bsLayer.Bal balobj = new bsLayer.Bal();
            SqlDataReader dr = balobj.Selectallcourse();
            Repeater1.DataSource = dr;
            Repeater1.DataBind();
        }

        protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ShowTitle")
            {
                Session["title"] = ((Label)e.Item.FindControl("Label1")).Text;
                Response.Redirect("showCourseContent.aspx");
            }
        }

        protected void Link_logout_Click(object sender, EventArgs e)
        {
            Session["usertype"] = null;
            Response.Redirect("maindash.aspx");
        }
    }
}