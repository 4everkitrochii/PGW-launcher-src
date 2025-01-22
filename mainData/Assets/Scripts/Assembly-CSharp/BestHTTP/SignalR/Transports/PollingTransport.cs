using BestHTTP.SignalR;

namespace BestHTTP.SignalR.Transports
{
	public class PollingTransport : PostSendTransportBase
	{
		public PollingTransport(Connection connection) : base(default(string), default(Connection))
		{
		}

	}
}
