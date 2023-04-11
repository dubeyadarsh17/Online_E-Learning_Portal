using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindrepeter();
            //Bindquestion();
            if (!IsPostBack)
            {
                getquestion();
                //questionRept.DataSource = GetData("select * from tbl_question where course_title='" + Session["title"] + "'");
                //questionRept.DataBind();
            }
            if (Session["usertype"] == null)
            {
                questionForm.Visible = false;
            }
        }
        private void getquestion()
        {
            BsObject.BsObj obj = new BsObject.BsObj();
            obj.CourseTitle = Session["title"].ToString();
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.SelectQuestion(obj);
            questionRept.DataSource = result;
            questionRept.DataBind();
        }
        private void bindrepeter()
        {
            BsObject.BsObj obj = new BsObject.BsObj();
            obj.CourseTitle = Session["title"].ToString();
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.SelectCourse(obj);
            Repeater1.DataSource = result;
            Repeater1.DataBind();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Viewbook")
            {
                string pdfcontant = ((Label)e.Item.FindControl("Label3")).Text;
                string FilePath = Server.MapPath(pdfcontant);
                WebClient User = new WebClient();
                Byte[] FileBuffer = User.DownloadData(FilePath);
                if (FileBuffer != null)
                {
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-length", FileBuffer.Length.ToString());
                    Response.BinaryWrite(FileBuffer);
                }

            }
            //if (e.CommandName == "Viewimages")
            //{
            //    Response.Redirect("show_image.aspx");
            //}
            if (e.CommandName == "Viewvideo")
            {
                string videocontant = ((Label)e.Item.FindControl("Label5")).Text;
                Response.Redirect(videocontant);
            }
            if (e.CommandName == "Downloadbook")
            {
                string pdfcontant = ((Label)e.Item.FindControl("Label3")).Text;
                Response.ContentType = "application/pdf";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + pdfcontant + ".pdf");
                Response.TransmitFile(Server.MapPath(pdfcontant));
                Response.End();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string question = askquestions.Text;
            DateTime timestamp = DateTime.Now;
            BsObject.BsObj obj = new BsObject.BsObj();

            obj.Question = question;    
            obj.TimeStump=timestamp;
            obj.Name = Session["name"].ToString();
            obj.CourseTitle = Session["title"].ToString();
            obj.Usertype = Session["usertype"].ToString();

            bsLayer.Bal objbal = new bsLayer.Bal();
            int result = objbal.insertQuestion(obj);
            if (result > 0)
            {
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "<script> alert('Question saved sucessfully');window.open('showCourseContent.aspx');</script>", true);
                Response.Write("<script language='javascript'>window.alert('Question saved sucessfully');window.location='showCourseContent.aspx';</script>");
            }
        }

        protected void OnItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                int q_id = Convert.ToInt32((e.Item.FindControl("QuestionId") as HiddenField).Value);
                Repeater rptAnswer = e.Item.FindControl("answerRept") as Repeater;
                //rptOrders.DataSource = GetData(string.Format("select * from tbl_answer where q_id='{0}'", q_id));
                //rptOrders.DataBind();
                BsObject.BsObj obj = new BsObject.BsObj();
                obj.Q_id = q_id;
                bsLayer.Bal objbal = new bsLayer.Bal();
                DataSet result = objbal.SelectAnswer(obj);
                rptAnswer.DataSource = result;
                rptAnswer.DataBind();
            }
        }

        protected void questionRept_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            if (e.CommandName.Equals("sendReply"))
            {

                string textbox = (e.Item.FindControl("AutoComplete") as TextBox).Text;
                int q_id = Convert.ToInt32((e.Item.FindControl("QuestionId") as HiddenField).Value);
                BsObject.BsObj obj = new BsObject.BsObj();
                obj.Q_id = q_id;
                obj.Answer = textbox;
                obj.Name = Session["name"].ToString();
                obj.TimeStump = DateTime.Now;
                bsLayer.Bal bsobj = new bsLayer.Bal();
                int result = bsobj.insertanswer(obj);
                if (result > 0)
                {
                    Response.Redirect("showCourseContent.aspx");

                }
                else
                {
                    Response.Write("<script>alert('data is not insert')</script>");
                }
                
            }
        }
    }
}