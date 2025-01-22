namespace engine.launcher
{
	public class DownloaderFileEventArgs
	{
		public enum LoadType
		{
			HTTP = 0,
			P2P = 1,
		}

		public double progress;
		public long receivedBytes;
		public long totalBytes;
		public int speed;
		public string error;
		public LoadType loadType;
	}
}
