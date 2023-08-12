internal static class Extensions
{
    internal static bool IsHighGlove(this Shot shot)
    {
        const int MinX = 18;
        const int MaxX = 36;
        const int MinY = 6;
        const int MaxY = 24;

        return shot.X >= MinX && shot.X <= MaxX &&
            shot.Y >= MinY && shot.Y <= MaxY;
    }
}
