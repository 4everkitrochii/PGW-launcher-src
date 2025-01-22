using BestHTTP.SocketIO;

namespace BestHTTP.SocketIO.Events
{
	public delegate void SocketIOCallback(Socket socket,Packet packet,object[] args);
}
