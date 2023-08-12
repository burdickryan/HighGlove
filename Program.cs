internal class Program
{
    private static void Main(string[] args)
    {
        List<Shot> shots = GetShotData();
        List<ShotType> shotTypes = GetShotTypes(shots);

        foreach (ShotType shotType in shotTypes)
        {
            decimal percentHighGlove = GetPercentHighGlove(shotType);

            Console.WriteLine($"{percentHighGlove}% of {shotType.ToString().ToLower()} shots went to the high-glove side.");
        }

        decimal GetPercentHighGlove(ShotType shotType)
        {
            int countHighGlove = shots.Count(shot =>
                shot.Type == shotType &&
                shot.IsHighGlove());

            decimal percentHighGlove = (decimal)countHighGlove / shots.Count * 100;

            return Math.Round(percentHighGlove);
        }

        List<Shot> GetShotData()
        {
            return new()
            {
                new Shot() { Type = ShotType.Wrist, X = -9.2, Y = 5.8 },
                new Shot() { Type = ShotType.Wrist, X = 21.3, Y = 23.0 },
                new Shot() { Type = ShotType.Wrist, X = 19.9, Y = 23.6 },
                new Shot() { Type = ShotType.Wrist, X = 31.4, Y = 24.0 },
                new Shot() { Type = ShotType.Wrist, X = 19.6, Y = 22.8 },
                new Shot() { Type = ShotType.Wrist, X = -12.9, Y = -23.1 },

                new Shot() { Type = ShotType.Slap, X = 30.0, Y = -20.3 },
                new Shot() { Type = ShotType.Slap, X = -32.5, Y = -12.0 },
                new Shot() { Type = ShotType.Slap, X = 34.4, Y = -8.3 },
                new Shot() { Type = ShotType.Slap, X = 33.3, Y = 19.0 },

                new Shot() { Type = ShotType.Snap, X = 30.0, Y = -20.3 },

                new Shot() { Type = ShotType.Backhand, X = -16.0, Y = 0.91 },
                new Shot() { Type = ShotType.Backhand, X = 25.7, Y = 8.7 },
                new Shot() { Type = ShotType.Backhand, X = 30.0, Y = 13.3 },
            };
        }

        List<ShotType> GetShotTypes(List<Shot> shots)
        {
            return shots
                .Select(x => x.Type)
                .Distinct()
                .ToList();
        }
    }
}
