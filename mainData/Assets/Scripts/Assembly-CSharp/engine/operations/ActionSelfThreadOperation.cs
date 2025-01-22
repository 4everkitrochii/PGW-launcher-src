using System;

namespace engine.operations
{
	public class ActionSelfThreadOperation : ActionOperation
	{
		public ActionSelfThreadOperation(Action method) : base(default(Action))
		{
		}

	}
}
