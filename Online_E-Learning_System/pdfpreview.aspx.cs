using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class pdfpreview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public object DocumentRetrieve(Dictionary<string, string> jsonResult)
        {
            string documentID = jsonResult["documentName"];
            string constr = System.Configuration.ConfigurationManager.ConnectionStrings["PdfDocument"].ConnectionString;
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(constr);
            //searches for the PDF document from the Database
            var query = "select course_title from tbl_course where course_title = '" + Session["title"]+ "'";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(query);
            cmd.Connection = con;
            con.Open();
            System.Data.SqlClient.SqlDataReader read = cmd.ExecuteReader();
            read.Read();
            // Reads the PDF document data as byte array from the database
            byte[] byteArray = (byte[])read["Data"];
            //converts byte array into base64 string
            return "data:application/pdf;base64," + Convert.ToBase64String(byteArray);
        }
    }
}