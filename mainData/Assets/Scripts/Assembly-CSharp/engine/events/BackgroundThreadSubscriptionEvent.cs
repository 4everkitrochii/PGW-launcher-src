using System;

namespace engine.events
{
	public class BackgroundThreadSubscriptionEvent : SubscriptionEvent
	{
		public BackgroundThreadSubscriptionEvent(Action action, Func<bool> filter) : base(default(Action), default(Func<bool>))
		{
		}

	}
}
