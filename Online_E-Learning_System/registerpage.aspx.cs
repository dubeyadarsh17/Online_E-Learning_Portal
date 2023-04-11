using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class registerpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            BsObject.BsObj obj = new BsObject.BsObj();
            obj.Name = txtname.Value;
            obj.Email = txtemail.Value;
            obj.Password = txtpassword.Value;
            obj.Usertype = "Student";
            bsLayer.Bal objbal = new bsLayer.Bal();
            int result = objbal.InsertData(obj);
            if (result > 0)
            {
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "<script> alert('Your are register sucessfully');window.open('registerpage.aspx');</script>", true);
                Response.Write("<script>alert('Data inserted successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Data is not inserted successfully')</script>");
            }
        }
    }
}