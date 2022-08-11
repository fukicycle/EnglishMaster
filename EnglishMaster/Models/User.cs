using System;
using System.Collections.Generic;

namespace EnglishMaster.Models
{
    public partial class User
    {
        public User()
        {
            ExamResults = new HashSet<ExamResult>();
            PracticeResults = new HashSet<PracticeResult>();
        }

        public long Id { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

        public virtual ICollection<ExamResult> ExamResults { get; set; }
        public virtual ICollection<PracticeResult> PracticeResults { get; set; }
    }
}
