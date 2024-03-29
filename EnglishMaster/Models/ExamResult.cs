﻿using System;
using System.Collections.Generic;

namespace EnglishMaster.Models
{
    public partial class ExamResult
    {
        public ExamResult()
        {
            ExamResultIncorrects = new HashSet<ExamResultIncorrect>();
        }

        public long Id { get; set; }
        public long UserId { get; set; }
        public int Score { get; set; }
        public DateTime Date { get; set; }

        public virtual User User { get; set; }
        public virtual ICollection<ExamResultIncorrect> ExamResultIncorrects { get; set; }
    }
}
