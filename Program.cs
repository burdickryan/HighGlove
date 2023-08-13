internal class Program
{
    private static void Main()
    {
        // REQUIREMENT: An example of a shots array is:
        // [['WRIST', -9.2, 5.8], ['SLAP', 30.0, -20.3], ...]
        object[] shotsArray = GetShotsArray();

        // Map the shots array to a collection of Shot objects
        List<Shot> shots = MapShotsArray(shotsArray);

        // Get shot types present in the data
        List<ShotType> shotTypes = shots
            .Select(x => x.Type)
            .Distinct()
            .ToList();

        Console.WriteLine("Shots that went high-glove side:");

        foreach (ShotType shotType in shotTypes)
        {
            // Count shots of the specified type that went high-glove side
            int countHighGlove = shots.Count(shot =>
                shot.Type == shotType &&
                shot.IsHighGlove());

            // Calculate percentage of shots for this type
            double percentHighGlove = (double)countHighGlove / shots.Count * 100;

            // Output to console
            Console.WriteLine("{0}: {1:N0}%", shotType, percentHighGlove);
        }
    }

    static object[] GetShotsArray()
    {
        return new object[]
        {
                new object[] { "WRIST", -9.2, 5.8 },
                new object[] { "WRIST", 21.3, 23.0 },
                new object[] { "WRIST", 19.9, 23.6 },
                new object[] { "WRIST", 31.4, 24.0 },
                new object[] { "WRIST", 19.6, 22.8 },
                new object[] { "WRIST", -12.9, -23.1 },
                new object[] { "SLAP", 30.0, -20.3 },
                new object[] { "SLAP", -32.5, -12.0 },
                new object[] { "SLAP", 34.4, -8.3 },
                new object[] { "SLAP", 33.3, 19.0 },
                new object[] { "SNAP", 30.0, -20.3 },
                new object[] { "BACKHAND", -16.0, 0.91 },
                new object[] { "BACKHAND", 25.7, 8.7 },
                new object[] { "BACKHAND", 30.0, 13.3 },
        };
    }

    static List<Shot> MapShotsArray(object[] shotsArray)
    {
        const int ShotTypeIndex = 0;
        const int XIndex = 1;
        const int YIndex = 2;

        // REQUIREMENT: For this problem, you can assume that each shot
        // will have all three values defined in the expected format
        return shotsArray
            .OfType<object[]>()
            .Select(shot =>
            {
                ShotType shotType = Enum.Parse<ShotType>(
                    shot[ShotTypeIndex].ToString(),
                    ignoreCase: true);

                return new Shot
                {
                    Type = shotType,
                    X = (double)shot[XIndex],
                    Y = (double)shot[YIndex]
                };
            }).ToList();
    }
}
