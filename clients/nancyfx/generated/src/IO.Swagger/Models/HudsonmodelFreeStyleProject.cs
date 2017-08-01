using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelFreeStyleProject
    /// </summary>
    public sealed class HudsonmodelFreeStyleProject:  IEquatable<HudsonmodelFreeStyleProject>
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
        public List<HudsonmodelFreeStyleProjectactions> Actions { get; private set; }

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
        public List<HudsonmodelFreeStyleBuild> Builds { get; private set; }

        /// <summary>
        /// FirstBuild
        /// </summary>
        public HudsonmodelFreeStyleBuild FirstBuild { get; private set; }

        /// <summary>
        /// HealthReport
        /// </summary>
        public List<HudsonmodelFreeStyleProjecthealthReport> HealthReport { get; private set; }

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
        public HudsonmodelFreeStyleBuild LastBuild { get; private set; }

        /// <summary>
        /// LastCompletedBuild
        /// </summary>
        public HudsonmodelFreeStyleBuild LastCompletedBuild { get; private set; }

        /// <summary>
        /// LastFailedBuild
        /// </summary>
        public string LastFailedBuild { get; private set; }

        /// <summary>
        /// LastStableBuild
        /// </summary>
        public HudsonmodelFreeStyleBuild LastStableBuild { get; private set; }

        /// <summary>
        /// LastSuccessfulBuild
        /// </summary>
        public HudsonmodelFreeStyleBuild LastSuccessfulBuild { get; private set; }

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
        public HudsonscmNullSCM Scm { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonmodelFreeStyleProject.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelFreeStyleProject()
        {
        }

        private HudsonmodelFreeStyleProject(string Class, string Name, string Url, string Color, List<HudsonmodelFreeStyleProjectactions> Actions, string Description, string DisplayName, string DisplayNameOrNull, string FullDisplayName, string FullName, bool? Buildable, List<HudsonmodelFreeStyleBuild> Builds, HudsonmodelFreeStyleBuild FirstBuild, List<HudsonmodelFreeStyleProjecthealthReport> HealthReport, bool? InQueue, bool? KeepDependencies, HudsonmodelFreeStyleBuild LastBuild, HudsonmodelFreeStyleBuild LastCompletedBuild, string LastFailedBuild, HudsonmodelFreeStyleBuild LastStableBuild, HudsonmodelFreeStyleBuild LastSuccessfulBuild, string LastUnstableBuild, string LastUnsuccessfulBuild, int? NextBuildNumber, string QueueItem, bool? ConcurrentBuild, HudsonscmNullSCM Scm)
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
        /// Returns builder of HudsonmodelFreeStyleProject.
        /// </summary>
        /// <returns>HudsonmodelFreeStyleProjectBuilder</returns>
        public static HudsonmodelFreeStyleProjectBuilder Builder()
        {
            return new HudsonmodelFreeStyleProjectBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelFreeStyleProjectBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelFreeStyleProjectBuilder</returns>
        public HudsonmodelFreeStyleProjectBuilder With()
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

        public bool Equals(HudsonmodelFreeStyleProject other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelFreeStyleProject.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelFreeStyleProject</param>
        /// <param name="right">Compared (HudsonmodelFreeStyleProject</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelFreeStyleProject left, HudsonmodelFreeStyleProject right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelFreeStyleProject.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelFreeStyleProject</param>
        /// <param name="right">Compared (HudsonmodelFreeStyleProject</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelFreeStyleProject left, HudsonmodelFreeStyleProject right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelFreeStyleProject.
        /// </summary>
        public sealed class HudsonmodelFreeStyleProjectBuilder
        {
            private string _Class;
            private string _Name;
            private string _Url;
            private string _Color;
            private List<HudsonmodelFreeStyleProjectactions> _Actions;
            private string _Description;
            private string _DisplayName;
            private string _DisplayNameOrNull;
            private string _FullDisplayName;
            private string _FullName;
            private bool? _Buildable;
            private List<HudsonmodelFreeStyleBuild> _Builds;
            private HudsonmodelFreeStyleBuild _FirstBuild;
            private List<HudsonmodelFreeStyleProjecthealthReport> _HealthReport;
            private bool? _InQueue;
            private bool? _KeepDependencies;
            private HudsonmodelFreeStyleBuild _LastBuild;
            private HudsonmodelFreeStyleBuild _LastCompletedBuild;
            private string _LastFailedBuild;
            private HudsonmodelFreeStyleBuild _LastStableBuild;
            private HudsonmodelFreeStyleBuild _LastSuccessfulBuild;
            private string _LastUnstableBuild;
            private string _LastUnsuccessfulBuild;
            private int? _NextBuildNumber;
            private string _QueueItem;
            private bool? _ConcurrentBuild;
            private HudsonscmNullSCM _Scm;

            internal HudsonmodelFreeStyleProjectBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelFreeStyleProjectBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public HudsonmodelFreeStyleProjectBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public HudsonmodelFreeStyleProjectBuilder Url(string value)
            {
                _Url = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.Color property.
            /// </summary>
            /// <param name="value">Color</param>
            public HudsonmodelFreeStyleProjectBuilder Color(string value)
            {
                _Color = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.Actions property.
            /// </summary>
            /// <param name="value">Actions</param>
            public HudsonmodelFreeStyleProjectBuilder Actions(List<HudsonmodelFreeStyleProjectactions> value)
            {
                _Actions = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.Description property.
            /// </summary>
            /// <param name="value">Description</param>
            public HudsonmodelFreeStyleProjectBuilder Description(string value)
            {
                _Description = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public HudsonmodelFreeStyleProjectBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.DisplayNameOrNull property.
            /// </summary>
            /// <param name="value">DisplayNameOrNull</param>
            public HudsonmodelFreeStyleProjectBuilder DisplayNameOrNull(string value)
            {
                _DisplayNameOrNull = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.FullDisplayName property.
            /// </summary>
            /// <param name="value">FullDisplayName</param>
            public HudsonmodelFreeStyleProjectBuilder FullDisplayName(string value)
            {
                _FullDisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.FullName property.
            /// </summary>
            /// <param name="value">FullName</param>
            public HudsonmodelFreeStyleProjectBuilder FullName(string value)
            {
                _FullName = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.Buildable property.
            /// </summary>
            /// <param name="value">Buildable</param>
            public HudsonmodelFreeStyleProjectBuilder Buildable(bool? value)
            {
                _Buildable = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.Builds property.
            /// </summary>
            /// <param name="value">Builds</param>
            public HudsonmodelFreeStyleProjectBuilder Builds(List<HudsonmodelFreeStyleBuild> value)
            {
                _Builds = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.FirstBuild property.
            /// </summary>
            /// <param name="value">FirstBuild</param>
            public HudsonmodelFreeStyleProjectBuilder FirstBuild(HudsonmodelFreeStyleBuild value)
            {
                _FirstBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.HealthReport property.
            /// </summary>
            /// <param name="value">HealthReport</param>
            public HudsonmodelFreeStyleProjectBuilder HealthReport(List<HudsonmodelFreeStyleProjecthealthReport> value)
            {
                _HealthReport = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.InQueue property.
            /// </summary>
            /// <param name="value">InQueue</param>
            public HudsonmodelFreeStyleProjectBuilder InQueue(bool? value)
            {
                _InQueue = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.KeepDependencies property.
            /// </summary>
            /// <param name="value">KeepDependencies</param>
            public HudsonmodelFreeStyleProjectBuilder KeepDependencies(bool? value)
            {
                _KeepDependencies = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.LastBuild property.
            /// </summary>
            /// <param name="value">LastBuild</param>
            public HudsonmodelFreeStyleProjectBuilder LastBuild(HudsonmodelFreeStyleBuild value)
            {
                _LastBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.LastCompletedBuild property.
            /// </summary>
            /// <param name="value">LastCompletedBuild</param>
            public HudsonmodelFreeStyleProjectBuilder LastCompletedBuild(HudsonmodelFreeStyleBuild value)
            {
                _LastCompletedBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.LastFailedBuild property.
            /// </summary>
            /// <param name="value">LastFailedBuild</param>
            public HudsonmodelFreeStyleProjectBuilder LastFailedBuild(string value)
            {
                _LastFailedBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.LastStableBuild property.
            /// </summary>
            /// <param name="value">LastStableBuild</param>
            public HudsonmodelFreeStyleProjectBuilder LastStableBuild(HudsonmodelFreeStyleBuild value)
            {
                _LastStableBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.LastSuccessfulBuild property.
            /// </summary>
            /// <param name="value">LastSuccessfulBuild</param>
            public HudsonmodelFreeStyleProjectBuilder LastSuccessfulBuild(HudsonmodelFreeStyleBuild value)
            {
                _LastSuccessfulBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.LastUnstableBuild property.
            /// </summary>
            /// <param name="value">LastUnstableBuild</param>
            public HudsonmodelFreeStyleProjectBuilder LastUnstableBuild(string value)
            {
                _LastUnstableBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.LastUnsuccessfulBuild property.
            /// </summary>
            /// <param name="value">LastUnsuccessfulBuild</param>
            public HudsonmodelFreeStyleProjectBuilder LastUnsuccessfulBuild(string value)
            {
                _LastUnsuccessfulBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.NextBuildNumber property.
            /// </summary>
            /// <param name="value">NextBuildNumber</param>
            public HudsonmodelFreeStyleProjectBuilder NextBuildNumber(int? value)
            {
                _NextBuildNumber = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.QueueItem property.
            /// </summary>
            /// <param name="value">QueueItem</param>
            public HudsonmodelFreeStyleProjectBuilder QueueItem(string value)
            {
                _QueueItem = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.ConcurrentBuild property.
            /// </summary>
            /// <param name="value">ConcurrentBuild</param>
            public HudsonmodelFreeStyleProjectBuilder ConcurrentBuild(bool? value)
            {
                _ConcurrentBuild = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProject.Scm property.
            /// </summary>
            /// <param name="value">Scm</param>
            public HudsonmodelFreeStyleProjectBuilder Scm(HudsonscmNullSCM value)
            {
                _Scm = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelFreeStyleProject.
            /// </summary>
            /// <returns>HudsonmodelFreeStyleProject</returns>
            public HudsonmodelFreeStyleProject Build()
            {
                Validate();
                return new HudsonmodelFreeStyleProject(
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
