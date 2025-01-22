using System;
using System.Collections;

namespace UnityThreading
{
	public class EnumeratableActionThread : ThreadBase
	{
		public EnumeratableActionThread(Func<ThreadBase, IEnumerator> enumeratableAction) : base(default(string))
		{
		}

	}
}
