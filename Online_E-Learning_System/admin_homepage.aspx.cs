using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class admin_homepage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            totaluser();
            totalquestion();
            totalCourse();
            totalTeacher();
        }

        private void totalTeacher()
        {
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.totalTeacher();
                DataSet ds = result;
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label4.Text = ds.Tables[0].Rows[0][0].ToString();
            }
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