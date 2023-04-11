using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class regiter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            BsObject.BsObj obj = new BsObject.BsObj();
            obj.Name = txtname.Value;
            obj.Email = txtemail.Value;
            obj.Password = txtpassword.Value;
            bsLayer.Bal objbal = new bsLayer.Bal();
            int result = objbal.InsertData(obj);
        }
    }
}