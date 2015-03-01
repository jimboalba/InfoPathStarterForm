using System;
using System.Collections.Generic;
using System.Text;

namespace InfoPathFormStarter
{
    public static class FieldXPath
    {
        #region etc
        public static readonly string CreatedBy = "/my:myFields/my:etc/my:CreatedBy";
        public static readonly string CreatedDate = "/my:myFields/my:etc/my:CreatedDate";
        public static readonly string CurrentUserLogin = "/my:myFields/my:etc/my:CurrentUserLogin";
        public static readonly string CurrentUserName = "/my:myFields/my:etc/my:CurrentUserName";
        public static readonly string Debug = "/my:myFields/my:etc/my:Debug";
        public static readonly string DocumentNumber = "/my:myFields/my:etc/my:DocumentNumber";
        public static readonly string ExceptionMessage = "/my:myFields/my:etc/my:ExceptionMessage";
        public static readonly string Filename = "/my:myFields/my:etc/my:Filename";
        public static readonly string FormTemplateVersion = "/my:myFields/my:etc/my:FormTemplateVersion";
        public static readonly string FormVersion = "/my:myFields/my:etc/my:FormVersion";
        public static readonly string History = "/my:myFields/my:etc/my:History";
        public static readonly string isAdmin = "/my:myFields/my:etc/my:isAdmin";
        public static readonly string IsEmailSent = "/my:myFields/my:etc/my:isEmailSent";
        public static readonly string IsNew = "/my:myFields/my:etc/my:isNew";
        
        #endregion 

        #region Conditional Formmating

        public static readonly string ShowAdmin = "/my:myFields/my:ConditionalFormatting/my:ShowAdmin";
        public static readonly string HideDebug = "/my:myFields/my:ConditionalFormatting/my:HideDebug";
        public static readonly string ShowHistory = "/my:myFields/my:ConditionalFormatting/my:ShowHistory";

        #endregion 

        public static readonly string Description = "/my:myFields/my:Description";
        

    }
}
