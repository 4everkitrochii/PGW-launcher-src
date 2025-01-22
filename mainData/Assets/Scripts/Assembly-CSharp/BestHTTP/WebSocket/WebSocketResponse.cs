using BestHTTP;
using System.IO;

namespace BestHTTP.WebSocket
{
	public class WebSocketResponse : HTTPResponse
	{
		internal WebSocketResponse(HTTPRequest request, Stream stream, bool isStreamed, bool isFromCache) : base(default(HTTPRequest), default(Stream), default(bool), default(bool))
		{
		}

	}
}
