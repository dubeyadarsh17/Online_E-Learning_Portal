using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class pdfreaderpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                pdfview();
            }
        }
        private void pdfview()
        {
            BsObject.BsObj obj = new BsObject.BsObj();
            obj.CourseTitle = Session["title"].ToString();
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result= objbal.SelectCourse(obj);
            DataSet ds = new DataSet();
            ds = result;
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["course_id"] = ds.Tables[0].Rows[0]["course_id"].ToString();
                Session["course_title"] = ds.Tables[0].Rows[0]["course_title"].ToString();
                Session["course_content"] = ds.Tables[0].Rows[0]["course_content"].ToString();
                Session["video_link"]= ds.Tables[0].Rows[0]["video_link"].ToString();
                Session["image"]= ds.Tables[0].Rows[0]["thumb_image"].ToString();


                btnviewpdf.Text = "Learn " + Session["course_title"].ToString() + " Tutorial";
                Button1.Text = "View " + Session["course_title"].ToString() + " Images";
                Button2.Text = "View " + Session["course_title"].ToString() + " Video";
                Image1.ImageUrl = Session["image"].ToString();
                Image2.ImageUrl = Session["image"].ToString();
                Image3.ImageUrl = Session["image"].ToString();
            }
            else
            {

                Response.Write("<script>alert('Course is not avilable')<script>");
            }
        }
        protected void btnviewpdf_Click(object sender, EventArgs e)
        {
            string FilePath = Server.MapPath(Session["course_content"].ToString());
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
        protected void view_video(object sender, EventArgs e)
        { 
            Response.Redirect(Session["video_link"].ToString());
        }

        protected void view_image(object sender, EventArgs e)
        {
            Response.Redirect("show_image.aspx");
        }
    }
}