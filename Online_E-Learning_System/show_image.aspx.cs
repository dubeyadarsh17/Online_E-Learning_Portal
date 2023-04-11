using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.WebSockets;

namespace Online_E_Learning_System
{
    public partial class show_image : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.IsPostBack)
            {
                bindData();
            }
        }
        private void bindData()
        {
            BsObject.BsObj obj = new BsObject.BsObj();
            obj.CourseTitle = Session["title"].ToString();
            bsLayer.Bal balobj = new bsLayer.Bal();
            SqlDataReader dr = balobj.Showtopic(obj);
            Repeater1.DataSource = dr;
            Repeater1.DataBind();
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "show")
            {
                string topic = ((Label)e.Item.FindControl("Label1")).Text;
                BsObject.BsObj obj = new BsObject.BsObj();
                obj.Course_Topic =topic;
                bsLayer.Bal balobj = new bsLayer.Bal();
                DataTable dt = balobj.Showtopicimage(obj);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }
    }
}
