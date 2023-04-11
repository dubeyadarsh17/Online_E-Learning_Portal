using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class showteacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                showteachers();
            }
            
        }
        private void showteachers()
        {
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.selectTeacher();
            Repeater2.DataSource = result;
            Repeater2.DataBind();
        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if(e.CommandName == "editbtn")
            {
                ((Label)e.Item.FindControl("Label2")).Visible = false;  
                ((Label)e.Item.FindControl("Label3")).Visible = false;  
                ((Label)e.Item.FindControl("Label4")).Visible = false;
                ((TextBox)e.Item.FindControl("txtname")).Visible = true;
                ((TextBox)e.Item.FindControl("txtemail")).Visible = true;
                ((TextBox)e.Item.FindControl("txtusertype")).Visible = true;
                ((LinkButton)e.Item.FindControl("LinkButton1")).Visible = true;
                ((LinkButton)e.Item.FindControl("LinkButton2")).Visible = true;
                ((LinkButton)e.Item.FindControl("LinkButton4")).Visible = false;
                ((LinkButton)e.Item.FindControl("LinkButton3")).Visible = false;
            }
            if(e.CommandName == "cancelbtn")
            {
                ((Label)e.Item.FindControl("Label2")).Visible = true;
                ((Label)e.Item.FindControl("Label3")).Visible = true;
                ((Label)e.Item.FindControl("Label4")).Visible = true;
                ((TextBox)e.Item.FindControl("txtname")).Visible = false;
                ((TextBox)e.Item.FindControl("txtemail")).Visible = false;
                ((TextBox)e.Item.FindControl("txtusertype")).Visible = false;
                ((LinkButton)e.Item.FindControl("LinkButton1")).Visible = false;
                ((LinkButton)e.Item.FindControl("LinkButton2")).Visible = false;
                ((LinkButton)e.Item.FindControl("LinkButton4")).Visible = true;
                ((LinkButton)e.Item.FindControl("LinkButton3")).Visible = true;
            }
            if( e.CommandName == "updatebtn")
            {
                string id = ((Label)e.Item.FindControl("Label1")).Text;
                string name = ((TextBox)e.Item.FindControl("txtname")).Text;
                string email = ((TextBox)e.Item.FindControl("txtemail")).Text;
                string usertype = ((TextBox)e.Item.FindControl("txtusertype")).Text;
                BsObject.BsObj obj= new BsObject.BsObj();
                obj.Id = Convert.ToInt32(id);
                obj.Name = name;
                obj.Email = email;
                obj.Usertype = usertype;
                bsLayer.Bal objbal = new bsLayer.Bal();
                int result=objbal.Update(obj);
                if(result > 0)
                {
                    showteachers();
                }

            }
            if(e.CommandName== "deletebtn")
            {
                string id = ((Label)e.Item.FindControl("Label1")).Text;
                BsObject.BsObj obj = new BsObject.BsObj();
                obj.Id = Convert.ToInt32(id);
                bsLayer.Bal objbal = new bsLayer.Bal();
                int result = objbal.Delete(obj);
                if (result > 0)
                {
                    showteachers();
                }
            }
        }
    }
}