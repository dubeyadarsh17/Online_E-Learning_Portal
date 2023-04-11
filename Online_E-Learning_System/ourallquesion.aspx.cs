using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class ourallquesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                getquestion();
            }
        }
        private void getquestion()
        {
            BsObject.BsObj obj = new BsObject.BsObj();
            obj.Name = Session["name"].ToString();
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.ourallquestion(obj);
            questionRept.DataSource = result;
            questionRept.DataBind();
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
                    Response.Redirect("ourallquesion.aspx");

                }
                else
                {
                    Response.Write("<script>alert('data is not insert')</script>");
                }

            }
        }
    }
}