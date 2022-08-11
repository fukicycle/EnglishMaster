using System;
using System.Collections.Generic;

namespace EnglishMaster.Models
{
    public partial class ExamResultIncorrect
    {
        public long Id { get; set; }
        public long ExamResultId { get; set; }
        public long VocabularyId { get; set; }

        public virtual ExamResult ExamResult { get; set; }
        public virtual Vocabulary Vocabulary { get; set; }
    }
}
