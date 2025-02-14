using UnityEngine;

public class UIRoot : MonoBehaviour
{
	public enum Scaling
	{
		PixelPerfect = 0,
		FixedSize = 1,
		FixedSizeOnMobiles = 2,
	}

	public Scaling scalingStyle;
	public int manualHeight;
	public int minimumHeight;
	public int maximumHeight;
	public bool adjustByDPI;
	public bool shrinkPortraitUI;
}
