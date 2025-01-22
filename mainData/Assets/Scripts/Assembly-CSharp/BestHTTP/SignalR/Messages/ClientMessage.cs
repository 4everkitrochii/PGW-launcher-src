using System;
using BestHTTP.SignalR.Hubs;

namespace BestHTTP.SignalR.Messages
{
	public struct ClientMessage
	{
		public ClientMessage(Hub hub, string method, object[] args, ulong callIdx, OnMethodResultDelegate resultCallback, OnMethodFailedDelegate resultErrorCallback, OnMethodProgressDelegate progressCallback) : this()
		{
		}

	}
}
