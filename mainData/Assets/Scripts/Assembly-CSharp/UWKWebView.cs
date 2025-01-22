using UnityEngine;

public class UWKWebView : MonoBehaviour
{
	public string URL;
	public int CurrentWidth;
	public int CurrentHeight;
	public int MaxWidth;
	public int MaxHeight;
	public float ScrollSensitivity;
	public Texture2D WebTexture;
	public Texture2D WebIcon;
	public uint ID;
	public string Title;
	public bool IMEActive;
	public Rect IMEInputRect;
	public string IMEInputType;
	public string IMEText;
}
