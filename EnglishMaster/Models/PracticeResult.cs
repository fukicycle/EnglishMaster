﻿using System;
using System.Collections.Generic;

namespace EnglishMaster.Models
{
    public partial class PracticeResult
    {
        public long Id { get; set; }
        public long UserId { get; set; }
        public long VocabularyId { get; set; }
        public bool IsCorrect { get; set; }
        public DateTime Date { get; set; }

        public virtual User User { get; set; }
        public virtual Vocabulary Vocabulary { get; set; }
    }
}
