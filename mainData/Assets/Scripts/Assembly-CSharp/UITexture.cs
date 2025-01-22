using UnityEngine;

public class UITexture : UIBasicSprite
{
	[SerializeField]
	private Rect mRect;
	[SerializeField]
	public Texture mTexture;
	[SerializeField]
	private Material mMat;
	[SerializeField]
	private Shader mShader;
	[SerializeField]
	private Vector4 mBorder;
}
