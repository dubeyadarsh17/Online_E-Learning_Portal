using BsObject;
using iTextSharp.tool.xml.html.head;
using Org.BouncyCastle.Crypto.Tls;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static System.Runtime.CompilerServices.RuntimeHelpers;

namespace Online_E_Learning_System
{
    public partial class admin_homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            BsObject.BsObj objBs = new BsObject.BsObj();
            string Con_file = C_content.PostedFile.FileName;
            string path = "/pdf_file/";
            string pathstring = System.IO.Path.Combine(path, Con_file);

            string imgpath = "/image/";
            string T_img= thumbImg.PostedFile.FileName;
            string t_pathstring=System.IO.Path.Combine(imgpath, T_img);

            objBs.Author = txtauthor.Value;
            objBs.CourseTitle = C_title.Value;
            objBs.VideoLink = V_link.Value;
            objBs.Thumbnail_Image = t_pathstring;
            objBs.CourseContent = pathstring;
            bsLayer.Bal balobj = new bsLayer.Bal();
            int result = balobj.InsertCourse(objBs);
            //FileUpload1.SaveAs(Request.PhysicalApplicationPath+ pathstring);
            if (result > 0)
            {
                // save content file in folder
                string fileimg = Path.GetFileName(Con_file);
                C_content.SaveAs(Server.MapPath(path + fileimg));

                // save ThCourse Thumbnail Image in folder
                string file = Path.GetFileName(T_img);
                thumbImg.SaveAs(Server.MapPath(imgpath + file));

                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('User data insert successfully')", true);

                Response.Redirect("course_update.aspx");
            }

            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert(' User Already Exist')", true);
            }
        }
    }
}
