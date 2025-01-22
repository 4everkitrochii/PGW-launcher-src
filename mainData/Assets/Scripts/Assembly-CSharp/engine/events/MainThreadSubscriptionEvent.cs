using System;

namespace engine.events
{
	public class MainThreadSubscriptionEvent : SubscriptionEvent
	{
		public MainThreadSubscriptionEvent(Action action, Func<bool> filter) : base(default(Action), default(Func<bool>))
		{
		}

	}
}
