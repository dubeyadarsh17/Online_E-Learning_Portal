using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class changepassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void chan_pass(object sender, EventArgs e)
        {
            string a = Session["pass"].ToString();
            if (Session["pass"].ToString() == oldpass.Text)
            {
                BsObject.BsObj obj= new BsObject.BsObj();
                obj.Id = Convert.ToInt32(Session["id"]);
                obj.Password = newpass.Text;
                bsLayer.Bal objbal= new bsLayer.Bal();
                int result = objbal.changepass(obj);
                if(result > 0)
                {
                    Response.Write("<script>alert('your password has been updated successfully ');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Password is not update successfully ');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Password is not update successfully ');</script>");
            }
        }
    }
}