using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class questionAnswerAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_Course();
                getallquestion();
            }
        }
        private void getallquestion()
        {
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.selectallquestion();
            questionRept.DataSource = result;
            questionRept.DataBind();
        }
        private void getquestion()
        {
            BsObject.BsObj obj = new BsObject.BsObj();
            obj.CourseTitle = Session["tit"].ToString();
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.SelectQuestion(obj);
            questionRept.DataSource = result;
            questionRept.DataBind();
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
            getquestion();
        }
        
        protected void OnItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                int q_id = Convert.ToInt32((e.Item.FindControl("QuestionId") as HiddenField).Value);
                Repeater rptAnswer = e.Item.FindControl("answerRept") as Repeater;
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
                    Response.Redirect("questionAnswerAdmin.aspx");
                }
                else
                {
                    Response.Write("<script>alert('data is not insert')</script>");
                }
            }
            if (e.CommandName == "deleteQuestion")
            {
                int id = Convert.ToInt32((e.Item.FindControl("QuestionId") as HiddenField).Value);
                BsObject.BsObj obj = new BsObject.BsObj();
                obj.Q_id = id;
                bsLayer.Bal balobj = new bsLayer.Bal();
                int result =balobj.DeleteQuestion(obj);
                if(result >0)
                {
                    Response.Redirect("questionAnswerAdmin.aspx");
                }
                else
                {
                    Response.Write("<script>alert('delete is not properly')</script>");
                }
            }
        }

        protected void answerRept_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if(e.CommandName== "delete")
            {
                int Answer_id = Convert.ToInt32((e.Item.FindControl("AnswerId") as HiddenField).Value);
                BsObject.BsObj obj = new BsObject.BsObj();
                obj.Id = Answer_id;
                bsLayer.Bal balobj = new bsLayer.Bal();
                int result=balobj.DeleteAnswer(obj);
                if( result >0)
                {
                    Response.Redirect("questionAnswerAdmin.aspx");
                }
                else
                {
                    Response.Write("<script>alert('delete is not properly')</script>");
                }
            }
        }
    }
}
