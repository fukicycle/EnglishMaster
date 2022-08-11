namespace EnglishMaster.Extensions
{
    public static class ListRandom
    {
        public static IEnumerable<T> CreateRandom<T>(this IEnumerable<T> items)
        {
            return items.Select(a => new { a, o = Guid.NewGuid() }).OrderBy(a => a.o).Select(a => a.a).ToList();
        }

        public static T GetRandomFirstOrDefault<T>(this IEnumerable<T> items)
        {
            return items.CreateRandom().FirstOrDefault();
        }
    }
}
