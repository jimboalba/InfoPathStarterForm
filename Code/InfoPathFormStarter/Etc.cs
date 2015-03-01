using System;
using System.Collections.Generic;
using System.Text;

namespace InfoPathFormStarter
{
    public partial class FormCode
    {
        private string CreatedBy
        {
            get { return StringGetter("CreatedBy", FieldXPath.CreatedBy); }
            set { StringSetter("CreatedBy", FieldXPath.CreatedBy, value); }
        }

        private DateTime CreatedDate
        {
            get { return DateGetter("CreatedDate", FieldXPath.CreatedDate); }
            set { DateSetter("CreatedDate", FieldXPath.CreatedDate, value); }
        }

        private string CurrentUserLogin
        {
            get { return StringGetter("CurrentUserLogin", FieldXPath.CurrentUserLogin); }
            set { StringSetter("CurrentUserLogin", FieldXPath.CurrentUserLogin, value); }
        }

        private string CurrentUserName
        {
            get { return StringGetter("CurrentUserName", FieldXPath.CurrentUserName); }
            set { StringSetter("CurrentUserName", FieldXPath.CurrentUserName, value); }
        }

        private string Debug
        {
            get { return RichTextGetter("Debug", FieldXPath.Debug); }
            set { RichTextSetter("Debug", FieldXPath.Debug, value); }
        }
        
        private string DocumentNumber
        {
            get { return StringGetter("DocumentNumber", FieldXPath.DocumentNumber); }
            set { StringSetter("DocumentNumber", FieldXPath.DocumentNumber, value); }
        }

        private string ExceptionMessage
        {
            get { return RichTextGetter("ExceptionMessage", FieldXPath.ExceptionMessage); }
            set { RichTextSetter("ExceptionMessage", FieldXPath.ExceptionMessage, value); }
        }

        private string Filename
        {
            get { return StringGetter("Filename", FieldXPath.Filename); }
            set { StringSetter("Filename", FieldXPath.Filename, value); }
        }

        private string FormTemplateVersion
        {
            get { return StringGetter("FormTemplateVersion", FieldXPath.FormTemplateVersion); }
            set { StringSetter("FormTemplateVersion", FieldXPath.FormTemplateVersion, value); }
        }

        private string FormVersion
        {
            get { return StringGetter("FormVersion", FieldXPath.FormVersion); }
            set { StringSetter("FormVersion", FieldXPath.FormVersion, value); }
        }

        private string History
        {
            get { return RichTextGetter("History", FieldXPath.History); }
            set { RichTextSetter("History", FieldXPath.History, value); }
        }

        private bool IsAdmin
        {
            get { return BoolGetter("isAdmin", FieldXPath.isAdmin); }
            set { BoolSetter("isAdmin", FieldXPath.isAdmin, value); }
        }

        private bool IsEmailSent
        {
            get { return BoolGetter("IsEmailSent", FieldXPath.IsEmailSent); }
            set { BoolSetter("IsEmailSent", FieldXPath.IsEmailSent, value); }
        }

        private bool IsNew
        {
            get { return BoolGetter("IsNew", FieldXPath.IsNew); }
            set { BoolSetter("IsNew", FieldXPath.IsNew, value); }
        }

        
    }
}
