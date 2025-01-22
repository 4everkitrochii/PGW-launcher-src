namespace BestHTTP.PlatformSupport.Cryptography
{
	public class MD5CryptoServiceProvider : MD5
	{
		protected override void HashCore(byte[] rgb, int ibStart, int cbSize)
		{
		}

		protected override byte[] HashFinal()
		{
			return default(byte[]);
		}

		public override void Initialize()
		{
		}

	}
}
