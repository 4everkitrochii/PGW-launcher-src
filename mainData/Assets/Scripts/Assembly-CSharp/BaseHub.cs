using BestHTTP.SignalR.Hubs;

internal class BaseHub : Hub
{
	public BaseHub(string name, string title) : base(default(string))
	{
	}

}
