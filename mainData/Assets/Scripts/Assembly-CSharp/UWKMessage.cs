using System;

public struct UWKMessage
{
	public UWKMessageType type;
	public uint asyncMessageID;
	public uint browserID;
	public int[] iParams;
	public int[] fParams;
	public int[] dataHandle;
	public uint[] dataSize;
}
