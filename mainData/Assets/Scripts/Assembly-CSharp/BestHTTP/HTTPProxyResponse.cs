using System.IO;

namespace BestHTTP
{
	public class HTTPProxyResponse : HTTPResponse
	{
		internal HTTPProxyResponse(HTTPRequest request, Stream stream, bool isStreamed, bool isFromCache) : base(default(HTTPRequest), default(Stream), default(bool), default(bool))
		{
		}

	}
}
