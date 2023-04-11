using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class insertimages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Bind_Course();
            }
        }
        private void Bind_Course()
        {
            bsLayer.Bal balobj = new bsLayer.Bal();
            SqlDataReader dr= balobj.Selectallcourse();
            DropDownList1.DataSource = dr;
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("--Please Select Course--");
            DropDownList1.DataTextField = "course_title";
            DropDownList1.DataBind();
        }
     
        protected void Button1_Click(object sender, EventArgs e)
        {
            BsObject.BsObj obj = new BsObject.BsObj();
            string imgpath = "/image/";
            string T_img = FileUpload1.PostedFile.FileName;
            string t_pathstring = System.IO.Path.Combine(imgpath, T_img);

            obj.CourseTitle = DropDownList1.SelectedValue;
            obj.Course_Topic = topicname.Value;
            obj.Topic_image = t_pathstring;
            bsLayer.Bal balobj = new bsLayer.Bal();
            int result = balobj.InsertTopicImages(obj);
            if (result > 0)
            {
                string file = Path.GetFileName(T_img);
                FileUpload1.SaveAs(Server.MapPath(imgpath + file));
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('User data insert successfully')", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert(' User Already Exist')", true);
            }

        }
    }
}