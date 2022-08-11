using System;
using System.Collections.Generic;

namespace EnglishMaster.Models
{
    public partial class Level
    {
        public Level()
        {
            Vocabularies = new HashSet<Vocabulary>();
        }

        public long Id { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Vocabulary> Vocabularies { get; set; }
    }
}
