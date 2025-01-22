using engine.unity;
using System;

public class MessageWindowParams : WindowShowParameters
{
	public MessageWindowParams(bool BanWindow, string message, Action okButtonCallback, string okButtonText)
	{
	}

	public string messageText;
	public string okBtnText;
	public bool IsBanWindow;
}
