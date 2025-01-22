namespace BestHTTP.WebSocket.Frames
{
	public class WebSocketPong : WebSocketBinaryFrame
	{
		public WebSocketPong(WebSocketFrameReader ping) : base(default(byte[]))
		{
		}

	}
}
