namespace engine.launcher
{
	public class LauncherStatArgs
	{
		public enum LoadType
		{
			HTTP = 0,
			P2P = 1,
		}

		public string error;
		public LoadType loadType;
	}
}
