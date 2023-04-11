using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class viewUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            totalregisteruser();

        }
        private void totalregisteruser()
        {
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.totalregisteruser();
            Repeater2.DataSource = result;
            Repeater2.DataBind();
        }
    }
}