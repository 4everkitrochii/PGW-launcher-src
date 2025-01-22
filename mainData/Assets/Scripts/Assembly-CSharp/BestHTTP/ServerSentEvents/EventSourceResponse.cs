using BestHTTP;
using System.IO;

namespace BestHTTP.ServerSentEvents
{
	internal class EventSourceResponse : HTTPResponse
	{
		internal EventSourceResponse(HTTPRequest request, Stream stream, bool isStreamed, bool isFromCache) : base(default(HTTPRequest), default(Stream), default(bool), default(bool))
		{
		}

	}
}
