using System;

namespace UnityThreading
{
	public class TickThread : ThreadBase
	{
		public TickThread(Action action, int tickLengthInMilliseconds) : base(default(string))
		{
		}

	}
}
