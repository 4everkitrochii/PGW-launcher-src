using BestHTTP.SignalR;

namespace BestHTTP.SignalR.Transports
{
	public class ServerSentEventsTransport : PostSendTransportBase
	{
		public ServerSentEventsTransport(Connection con) : base(default(string), default(Connection))
		{
		}

	}
}
