namespace BestHTTP.WebSocket.Frames
{
	public class WebSocketPing : WebSocketBinaryFrame
	{
		public WebSocketPing(string msg) : base(default(byte[]))
		{
		}

	}
}
