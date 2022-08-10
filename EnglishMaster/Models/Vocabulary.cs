using System;
using System.Collections.Generic;

namespace EnglishMaster.Models
{
    public partial class Vocabulary
    {
        public long Id { get; set; }
        public long PartOfSpeechId { get; set; }
        public long WordId { get; set; }
        public string Meaning { get; set; }

        public virtual PartOfSpeech PartOfSpeech { get; set; }
        public virtual Word Word { get; set; }
    }
}
