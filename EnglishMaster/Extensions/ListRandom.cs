namespace EnglishMaster.Extensions
{
    public static class ListRandom
    {
        public static List<T> CreateRondom<T>(this List<T> items)
        {
            return items.Select(a => new { a, o = Guid.NewGuid() }).OrderBy(a => a.o).Select(a => a.a).ToList();
        }

        public static T GetRandomFirstOrDefault<T>(this List<T> items)
        {
            return items.CreateRondom().FirstOrDefault();
        }
    }
}
