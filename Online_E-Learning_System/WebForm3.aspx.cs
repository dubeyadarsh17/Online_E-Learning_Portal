using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static iTextSharp.text.pdf.AcroFields;
using System.Web.UI.HtmlControls;

namespace Online_E_Learning_System
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                questionRept.DataSource = GetData("select * from tbl_question");
                questionRept.DataBind();
            }
        }
        private static DataTable GetData(string query)
        {
            string strConnString = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = query;
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataSet ds = new DataSet())
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
        protected void OnItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string q_id = (e.Item.FindControl("QuestionId") as HiddenField).Value;
                Repeater rptOrders = e.Item.FindControl("answerRept") as Repeater;
                rptOrders.DataSource = GetData(string.Format("select * from tbl_answer where q_id='{0}'", q_id));
                rptOrders.DataBind();
            }
        }

        protected void questionRept_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.Equals("sendReply"))
            {
                string strConnString = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
                SqlConnection con = new SqlConnection(strConnString);
                string q_id = (e.Item.FindControl("QuestionId") as HiddenField).Value;
                string textbox = (e.Item.FindControl("AutoComplete") as TextBox).Text; 
                DateTime timestamp = DateTime.Now;
                SqlCommand cmd = new SqlCommand("insert into tbl_answer values(@q_id,@answer,@name,@timestump)",con);
                cmd.Parameters.AddWithValue("@q_id",q_id);
                cmd.Parameters.AddWithValue("@answer",textbox);
                cmd.Parameters.AddWithValue("@name", Session["name"]);
                cmd.Parameters.AddWithValue("@timestump",timestamp);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            
        }
    }

}