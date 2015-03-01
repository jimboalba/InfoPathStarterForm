using System;
using System.Collections.Generic;
using System.Text;

using Microsoft.SharePoint.Administration;

namespace InfoPathFormStarter
{
    public class LoggingService : SPDiagnosticsServiceBase
    {
        /// <summary>
        /// Product Name or Project or Form Name
        /// <example>LeaveApplication</example>
        /// </summary>
        public static string DiagnosticeAreaOrUlsProduct = "MyInfoPathForm";

        private static LoggingService _current;

        private LoggingService()
            : base("InfoPathStarterForm", SPFarm.Local)
        {
        }

        public static LoggingService Current
        {
            get
            {
                if (_current == null)
                {
                    _current = new LoggingService();
                }

                return _current;
            }
        }

        protected override IEnumerable<SPDiagnosticsArea> ProvideAreas()
        {
            List<SPDiagnosticsCategory> categories = new List<SPDiagnosticsCategory>();

            #region Enumerate all categories here.

            /*
             * Log Severity Hierarchy. (Selecting a severity level will in include all levels below)
             * E.g. selecting Monitorable will log Monitorable and also Unexpected levels.
             *  1. VerboseEx
             *  2. Verbose - Writes low-level detail to the trace log file.
             *  3. Medium - Writes medium-level detail to the trace log file.
             *  4. High - Writes high-level detail to the trace log file.
             *  5. Monitorable - Represents an unusual code path and actions that should be monitored.
             *  6. Unexpected - Represents an unexpected code path and actions that should be monitored.
             *  7. None - Writes no trace information to the trace log file.
             * */

            categories.Add(new SPDiagnosticsCategory(LoggingServiceCategories.BusinessLogic, TraceSeverity.VerboseEx,
                                                     EventSeverity.None));
            categories.Add(new SPDiagnosticsCategory(LoggingServiceCategories.SendMail, TraceSeverity.VerboseEx,
                                                     EventSeverity.None));
            categories.Add(new SPDiagnosticsCategory(LoggingServiceCategories.Loading, TraceSeverity.VerboseEx,
                                                     EventSeverity.None));
            categories.Add(new SPDiagnosticsCategory(LoggingServiceCategories.Submit, TraceSeverity.VerboseEx,
                                                     EventSeverity.None));
            categories.Add(new SPDiagnosticsCategory(LoggingServiceCategories.DisplayLogic, TraceSeverity.VerboseEx,
                                                     EventSeverity.None));
            categories.Add(new SPDiagnosticsCategory(LoggingServiceCategories.Formula, TraceSeverity.VerboseEx,
                                                     EventSeverity.None));
            categories.Add(new SPDiagnosticsCategory(LoggingServiceCategories.Test, TraceSeverity.VerboseEx,
                                                     EventSeverity.None));

            #endregion Enumerate all categories here.

            List<SPDiagnosticsArea> areas = new List<SPDiagnosticsArea>();
            SPDiagnosticsArea area = new SPDiagnosticsArea(DiagnosticeAreaOrUlsProduct, categories);
            areas.Add(area);

            return areas;
        }

        #region WriteTrace method for each category

        public static void BusinessLogic(TraceSeverity severity, string message)
        {
            SPDiagnosticsCategory category = Current.Areas[DiagnosticeAreaOrUlsProduct]
                .Categories[LoggingServiceCategories.BusinessLogic];
            
            Current.WriteTrace(0, category, severity, message);
        }

        public static void SendMail(TraceSeverity severity, string message)
        {
            SPDiagnosticsCategory category = Current.Areas[DiagnosticeAreaOrUlsProduct]
                .Categories[LoggingServiceCategories.SendMail];

            if (null != category)
                Current.WriteTrace(0, category, severity, message);
        }

        public static void Submit(TraceSeverity severity, string message)
        {
            SPDiagnosticsCategory category = Current.Areas[DiagnosticeAreaOrUlsProduct]
                .Categories[LoggingServiceCategories.Submit];

            if (null != category)
                Current.WriteTrace(0, category, severity, message);
        }

        public static void Loading(TraceSeverity severity, string message)
        {
            SPDiagnosticsCategory category = Current.Areas[DiagnosticeAreaOrUlsProduct]
                .Categories[LoggingServiceCategories.Loading];

            if (null != category)
                Current.WriteTrace(0, category, severity, message);
        }

        public static void DisplayLogic(TraceSeverity severity, string message)
        {
            SPDiagnosticsCategory category = Current.Areas[DiagnosticeAreaOrUlsProduct]
                .Categories[LoggingServiceCategories.DisplayLogic];

            if (null != category)
                Current.WriteTrace(0, category, severity, message);
        }

        public static void Formula(TraceSeverity severity, string message)
        {
            SPDiagnosticsCategory category = Current.Areas[DiagnosticeAreaOrUlsProduct]
                .Categories[LoggingServiceCategories.Formula];

            if (null != category)
                Current.WriteTrace(0, category, severity, message);
        }

        public static void Test(TraceSeverity severity, string message)
        {
            SPDiagnosticsCategory category = Current.Areas[DiagnosticeAreaOrUlsProduct]
                .Categories[LoggingServiceCategories.Test]; //Make sure the category corresponds with the method name

            if (null != category)
                Current.WriteTrace(0, category, severity, message);
        }

        #endregion WriteTrace method for each category
    }
}
