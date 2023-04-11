using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class upadtecoursecontent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_Course();
                bindrepeter();
            }

        }
        private void bindrepeterCourse()
        {
            BsObject.BsObj obj = new BsObject.BsObj();
            obj.CourseTitle = Session["tit"].ToString();
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.SelectCourse(obj);
            DataSet ds = new DataSet();
            Repeater2.DataSource = result;
            Repeater2.DataBind();
        }
        private void Bind_Course()
        {
            bsLayer.Bal balobj = new bsLayer.Bal();
            SqlDataReader dr = balobj.Selectallcourse();
            Dropdown.DataSource = dr;
            Dropdown.Items.Clear();
            Dropdown.Items.Add("--Please Select Course--");
            Dropdown.DataTextField = "course_title";
            Dropdown.DataBind();
        }
        protected void Dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["tit"] = Dropdown.SelectedValue;

            bindrepeterCourse();

        }
        private void bindrepeter()
        {
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.SelectallCourse();
            Repeater2.DataSource = result;
            Repeater2.DataBind();
        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "editbtn")
            {
                ((Label)e.Item.FindControl("label2")).Visible = false;
                ((TextBox)e.Item.FindControl("TextBox1")).Visible = true;
                ((FileUpload)e.Item.FindControl("fileupload2")).Visible = true;
                ((FileUpload)e.Item.FindControl("FileUpload1")).Visible = true;
                ((LinkButton)e.Item.FindControl("LinkButton2")).Visible = true;
                ((LinkButton)e.Item.FindControl("LinkButton1")).Visible = true;
                ((LinkButton)e.Item.FindControl("LinkButton3")).Visible = false;
                ((LinkButton)e.Item.FindControl("LinkButton4")).Visible = false;
                ((Image)e.Item.FindControl("Image1")).Visible = false;
                ((Label)e.Item.FindControl("Label3")).Visible = false;


            }
            if (e.CommandName == "cancelbtn")
            {
                ((Label)e.Item.FindControl("label2")).Visible = true;
                ((TextBox)e.Item.FindControl("TextBox1")).Visible = false;
                ((FileUpload)e.Item.FindControl("fileupload2")).Visible = false;
                ((FileUpload)e.Item.FindControl("FileUpload1")).Visible = false;
                ((LinkButton)e.Item.FindControl("LinkButton2")).Visible = false;
                ((LinkButton)e.Item.FindControl("LinkButton1")).Visible = false;
                ((LinkButton)e.Item.FindControl("LinkButton3")).Visible = true;
                ((LinkButton)e.Item.FindControl("LinkButton4")).Visible = true;
                ((Image)e.Item.FindControl("Image1")).Visible = true;
                ((Label)e.Item.FindControl("Label3")).Visible = true;
            }
            if (e.CommandName == "deletebtn")
            {
                BsObject.BsObj obj = new BsObject.BsObj();
                string id = ((Label)e.Item.FindControl("label1")).Text;
                obj.Id = Convert.ToInt32(id);
                bsLayer.Bal bsobj = new bsLayer.Bal();
                bsobj.DeleteCourse(obj);
            }
            if (e.CommandName == "updatebtn")
            {
                BsObject.BsObj obj = new BsObject.BsObj();
                string id = ((Label)e.Item.FindControl("label1")).Text;
                string title= ((TextBox)e.Item.FindControl("TextBox1")).Text;
                string thum_img = ((FileUpload)e.Item.FindControl("FileUpload1")).PostedFile.FileName;
                string Con_file = ((FileUpload)e.Item.FindControl("FileUpload2")).PostedFile.FileName;
                string path = "/pdf_file/";
                string imgpath = "/image/";

                if (((FileUpload)e.Item.FindControl("FileUpload2")).PostedFile.FileName == "")
                {
                    Con_file = ((Label)e.Item.FindControl("Label3")).Text;
                }
                if (((FileUpload)e.Item.FindControl("FileUpload1")).PostedFile.FileName == "")
                {
                    thum_img = ((Image)e.Item.FindControl("Image1")).ImageUrl;
                }

                string pathstring = System.IO.Path.Combine(path, Con_file);
                string Imagepathstring = System.IO.Path.Combine(imgpath, thum_img);
                obj.Id = Convert.ToInt32(id);
                obj.CourseTitle = title;
                obj.Thumbnail_Image = Imagepathstring;
                obj.CourseContent = pathstring;
                bsLayer.Bal objbal = new bsLayer.Bal();
                int i = objbal.UpdateCourse(obj);
                if (i > 0)
                {
                    string fileimg = Path.GetFileName(Con_file);
                    ((FileUpload)e.Item.FindControl("FileUpload1")).SaveAs(Server.MapPath(path + fileimg));

                    string Image_filing = Path.GetFileName(thum_img);
                    ((FileUpload)e.Item.FindControl("FileUpload1")).SaveAs(Server.MapPath(imgpath + Image_filing));
                }
                bindrepeter();
            }
        }
    }
}