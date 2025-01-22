using System;

namespace UnityThreading
{
	public class ActionThread : ThreadBase
	{
		public ActionThread(Action<ActionThread> action) : base(default(string))
		{
		}

	}
}
