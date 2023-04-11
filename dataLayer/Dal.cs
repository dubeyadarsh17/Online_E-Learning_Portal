using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using BsObject;

namespace dataLayer
{
    public class Dal
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        SqlCommand cmd;

        //sinup user 
        public int insertData(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "Insert");
                    cmd.Parameters.AddWithValue("@name", objj.Name);
                    cmd.Parameters.AddWithValue("@email", objj.Email);
                    cmd.Parameters.AddWithValue("@password", objj.Password);
                    cmd.Parameters.AddWithValue("@usertype", objj.Usertype);
                    if (con.State.Equals(ConnectionState.Closed)) con.Open();
                    int result = cmd.ExecuteNonQuery();
                    con.Close();
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        //login user or admin 
        public DataSet login(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "login");
                    cmd.Parameters.AddWithValue("@email", objj.Email);
                    cmd.Parameters.AddWithValue("@password", objj.Password);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }

        }
        //course insert from Admin 
        public int insertCourse(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "InsertCourse");
                    cmd.Parameters.AddWithValue("@Author", objj.Author);
                    cmd.Parameters.AddWithValue("@course_title", objj.CourseTitle);
                    cmd.Parameters.AddWithValue("@course_content", objj.CourseContent);
                    cmd.Parameters.AddWithValue("@video_link", objj.VideoLink);
                    cmd.Parameters.AddWithValue("@thumb_image", objj.Thumbnail_Image);

                    if (con.State.Equals(ConnectionState.Closed)) con.Open();
                    int result = cmd.ExecuteNonQuery();
                    con.Close();
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        // select courses
        public DataSet selectCourse(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "SelectCourse");
                    cmd.Parameters.AddWithValue("@course_title", objj.CourseTitle);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    return ds;
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public DataSet selectallCourse()
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "SelectallCourse");
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    return ds;
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        // select search course
        public DataSet searchcourse(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "searchcourse");
                    cmd.Parameters.AddWithValue("@course_title", objj.CourseTitle);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        // Insert topic image
        public int inserttopicimages(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "insertTopicImage");
                    cmd.Parameters.AddWithValue("@course_title", objj.CourseTitle);
                    cmd.Parameters.AddWithValue("@course_topic", objj.Course_Topic);
                    cmd.Parameters.AddWithValue("@topic_image", objj.Topic_image);
                    if (con.State.Equals(ConnectionState.Closed)) con.Open();
                    int result = cmd.ExecuteNonQuery();
                    con.Close();
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        //show Course topic 
        public SqlDataReader showtopic(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "showcoursetopic");
                    cmd.Parameters.AddWithValue("@course_title", objj.CourseTitle);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    return dr;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataTable showtopicimage(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "showtopicImage");
                    cmd.Parameters.AddWithValue("@course_Topic", objj.Course_Topic);
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    return dt;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        //select all course
        public SqlDataReader Selectallcourse()
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "course");
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    return dr;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataSet selectquestion(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "selectquestion");
                    cmd.Parameters.AddWithValue("@course_title", objj.CourseTitle);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public DataSet selectallquestion()
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "selectallquestion");
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public DataSet selectanswer(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "selectanswer");
                    cmd.Parameters.AddWithValue("@q_id", objj.Q_id);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }

        }
        public int insertQuestion(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "insertQuestion");
                    cmd.Parameters.AddWithValue("@name", objj.Name);
                    cmd.Parameters.AddWithValue("@course_title", objj.CourseTitle);
                    cmd.Parameters.AddWithValue("@question", objj.Question);
                    cmd.Parameters.AddWithValue("@usertype", objj.Usertype);
                    cmd.Parameters.AddWithValue("@time_stump", objj.TimeStump);
                    if (con.State.Equals(ConnectionState.Closed)) con.Open();
                    int result = cmd.ExecuteNonQuery();
                    con.Close();
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public int insertanswer(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "insertanswer");
                    cmd.Parameters.AddWithValue("@q_id", objj.Q_id);
                    cmd.Parameters.AddWithValue("@answer", objj.Answer);
                    cmd.Parameters.AddWithValue("@name", objj.Name);
                    cmd.Parameters.AddWithValue("@timestump", objj.TimeStump);
                    if (con.State.Equals(ConnectionState.Closed)) con.Open();
                    int result = cmd.ExecuteNonQuery();
                    con.Close();
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }

        public int DeleteAnswer(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "deleteAnswer");
                    cmd.Parameters.AddWithValue("@id", objj.Id);
                    if (con.State.Equals(ConnectionState.Closed)) con.Open();
                    int result = cmd.ExecuteNonQuery();
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public int DeleteQuestion(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "deleteQuestion");
                    cmd.Parameters.AddWithValue("@q_id", objj.Q_id);
                    if (con.State.Equals(ConnectionState.Closed)) con.Open();
                    int result = cmd.ExecuteNonQuery();
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }

        public DataSet totalCourse()
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "totalcourse");
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public DataSet totaluser()
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "totaluser");
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public DataSet totalQuestion()
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "totalquestion");
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public DataSet totalregisteruser()
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "totalregisteruser");
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public int DeleteCourse(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "deleteCourse");
                    cmd.Parameters.AddWithValue("@course_id", objj.Id);
                    if (con.State.Equals(ConnectionState.Closed)) con.Open();
                    int result = cmd.ExecuteNonQuery();
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public int UpdateCourse(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "UpdateCourse");
                    cmd.Parameters.AddWithValue("@course_id", objj.Id);
                    cmd.Parameters.AddWithValue("@course_title", objj.CourseTitle);
                    cmd.Parameters.AddWithValue("@thumb_image", objj.Thumbnail_Image);
                    cmd.Parameters.AddWithValue("@course_content", objj.CourseContent);
                    if (con.State.Equals(ConnectionState.Closed)) con.Open();
                    int result = cmd.ExecuteNonQuery();
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public DataSet totalTeacher()
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "totalTeacher");
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public DataSet selectTeacher()
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "selectTeacher");
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    return ds;
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public int Update(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "update");
                    cmd.Parameters.AddWithValue("@id", objj.Id);
                    cmd.Parameters.AddWithValue("@name", objj.Name);
                    cmd.Parameters.AddWithValue("@email", objj.Email);
                    cmd.Parameters.AddWithValue("@usertype", objj.Usertype);
                    if (con.State.Equals(ConnectionState.Closed)) con.Open();
                    int result = cmd.ExecuteNonQuery();
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public int Delete(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "delete");
                    cmd.Parameters.AddWithValue("@id", objj.Id);
                    if (con.State.Equals(ConnectionState.Closed)) con.Open();
                    int result = cmd.ExecuteNonQuery();
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public DataSet selectbyid(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "totalcourse");
                    cmd.Parameters.AddWithValue("@id", objj.Id);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }

        public int changepass(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@action", "changepass");
                    cmd.Parameters.AddWithValue("@password", objj.Password);
                    cmd.Parameters.AddWithValue("@id", objj.Id);
                    if (con.State.Equals(ConnectionState.Closed)) con.Open();
                    int result = cmd.ExecuteNonQuery();
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
        public DataSet ourallquestion(BsObject.BsObj objj)
        {
            try
            {
                using (cmd = new SqlCommand("ELearningprocedure", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "ourallquestion");
                    cmd.Parameters.AddWithValue("@name",objj.Name);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
    }
}
