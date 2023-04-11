using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Online_E_Learning_System
{
    public partial class changeteacherprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            selectbyid();
        }

        private void selectbyid()
        {
            BsObject.BsObj obj = new BsObject.BsObj();
            obj.Id = Convert.ToInt32(Session["id"].ToString());
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result=objbal.selectbyid(obj);
            DataSet ds = result;
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtname.Value = ds.Tables[0].Rows[0]["name"].ToString();
                txtemail.Value = ds.Tables[0].Rows[0]["email"].ToString();
                txtpassword.Value = ds.Tables[0].Rows[0]["password"].ToString();
                txtpass.Value = ds.Tables[0].Rows[0]["password"].ToString();
            }
        }
    }
}