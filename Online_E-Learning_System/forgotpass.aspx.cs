using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_E_Learning_System
{
    public partial class forgotpass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void send_email(object sender, EventArgs e)
        {
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=ELearningDb;Integrated Security=True"))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT name,password FROM tbl_ELearning Where email= '" + typeEmail.Value + "'", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);
                    con.Close();
                }
                if (ds.Tables[0].Rows.Count > 0)
                {
                    string to = typeEmail.Value; //To address
                    string from = "rahulpaljobs@gmail.com"; //From address
                    MailMessage message = new MailMessage(from, to);
                    string mailbody = "Hi, <br/>Please check your Login Details<br/><br/>Your name: " + ds.Tables[0].Rows[0]["name"] + "<br/><br/>Your password: " + (ds.Tables[0].Rows[0]["password"].ToString()) + "<br/><br/>";
                    message.Subject = "Sending Email Using Asp.Net & C#";
                    message.Body = mailbody;
                    message.BodyEncoding = Encoding.UTF8;
                    message.IsBodyHtml = true;
                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp
                    System.Net.NetworkCredential basicCredential1 = new
                    System.Net.NetworkCredential("rahulpaljobs@gmail.com", "kbvhmihftjmnwquc");
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = basicCredential1;
                    try
                    {
                        client.Send(message);
                        Label1.Text = "Password sent on your Email.";
                    }

                    catch (Exception ex)
                    {
                        throw ex;
                    }
                }
                else
                {
                    Label1.Text = "The Email you entered not exists.";
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught.", ex);
            }

        }

    }

}