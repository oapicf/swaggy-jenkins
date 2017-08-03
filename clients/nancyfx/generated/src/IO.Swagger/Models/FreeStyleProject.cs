using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// FreeStyleProject
    /// </summary>
    public sealed class FreeStyleProject:  IEquatable<FreeStyleProject>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }

        /// <summary>
        /// Url
        /// </summary>
        public string Url { get; private set; }

        /// <summary>
        /// Color
        /// </summary>
        public string Color { get; private set; }

        /// <summary>
        /// Actions
        /// </summary>
        public List<FreeStyleProjectactions> Actions { get; private set; }

        /// <summary>
        /// Description
        /// </summary>
        public string Description { get; private set; }

        /// <summary>
        /// DisplayName
        /// </summary>
        public string DisplayName { get; private set; }

        /// <summary>
        /// DisplayNameOrNull
        /// </summary>
        public string DisplayNameOrNull { get; private set; }

        /// <summary>
        /// FullDisplayName
        /// </summary>
        public string FullDisplayName { get; private set; }

        /// <summary>
        /// FullName
        /// </summary>
        public string FullName { get; private set; }

        /// <summary>
        /// Buildable
        /// </summary>
        public bool? Buildable { get; private set; }

        /// <summary>
        /// Builds
        /// </summary>
        public List<FreeStyleBuild> Builds { get; private set; }

        /// <summary>
        /// FirstBuild
        /// </summary>
        public FreeStyleBuild FirstBuild { get; private set; }

        /// <summary>
        /// HealthReport
        /// </summary>
        public List<FreeStyleProjecthealthReport> HealthReport { get; private set; }

        /// <summary>
        /// InQueue
        /// </summary>
        public bool? InQueue { get; private set; }

        /// <summary>
        /// KeepDependencies
        /// </summary>
        public bool? KeepDependencies { get; private set; }

        /// <summary>
        /// LastBuild
        /// </summary>
        public FreeStyleBuild LastBuild { get; private set; }

        /// <summary>
        /// LastCompletedBuild
        /// </summary>
        public FreeStyleBuild LastCompletedBuild { get; private set; }

        /// <summary>
        /// LastFailedBuild
        /// </summary>
        public string LastFailedBuild { get; private set; }

        /// <summary>
        /// LastStableBuild
        /// </summary>
        public FreeStyleBuild LastStableBuild { get; private set; }

        /// <summary>
        /// LastSuccessfulBuild
        /// </summary>
        public FreeStyleBuild LastSuccessfulBuild { get; private set; }

        /// <summary>
        /// LastUnstableBuild
        /// </summary>
        public string LastUnstableBuild { get; private set; }

        /// <summary>
        /// LastUnsuccessfulBuild
        /// </summary>
        public string LastUnsuccessfulBuild { get; private set; }

        /// <summary>
        /// NextBuildNumber
        /// </summary>
        public int? NextBuildNumber { get; private set; }

        /// <summary>
        /// QueueItem
        /// </summary>
        public string QueueItem { get; private set; }

        /// <summary>
        /// ConcurrentBuild
        /// </summary>
        public bool? ConcurrentBuild { get; private set; }

        /// <summary>
        /// Scm
        /// </summary>
        public NullSCM Scm { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use FreeStyleProject.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public FreeStyleProject()
        {
        }

        private FreeStyleProject(string Class, string Name, string Url, string Color, List<FreeStyleProjectactions> Actions, string Description, string DisplayName, string DisplayNameOrNull, string FullDisplayName, string FullName, bool? Buildable, List<FreeStyleBuild> Builds, FreeStyleBuild FirstBuild, List<FreeStyleProjecthealthReport> HealthReport, bool? InQueue, bool? KeepDependencies, FreeStyleBuild LastBuild, FreeStyleBuild LastCompletedBuild, string LastFailedBuild, FreeStyleBuild LastStableBuild, FreeStyleBuild LastSuccessfulBuild, string LastUnstableBuild, string LastUnsuccessfulBuild, int? NextBuildNumber, string QueueItem, bool? ConcurrentBuild, NullSCM Scm)
        {
            
            this.Class = Class;
            
            this.Name = Name;
            
            this.Url = Url;
            
            this.Color = Color;
            
            this.Actions = Actions;
            
            this.Description = Description;
            
            this.DisplayName = DisplayName;
            
            this.DisplayNameOrNull = DisplayNameOrNull;
            
            this.FullDisplayName = FullDisplayName;
            
            this.FullName = FullName;
            
            this.Buildable = Buildable;
            
            this.Builds = Builds;
            
            this.FirstBuild = FirstBuild;
            
            this.HealthReport = HealthReport;
            
            this.InQueue = InQueue;
            
            this.KeepDependencies = KeepDependencies;
            
            this.LastBuild = LastBuild;
            
            this.LastCompletedBuild = LastCompletedBuild;
            
            this.LastFailedBuild = LastFailedBuild;
            
            this.LastStableBuild = LastStableBuild;
            
            this.LastSuccessfulBuild = LastSuccessfulBuild;
            
            this.LastUnstableBuild = LastUnstableBuild;
            
            this.LastUnsuccessfulBuild = LastUnsuccessfulBuild;
            
            this.NextBuildNumber = NextBuildNumber;
            
            this.QueueItem = QueueItem;
            
            this.ConcurrentBuild = ConcurrentBuild;
            
            this.Scm = Scm;
            
        }

        /// <summary>
        /// Returns builder of FreeStyleProject.
        /// </summary>
        /// <returns>FreeStyleProjectBuilder</returns>
        public static FreeStyleProjectBuilder Builder()
        {
            return new FreeStyleProjectBuilder();
        }

        /// <summary>
        /// Returns FreeStyleProjectBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>FreeStyleProjectBuilder</returns>
        public FreeStyleProjectBuilder With()
        {
            return Builder()
                .Class(Class)
                .Name(Name)
                .Url(Url)
                .Color(Color)
                .Actions(Actions)
                .Description(Description)
                .DisplayName(DisplayName)
                .DisplayNameOrNull(DisplayNameOrNull)
                .FullDisplayName(FullDisplayName)
                .FullName(FullName)
                .Buildable(Buildable)
                .Builds(Builds)
                .FirstBuild(FirstBuild)
                .HealthReport(HealthReport)
                .InQueue(InQueue)
                .KeepDependencies(KeepDependencies)
                .LastBuild(LastBuild)
                .LastCompletedBuild(LastCompletedBuild)
                .LastFailedBuild(LastFailedBuild)
                .LastStableBuild(LastStableBuild)
                .LastSuccessfulBuild(LastSuccessfulBuild)
                .LastUnstableBuild(LastUnstableBuild)
                .LastUnsuccessfulBuild(LastUnsuccessfulBuild)
                .NextBuildNumber(NextBuildNumber)
                .QueueItem(QueueItem)
                .ConcurrentBuild(ConcurrentBuild)
                .Scm(Scm);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(FreeStyleProject other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (FreeStyleProject.
        /// </summary>
        /// <param name="left">Compared (FreeStyleProject</param>
        /// <param name="right">Compared (FreeStyleProject</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (FreeStyleProject left, FreeStyleProject right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (FreeStyleProject.
        /// </summary>
        /// <param name="left">Compared (FreeStyleProject</param>
        /// <param name="right">Compared (FreeStyleProject</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (FreeStyleProject left, FreeStyleProject right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of FreeStyleProject.
        /// </summary>
        public sealed class FreeStyleProjectBuilder
        {
            private string _Class;
            private string _Name;
            private string _Url;
            private string _Color;
            private List<FreeStyleProjectactions> _Actions;
            private string _Description;
            private string _DisplayName;
            private string _DisplayNameOrNull;
            private string _FullDisplayName;
            private string _FullName;
            private bool? _Buildable;
            private List<FreeStyleBuild> _Builds;
            private FreeStyleBuild _FirstBuild;
            private List<FreeStyleProjecthealthReport> _HealthReport;
            private bool? _InQueue;
            private bool? _KeepDependencies;
            private FreeStyleBuild _LastBuild;
            private FreeStyleBuild _LastCompletedBuild;
            private string _LastFailedBuild;
            private FreeStyleBuild _LastStableBuild;
            private FreeStyleBuild _LastSuccessfulBuild;
            private string _LastUnstableBuild;
            private string _LastUnsuccessfulBuild;
            private int? _NextBuildNumber;
            private string _QueueItem;
            private bool? _ConcurrentBuild;
            private NullSCM _Scm;

            internal FreeStyleProjectBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for FreeStyleProject.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public FreeStyleProjectBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public FreeStyleProjectBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public FreeStyleProjectBuilder Url(string value)
            {
                _Url = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.Color property.
            /// </summary>
            /// <param name="value">Color</param>
            public FreeStyleProjectBuilder Color(string value)
            {
                _Color = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.Actions property.
            /// </summary>
            /// <param name="value">Actions</param>
            public FreeStyleProjectBuilder Actions(List<FreeStyleProjectactions> value)
            {
                _Actions = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.Description property.
            /// </summary>
            /// <param name="value">Description</param>
            public FreeStyleProjectBuilder Description(string value)
            {
                _Description = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public FreeStyleProjectBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.DisplayNameOrNull property.
            /// </summary>
            /// <param name="value">DisplayNameOrNull</param>
            public FreeStyleProjectBuilder DisplayNameOrNull(string value)
            {
                _DisplayNameOrNull = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.FullDisplayName property.
            /// </summary>
            /// <param name="value">FullDisplayName</param>
            public FreeStyleProjectBuilder FullDisplayName(string value)
            {
                _FullDisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.FullName property.
            /// </summary>
            /// <param name="value">FullName</param>
            public FreeStyleProjectBuilder FullName(string value)
            {
                _FullName = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.Buildable property.
            /// </summary>
            /// <param name="value">Buildable</param>
            public FreeStyleProjectBuilder Buildable(bool? value)
            {
                _Buildable = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.Builds property.
            /// </summary>
            /// <param name="value">Builds</param>
            public FreeStyleProjectBuilder Builds(List<FreeStyleBuild> value)
            {
                _Builds = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.FirstBuild property.
            /// </summary>
            /// <param name="value">FirstBuild</param>
            public FreeStyleProjectBuilder FirstBuild(FreeStyleBuild value)
            {
                _FirstBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.HealthReport property.
            /// </summary>
            /// <param name="value">HealthReport</param>
            public FreeStyleProjectBuilder HealthReport(List<FreeStyleProjecthealthReport> value)
            {
                _HealthReport = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.InQueue property.
            /// </summary>
            /// <param name="value">InQueue</param>
            public FreeStyleProjectBuilder InQueue(bool? value)
            {
                _InQueue = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.KeepDependencies property.
            /// </summary>
            /// <param name="value">KeepDependencies</param>
            public FreeStyleProjectBuilder KeepDependencies(bool? value)
            {
                _KeepDependencies = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.LastBuild property.
            /// </summary>
            /// <param name="value">LastBuild</param>
            public FreeStyleProjectBuilder LastBuild(FreeStyleBuild value)
            {
                _LastBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.LastCompletedBuild property.
            /// </summary>
            /// <param name="value">LastCompletedBuild</param>
            public FreeStyleProjectBuilder LastCompletedBuild(FreeStyleBuild value)
            {
                _LastCompletedBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.LastFailedBuild property.
            /// </summary>
            /// <param name="value">LastFailedBuild</param>
            public FreeStyleProjectBuilder LastFailedBuild(string value)
            {
                _LastFailedBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.LastStableBuild property.
            /// </summary>
            /// <param name="value">LastStableBuild</param>
            public FreeStyleProjectBuilder LastStableBuild(FreeStyleBuild value)
            {
                _LastStableBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.LastSuccessfulBuild property.
            /// </summary>
            /// <param name="value">LastSuccessfulBuild</param>
            public FreeStyleProjectBuilder LastSuccessfulBuild(FreeStyleBuild value)
            {
                _LastSuccessfulBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.LastUnstableBuild property.
            /// </summary>
            /// <param name="value">LastUnstableBuild</param>
            public FreeStyleProjectBuilder LastUnstableBuild(string value)
            {
                _LastUnstableBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.LastUnsuccessfulBuild property.
            /// </summary>
            /// <param name="value">LastUnsuccessfulBuild</param>
            public FreeStyleProjectBuilder LastUnsuccessfulBuild(string value)
            {
                _LastUnsuccessfulBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.NextBuildNumber property.
            /// </summary>
            /// <param name="value">NextBuildNumber</param>
            public FreeStyleProjectBuilder NextBuildNumber(int? value)
            {
                _NextBuildNumber = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.QueueItem property.
            /// </summary>
            /// <param name="value">QueueItem</param>
            public FreeStyleProjectBuilder QueueItem(string value)
            {
                _QueueItem = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.ConcurrentBuild property.
            /// </summary>
            /// <param name="value">ConcurrentBuild</param>
            public FreeStyleProjectBuilder ConcurrentBuild(bool? value)
            {
                _ConcurrentBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProject.Scm property.
            /// </summary>
            /// <param name="value">Scm</param>
            public FreeStyleProjectBuilder Scm(NullSCM value)
            {
                _Scm = value;
                return this;
            }


            /// <summary>
            /// Builds instance of FreeStyleProject.
            /// </summary>
            /// <returns>FreeStyleProject</returns>
            public FreeStyleProject Build()
            {
                Validate();
                return new FreeStyleProject(
                    Class: _Class,
                    Name: _Name,
                    Url: _Url,
                    Color: _Color,
                    Actions: _Actions,
                    Description: _Description,
                    DisplayName: _DisplayName,
                    DisplayNameOrNull: _DisplayNameOrNull,
                    FullDisplayName: _FullDisplayName,
                    FullName: _FullName,
                    Buildable: _Buildable,
                    Builds: _Builds,
                    FirstBuild: _FirstBuild,
                    HealthReport: _HealthReport,
                    InQueue: _InQueue,
                    KeepDependencies: _KeepDependencies,
                    LastBuild: _LastBuild,
                    LastCompletedBuild: _LastCompletedBuild,
                    LastFailedBuild: _LastFailedBuild,
                    LastStableBuild: _LastStableBuild,
                    LastSuccessfulBuild: _LastSuccessfulBuild,
                    LastUnstableBuild: _LastUnstableBuild,
                    LastUnsuccessfulBuild: _LastUnsuccessfulBuild,
                    NextBuildNumber: _NextBuildNumber,
                    QueueItem: _QueueItem,
                    ConcurrentBuild: _ConcurrentBuild,
                    Scm: _Scm
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}