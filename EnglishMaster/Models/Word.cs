﻿using System;
using System.Collections.Generic;

namespace EnglishMaster.Models
{
    public partial class Word
    {
        public Word()
        {
            Vocabularies = new HashSet<Vocabulary>();
        }

        public long Id { get; set; }
        public string Word1 { get; set; }

        public virtual ICollection<Vocabulary> Vocabularies { get; set; }
    }
}
