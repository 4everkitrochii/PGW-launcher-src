namespace BestHTTP.WebSocket.Frames
{
	public class WebSocketContinuationFrame : WebSocketBinaryFrame
	{
		public WebSocketContinuationFrame(byte[] data, bool isFinal) : base(default(byte[]))
		{
		}

	}
}
