namespace BestHTTP.WebSocket.Frames
{
	public class WebSocketTextFrame : WebSocketBinaryFrame
	{
		public WebSocketTextFrame(string text) : base(default(byte[]))
		{
		}

	}
}
