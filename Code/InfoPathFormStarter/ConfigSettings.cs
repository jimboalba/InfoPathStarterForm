using System;
using System.Collections.Generic;
using System.Text;

namespace InfoPathFormStarter
{
    internal static class ConfigSettings
    {
        /// <summary>
        /// Get the library name as it appears in the url.
        /// <example>MyInfoPath_Form on production and MyInfoPathForm on staging</example>
        /// </summary>
        /// <returns></returns>
        internal static string GetLibraryNameInUrl(string domain)
        {
            if (domain == null) throw new ArgumentNullException("domain");
            domain = domain.ToLower();

            switch (domain)
            {
                case "productionDomain":
                    return "MyInfoPath_Form";
                case "stagingDomain":
                    return "MyInfoPathForm";
                case "contoso":
                    return "CouldBeNamedDifferentlyForNoReason";
                
            }
            return string.Empty;
        }
    }
}
