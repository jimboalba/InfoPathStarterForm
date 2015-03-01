using System;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using System.Xml.XPath;
using Microsoft.SharePoint.Administration;

namespace InfoPathFormStarter
{
    public partial class FormCode
    {
        private void LogDebug(string msg, bool clear)
        {
            if (!clear)
            {
                string log = Debug;

                log = msg + "--" + log;
                Debug = log + "<br/>";
            }
            else
            {
                Debug = msg + "<br/>";
            }
        }

        private void LogException(string msg, bool clear)
        {
            if (!clear)
            {
                string log = ExceptionMessage;

                log = msg + "<br/>-----------------------------------<br/>" + log;
                ExceptionMessage = log + "<br/>";
            }
            else
            {
                ExceptionMessage = msg + "<br/>";
            }
        }

        private void LogHistory(string msg, bool clear)
        {
            if (!clear)
            {
                string log = History;

                log = msg + "--" + log;
                History = log + "<br/>";
            }
            else
            {
                History = msg + "<br/>";
            }
        }

        public void DisplayServerInfo()
        {
            LoggingService.Test(TraceSeverity.VerboseEx, "SharePointListUrl : " + ServerInfo.SharePointListUrl);
            LoggingService.Test(TraceSeverity.VerboseEx,
                "SharePointServerRootUrl : " + ServerInfo.SharePointServerRootUrl);
            LoggingService.Test(TraceSeverity.VerboseEx,
                "SharePointSiteCollectionUrl : " + ServerInfo.SharePointSiteCollectionUrl);
            LoggingService.Test(TraceSeverity.VerboseEx, "SharePointSiteUrl : " + ServerInfo.SharePointSiteUrl);
        }

        private bool IsUserAdmin(string currentUserName)
        {
            string setting = GetSetting(Constants.Setting.Admin);
            return setting.Contains(currentUserName);
        }

        private bool IsUserTechSupport(string currentUserName)
        {
            string setting = GetSetting(Constants.Setting.TechSupport);
            return setting.Contains(currentUserName);
        }

        private string GetSetting(string Id)
        {
            XPathNavigator xn = DataSources[DataConnectionName.Settings].CreateNavigator();
            XmlNamespaceManager ns = NamespaceManager;

            string qryId = string.Format("/dfs:myFields/dfs:dataFields/d:SharePointListItem_RW/d:Title[../d:ID = {0}]", Id);
            string setting = xn.SelectSingleNode(qryId, ns).Value;

            return setting;
        }

        private void UpdateFileNameFieldBasedOnDocumentNumber()
        {
            string oldFileName = Filename.Substring(0, Filename.Length - 4);
            if (oldFileName != DocumentNumber)
            {
                Filename = DocumentNumber + ".xml";
                LogDebug(string.Format("FileName field was updated from {0} to {1}", oldFileName, Filename), false);
            }
        }

        public static string GenerateDocumentName(string prefix)
        {
            string docName = string.Concat(prefix, DateTime.Now.ToString("yyyyMMddHHmmss"));
            return docName;
        }

        public string GenerateLink()
        {
            string siteUrl = ServerInfo.SharePointSiteUrl.ToString();
            string domain = System.Environment.UserDomainName;
            string libraryName = ConfigSettings.GetLibraryNameInUrl(domain);
            string link = GenerateLink(siteUrl, libraryName);

            LoggingService.SendMail(TraceSeverity.Verbose, "SiteUrl: " + siteUrl);
            LoggingService.SendMail(TraceSeverity.Verbose, "Domain: " + domain);
            LoggingService.SendMail(TraceSeverity.Verbose, "Library: " + libraryName);
            LoggingService.SendMail(TraceSeverity.Verbose, "FormUrl: " + link);

            return link;
        }

        private string GenerateLink(string siteUrl, string libraryName)
        {
            string path = @"<a href=" + siteUrl + @"_layouts/FormServer.aspx?" +
                          @"XmlLocation=" + siteUrl + libraryName + @"/" + Filename +
                          @"&Source=" + siteUrl + libraryName +
                          @"/Forms/AllItems.aspx&DefaultItemOpen=1" + ">" + DocumentNumber +
                          @"</a>";
            return path;
        }
    }
}
