using UnityEngine;
using System.Collections.Generic;

namespace I2.Loc
{
	public class LanguageSource : MonoBehaviour
	{
		public enum eGoogleUpdateFrequency
		{
			Always = 0,
			Never = 1,
			Daily = 2,
			Weekly = 3,
			Monthly = 4,
		}

		public string Google_WebServiceURL;
		public string Google_SpreadsheetKey;
		public string Google_SpreadsheetName;
		public string Google_LastUpdatedVersion;
		public eGoogleUpdateFrequency GoogleUpdateFrequency;
		public List<TermData> mTerms;
		public List<LanguageData> mLanguages;
		public bool CaseInsensitiveTerms;
		public Object[] Assets;
		public bool NeverDestroy;
		public bool UserAgreesToHaveItOnTheScene;
	}
}
