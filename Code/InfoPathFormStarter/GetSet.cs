using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Text;
using System.Xml.XPath;
using Microsoft.SharePoint.Administration;

namespace InfoPathFormStarter
{
    public partial class FormCode
    {
        [DebuggerStepThrough]
        private void StringSetter(string fieldName, string fieldXpath, string newValue)
        {
            try
            {
                XPathNavigator xn = CreateNavigator().SelectSingleNode(fieldXpath, NamespaceManager);
                if (xn != null)
                    xn.SetValue(newValue);
            }
            catch (Exception ex)
            {
                LoggingService.BusinessLogic(TraceSeverity.Unexpected,
                    "Error on StringSetter for fieldname " + fieldName + " Stack Message: " +
                    ex.Message);
            }
        }

        [DebuggerStepThrough]
        private string StringGetter(string fieldName, string fieldXpath)
        {
            string returnValue = string.Empty;
            try
            {
                XPathNavigator xn = CreateNavigator().SelectSingleNode(fieldXpath, NamespaceManager);
                if (xn != null)
                    returnValue = xn.Value;
            }
            catch (Exception ex)
            {
                LoggingService.BusinessLogic(TraceSeverity.Unexpected,
                    "Error on StringGetter for fieldname " + fieldName + " Stack Message: " +
                    ex.Message);
            }
            return returnValue;
        }
        
        [DebuggerStepThrough]
        private void RichTextSetter(string fieldName, string fieldXpath, string newValue)
        {
            try
            {
                newValue = newValue.Replace("&", "&amp;");
                string richTextFormat = @"<div xmlns='http://www.w3.org/1999/xhtml'>" + newValue + @"</div>";
                this.CreateNavigator().SelectSingleNode(fieldXpath, NamespaceManager).InnerXml = richTextFormat;
            }
            catch (Exception ex)
            {
                LoggingService.BusinessLogic(TraceSeverity.Unexpected,
                    "Error on RichTextSetter for fieldname " + fieldName + " Stack Message: " +
                    ex.Message);
            }
        }

        [DebuggerStepThrough]
        private string RichTextGetter(string fieldName, string fieldXpath)
        {
            string returnValue = string.Empty;
            try
            {
                returnValue = this.CreateNavigator().SelectSingleNode(fieldXpath, NamespaceManager).InnerXml;
            }
            catch (Exception ex)
            {
                LoggingService.BusinessLogic(TraceSeverity.Unexpected,
                    "Error on RichTextGetter for fieldname " + fieldName + " Stack Message: " +
                    ex.Message);
            }
            return returnValue;
        }
        
        [DebuggerStepThrough]
        private void BoolSetter(string fieldName, string fieldXpath, bool newValue)
        {
            string assignedValue = newValue.ToString().ToLower();
            this.CreateNavigator().SelectSingleNode(fieldXpath, NamespaceManager)
                .SetValue(assignedValue);
        }

        [DebuggerStepThrough]
        private bool BoolGetter(string fieldName, string fieldXpath)
        {
            bool returnValue = false;
            try
            {
                returnValue = this.CreateNavigator().SelectSingleNode(fieldXpath, NamespaceManager).ValueAsBoolean;
            }
            catch (Exception ex)
            {
                LoggingService.BusinessLogic(TraceSeverity.Unexpected,
                    "Error on boolGetter for fieldname " + fieldName + " Stack Message: " +
                    ex.Message);
                throw new InvalidOperationException("Error on boolGetter for fieldname " + fieldName);
            }
            return returnValue;
        }

        [DebuggerStepThrough]
        private void DateSetter(string fieldName, string fieldXpath, DateTime newValue)
        {
            try
            {
                string assignedValue = newValue.ToString("yyyy-MM-dd").Trim();
                XPathNavigator xnode = this.CreateNavigator().SelectSingleNode(fieldXpath, NamespaceManager);
                DeleteNil(xnode);
                xnode.SetValue(assignedValue);
            }
            catch (Exception ex)
            {
                LoggingService.BusinessLogic(TraceSeverity.Unexpected,
                    "Error on dateSetter for fieldname " + fieldName + " Stack Message: " +
                    ex.Message);
            }
        }

        [DebuggerStepThrough]
        private DateTime DateGetter(string fieldName, string fieldXpath)
        {
            DateTime returnValue = DateTime.MinValue;
            try
            {
                returnValue = this.CreateNavigator().SelectSingleNode(fieldXpath, NamespaceManager).ValueAsDateTime;
            }
            catch (Exception ex)
            {
                LoggingService.BusinessLogic(TraceSeverity.Unexpected,
                    "Error on dateGetter for fieldname " + fieldName + " Stack Message: " +
                    ex.Message);
            }
            return returnValue;
        }

        [DebuggerStepThrough]
        private void DateTimeSetter(string fieldName, string fieldXpath, DateTime newValue)
        {
            try
            {
                string assignedValue = newValue.ToString("s");
                XPathNavigator xnode = this.CreateNavigator().SelectSingleNode(fieldXpath, NamespaceManager);
                DeleteNil(xnode);
                xnode.SetValue(assignedValue);
            }
            catch (Exception ex)
            {
                LoggingService.BusinessLogic(TraceSeverity.Unexpected,
                    "Error on DateTimeSetter for fieldname " + fieldName + " Stack Message: " +
                    ex.Message);
            }
        }

        [DebuggerStepThrough]
        private DateTime DateTimeGetter(string fieldName, string fieldXpath)
        {
            DateTime returnValue = DateTime.MinValue; //i.e 
            try
            {
                returnValue = this.CreateNavigator().SelectSingleNode(fieldXpath, NamespaceManager).ValueAsDateTime;
            }
            catch (Exception ex)
            {
                LoggingService.BusinessLogic(TraceSeverity.Unexpected,
                    "Error on DateTimeGetter for fieldname " + fieldName + " Stack Message: " +
                    ex.Message);
            }
            return returnValue;
        }

        [DebuggerStepThrough]
        private void DeleteNil(XPathNavigator node)
        {
            if (node.MoveToAttribute("nil", "http://www.w3.org/2001/XMLSchema-instance"))
                node.DeleteSelf();
        }
    }
}