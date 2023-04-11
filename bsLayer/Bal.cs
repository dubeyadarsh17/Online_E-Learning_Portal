using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dataLayer;

namespace bsLayer
{
    public class Bal
    {
        dataLayer.Dal dlObj = new dataLayer.Dal();
        //insert
        public int InsertData(BsObject.BsObj objjbal)
        {
            return dlObj.insertData(objjbal);
        }
        //login 
        public DataSet Login(BsObject.BsObj objjbal)
        {
            return dlObj.login(objjbal);
        }
        public int InsertCourse(BsObject.BsObj objjbal)
        {
            return dlObj.insertCourse(objjbal);
        }
        public DataSet SelectCourse(BsObject.BsObj objjbal)
        {
            return dlObj.selectCourse(objjbal);
        }
        public DataSet SelectallCourse()
        {
            return dlObj.selectallCourse();
        }
        public DataSet SearchCourse(BsObject.BsObj objjbal)
        {
            return dlObj.searchcourse(objjbal);
        }
        public int InsertTopicImages(BsObject.BsObj objjbal)
        {
            return dlObj.inserttopicimages(objjbal);
        }
        public SqlDataReader Showtopic(BsObject.BsObj objjbal)
        {
            return dlObj.showtopic(objjbal);
        }
        public DataTable Showtopicimage(BsObject.BsObj objjbal)
        {
            return dlObj.showtopicimage(objjbal);
        }
        public SqlDataReader Selectallcourse()
        {
            return dlObj.Selectallcourse();
        }
        public DataSet SelectQuestion(BsObject.BsObj objjbal)
        {
            return dlObj.selectquestion(objjbal);
        }
        public DataSet selectallquestion()
        {
            return dlObj.selectallquestion();
        }
        public DataSet SelectAnswer(BsObject.BsObj objjbal)
        {
            return dlObj.selectanswer(objjbal);
        }
        public int insertQuestion(BsObject.BsObj objjbal)
        {
            return dlObj.insertQuestion(objjbal);   
        }
        public int insertanswer(BsObject.BsObj objjbal)
        {
            return dlObj.insertanswer(objjbal);
        }
        public int DeleteAnswer(BsObject.BsObj objjbal)
        {
            return dlObj.DeleteAnswer(objjbal);
        }
        public int DeleteQuestion(BsObject.BsObj objjbal)
        {
            return dlObj.DeleteQuestion(objjbal);
        }
        public DataSet totalCourse()
        {
            return dlObj.totalCourse();
        }
        public DataSet totaluser()
        {
            return dlObj.totaluser();
        }
        public DataSet totalQuestion()
        {
            return dlObj.totalQuestion();
        }
        public DataSet totalregisteruser()
        {
            return dlObj.totalregisteruser();
        }
        public int DeleteCourse(BsObject.BsObj objjbal)
        {
            return dlObj.DeleteCourse(objjbal);
        }
        public int UpdateCourse(BsObject.BsObj objjbal)
        {
            return dlObj.UpdateCourse(objjbal);
        }
        public DataSet selectTeacher()
        {
            return dlObj.selectTeacher();
        }
        public DataSet totalTeacher()
        {
            return dlObj.totalTeacher();
        }
        public int Update(BsObject.BsObj objjbal)
        {
            return dlObj.Update(objjbal);
        }
        public int Delete(BsObject.BsObj objjbal)
        {
            return dlObj.Delete(objjbal);
        }
        public DataSet selectbyid(BsObject.BsObj objjbal)
        {
            return dlObj.selectbyid(objjbal);
        }
        public int changepass(BsObject.BsObj objjbal)
        {
            return dlObj.changepass(objjbal);
        }
        public DataSet ourallquestion(BsObject.BsObj objjbal)
        {
            return dlObj.ourallquestion(objjbal) ;
        }
    }
}
