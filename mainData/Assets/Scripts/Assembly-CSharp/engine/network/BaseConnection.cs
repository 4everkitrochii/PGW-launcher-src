namespace engine.network
{
	public class BaseConnection
	{
		public enum ConnectionType
		{
			SOCKET = 0,
			HTTP = 1,
			WEB_SOCKET = 2,
		}

		public BaseConnection(string serverUrl, string authKey)
		{
		}

		public bool NeedReconnect;
	}
}
