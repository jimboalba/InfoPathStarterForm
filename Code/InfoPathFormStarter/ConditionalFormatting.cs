using System;
using System.Collections.Generic;
using System.Text;

namespace InfoPathFormStarter
{
    public partial class FormCode
    {
        private bool HideDebug
        {
            get { return BoolGetter("HideDebug", FieldXPath.HideDebug); }
            set { BoolSetter("HideDebug", FieldXPath.HideDebug, value); }
        }

        private bool ShowAdmin
        {
            get { return BoolGetter("ShowAdmin", FieldXPath.ShowAdmin); }
            set { BoolSetter("ShowAdmin", FieldXPath.ShowAdmin, value); }
        }

        private bool ShowHistory
        {
            get { return BoolGetter("ShowHistory", FieldXPath.ShowHistory); }
            set { BoolSetter("ShowHistory", FieldXPath.ShowHistory, value); }
        }
    }
}
