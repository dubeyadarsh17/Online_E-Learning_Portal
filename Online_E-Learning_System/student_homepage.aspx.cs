﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class student_homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<string> getCustomerNames(string prefixText)
        {
            List<string> Course = new List<string>();
            BsObject.BsObj obj = new BsObject.BsObj();
            obj.CourseTitle = prefixText;
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.SearchCourse(obj);
            DataSet ds = result;
            if (ds.Tables[0].Rows.Count > 0)
            {
                Course.Add(ds.Tables[0].Rows[0]["Name"].ToString());
            }
            return Course;
        }

        protected void btn_search(object sender, EventArgs e)
        {
            string value = Page.Request.Form["AutoComplete"].ToString();
            BsObject.BsObj obj = new BsObject.BsObj();
            obj.CourseTitle = value;
            bsLayer.Bal objbal = new bsLayer.Bal();
            DataSet result = objbal.SelectCourse(obj);
            DataSet ds = new DataSet();
            ds = result;
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["title"] = value;
                Response.Redirect("pdfreaderpage.aspx");
            }
            else
            {
                Response.Redirect("maindash.aspx");
            }

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["title"] = "java";
            Response.Redirect("pdfreaderpage.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["title"] = "php";
            Response.Redirect("pdfreaderpage.aspx");
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["title"] = "HTML";
            Response.Redirect("pdfreaderpage.aspx");
        }
    }
}