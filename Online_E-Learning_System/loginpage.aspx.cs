using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class loginpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            BsObject.BsObj obj = new BsObject.BsObj();
            obj.Email = txtemail.Value;
            obj.Password = txtpassword.Value;
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.Login(obj);
            DataSet ds = new DataSet();
            ds = result;
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script>alert('login successfully')</script>");
                Session["id"] = ds.Tables[0].Rows[0]["id"].ToString();
                Session["name"] = ds.Tables[0].Rows[0]["name"].ToString();
                Session["usertype"] = ds.Tables[0].Rows[0]["usertype"].ToString();
                Session["pass"] = ds.Tables[0].Rows[0]["password"].ToString();
                string a = Session["usertype"].ToString();
                if (Session["usertype"].Equals("Student"))
                {
                    Response.Redirect("maindash.aspx");
                }
                else if (Session["usertype"].Equals("Teacher"))
                {
                    Response.Redirect("Teacherhome.aspx");
                }
                else
                {
                    Response.Redirect("admin_homepage.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Email or Password')</script>");
            }
        }
    }
}