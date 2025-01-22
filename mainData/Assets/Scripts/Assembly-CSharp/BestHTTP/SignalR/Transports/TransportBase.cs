using BestHTTP.SignalR;

namespace BestHTTP.SignalR.Transports
{
	public class TransportBase
	{
		public TransportBase(string name, Connection connection)
		{
		}

		public TransportStates _state;
	}
}
