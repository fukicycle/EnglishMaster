using System;
using System.Collections.Generic;

namespace EnglishMaster.Models
{
    public partial class Vocabulary
    {
        public Vocabulary()
        {
            ExamResultIncorrects = new HashSet<ExamResultIncorrect>();
            PracticeResults = new HashSet<PracticeResult>();
        }

        public long Id { get; set; }
        public long PartOfSpeechId { get; set; }
        public long WordId { get; set; }
        public string Meaning { get; set; }
        public long LevelId { get; set; }

        public virtual Level Level { get; set; }
        public virtual PartOfSpeech PartOfSpeech { get; set; }
        public virtual Word Word { get; set; }
        public virtual ICollection<ExamResultIncorrect> ExamResultIncorrects { get; set; }
        public virtual ICollection<PracticeResult> PracticeResults { get; set; }
    }
}
