using System.IO;

namespace Microsoft.IO
{
	public class RecyclableMemoryStream : MemoryStream
	{
		public RecyclableMemoryStream(RecyclableMemoryStreamManager memoryManager)
		{
		}

	}
}
