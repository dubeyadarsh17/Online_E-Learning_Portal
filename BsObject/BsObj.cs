using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BsObject
{
    public class BsObj
    {
        private int _Id;
        private string _Name;
        private string _Email;
        private string _Password;
        private string _Usertype;
        private string _course_title;
        private string _course_content;
        private string _video_link;
        private string _Thumbnail_Image;
        private string _course_topic;
        private string _topic_image;
        private string _Author;
        private int _Q_id;
        private string _Question;
        private string _Answer;
        private DateTime _TimeStump;
        // Get and set values

        public int Id
        {
            get
            {
                return _Id;
            }
            set
            {
                _Id = value;
            }
        }
        public string Name
        {
            get
            {
                return _Name;
            }
            set
            {
                _Name = value;
            }
        }

        public string Email
        {
            get
            {
                return _Email;
            }
            set
            {
                _Email = value;
            }
        }
        public string Password
        {
            get
            {
                return _Password;
            }
            set
            {
                _Password = value;
            }
        }
        public string Usertype
        {
            get
            {
                return _Usertype;
            }
            set
            {
                _Usertype = value;
            }
        }
        public string CourseTitle
        {
            get
            {
                return _course_title;
            }
            set
            {
                _course_title = value;
            }
        }
        public string CourseContent
        {
            get
            {
                return _course_content;
            }
            set
            {
                _course_content = value;
            }
        }
        public string VideoLink
        {
            get
            {
                return _video_link;
            }
            set
            {
                _video_link = value;
            }
        }
        public string Thumbnail_Image
        {
            get
            {
                return _Thumbnail_Image;
            }
            set
            {
                _Thumbnail_Image = value;
            }
        }
        public string Course_Topic
        {
            get
            {
                return _course_topic;
            }
            set
            {
                _course_topic = value;
            }
        }
        public string Topic_image
        {
            get
            {
                return _topic_image;
            }
            set
            {
                _topic_image = value;
            }
        }
        public string Author
        {
            get
            {
                return _Author;
            }
            set
            {
                _Author = value;
            }
        }
        public int Q_id
        {
            get
            {
                return _Q_id;
            }
            set
            {
                _Q_id = value;
            }
        }
        public string Question
        {
            get
            {
                return _Question;
            }
            set
            {
                _Question = value;
            }

        }
        public string Answer
        {
            get
            {
                return _Answer;
            }
            set
            {
                _Answer = value;
            }
        }
        public DateTime TimeStump
        {
            get
            {
                return _TimeStump;
            }
            set
            {
                _TimeStump = value;
            }
        }
    }
}
