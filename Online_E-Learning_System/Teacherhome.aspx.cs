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
    public partial class Teacherhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            totaluser();
            totalquestion();
            totalCourse();
        }
        private void totaluser()
        {
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.totaluser();
            DataSet ds = result;
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label2.Text = ds.Tables[0].Rows[0][0].ToString();
            }

        }
        private void totalquestion()
        {
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.totalQuestion();
            DataSet ds = result;
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label3.Text = ds.Tables[0].Rows[0][0].ToString();
            }
        }
        private void totalCourse()
        {
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.totalCourse();
            DataSet ds = result;
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label1.Text = ds.Tables[0].Rows[0][0].ToString();
            }

        }
    }
}