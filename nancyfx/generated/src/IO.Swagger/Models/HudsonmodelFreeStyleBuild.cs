using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelFreeStyleBuild
    /// </summary>
    public sealed class HudsonmodelFreeStyleBuild:  IEquatable<HudsonmodelFreeStyleBuild>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Number
        /// </summary>
        public int? Number { get; private set; }

        /// <summary>
        /// Url
        /// </summary>
        public string Url { get; private set; }

        /// <summary>
        /// Actions
        /// </summary>
        public List<HudsonmodelCauseAction> Actions { get; private set; }

        /// <summary>
        /// Building
        /// </summary>
        public bool? Building { get; private set; }

        /// <summary>
        /// Description
        /// </summary>
        public string Description { get; private set; }

        /// <summary>
        /// DisplayName
        /// </summary>
        public string DisplayName { get; private set; }

        /// <summary>
        /// Duration
        /// </summary>
        public int? Duration { get; private set; }

        /// <summary>
        /// EstimatedDuration
        /// </summary>
        public int? EstimatedDuration { get; private set; }

        /// <summary>
        /// Executor
        /// </summary>
        public string Executor { get; private set; }

        /// <summary>
        /// FullDisplayName
        /// </summary>
        public string FullDisplayName { get; private set; }

        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// KeepLog
        /// </summary>
        public bool? KeepLog { get; private set; }

        /// <summary>
        /// QueueId
        /// </summary>
        public int? QueueId { get; private set; }

        /// <summary>
        /// Result
        /// </summary>
        public string Result { get; private set; }

        /// <summary>
        /// Timestamp
        /// </summary>
        public int? Timestamp { get; private set; }

        /// <summary>
        /// BuiltOn
        /// </summary>
        public string BuiltOn { get; private set; }

        /// <summary>
        /// ChangeSet
        /// </summary>
        public HudsonscmEmptyChangeLogSet ChangeSet { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonmodelFreeStyleBuild.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelFreeStyleBuild()
        {
        }

        private HudsonmodelFreeStyleBuild(string Class, int? Number, string Url, List<HudsonmodelCauseAction> Actions, bool? Building, string Description, string DisplayName, int? Duration, int? EstimatedDuration, string Executor, string FullDisplayName, string Id, bool? KeepLog, int? QueueId, string Result, int? Timestamp, string BuiltOn, HudsonscmEmptyChangeLogSet ChangeSet)
        {
            
            this.Class = Class;
            
            this.Number = Number;
            
            this.Url = Url;
            
            this.Actions = Actions;
            
            this.Building = Building;
            
            this.Description = Description;
            
            this.DisplayName = DisplayName;
            
            this.Duration = Duration;
            
            this.EstimatedDuration = EstimatedDuration;
            
            this.Executor = Executor;
            
            this.FullDisplayName = FullDisplayName;
            
            this.Id = Id;
            
            this.KeepLog = KeepLog;
            
            this.QueueId = QueueId;
            
            this.Result = Result;
            
            this.Timestamp = Timestamp;
            
            this.BuiltOn = BuiltOn;
            
            this.ChangeSet = ChangeSet;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelFreeStyleBuild.
        /// </summary>
        /// <returns>HudsonmodelFreeStyleBuildBuilder</returns>
        public static HudsonmodelFreeStyleBuildBuilder Builder()
        {
            return new HudsonmodelFreeStyleBuildBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelFreeStyleBuildBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelFreeStyleBuildBuilder</returns>
        public HudsonmodelFreeStyleBuildBuilder With()
        {
            return Builder()
                .Class(Class)
                .Number(Number)
                .Url(Url)
                .Actions(Actions)
                .Building(Building)
                .Description(Description)
                .DisplayName(DisplayName)
                .Duration(Duration)
                .EstimatedDuration(EstimatedDuration)
                .Executor(Executor)
                .FullDisplayName(FullDisplayName)
                .Id(Id)
                .KeepLog(KeepLog)
                .QueueId(QueueId)
                .Result(Result)
                .Timestamp(Timestamp)
                .BuiltOn(BuiltOn)
                .ChangeSet(ChangeSet);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(HudsonmodelFreeStyleBuild other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelFreeStyleBuild.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelFreeStyleBuild</param>
        /// <param name="right">Compared (HudsonmodelFreeStyleBuild</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelFreeStyleBuild left, HudsonmodelFreeStyleBuild right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelFreeStyleBuild.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelFreeStyleBuild</param>
        /// <param name="right">Compared (HudsonmodelFreeStyleBuild</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelFreeStyleBuild left, HudsonmodelFreeStyleBuild right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelFreeStyleBuild.
        /// </summary>
        public sealed class HudsonmodelFreeStyleBuildBuilder
        {
            private string _Class;
            private int? _Number;
            private string _Url;
            private List<HudsonmodelCauseAction> _Actions;
            private bool? _Building;
            private string _Description;
            private string _DisplayName;
            private int? _Duration;
            private int? _EstimatedDuration;
            private string _Executor;
            private string _FullDisplayName;
            private string _Id;
            private bool? _KeepLog;
            private int? _QueueId;
            private string _Result;
            private int? _Timestamp;
            private string _BuiltOn;
            private HudsonscmEmptyChangeLogSet _ChangeSet;

            internal HudsonmodelFreeStyleBuildBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelFreeStyleBuildBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.Number property.
            /// </summary>
            /// <param name="value">Number</param>
            public HudsonmodelFreeStyleBuildBuilder Number(int? value)
            {
                _Number = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public HudsonmodelFreeStyleBuildBuilder Url(string value)
            {
                _Url = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.Actions property.
            /// </summary>
            /// <param name="value">Actions</param>
            public HudsonmodelFreeStyleBuildBuilder Actions(List<HudsonmodelCauseAction> value)
            {
                _Actions = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.Building property.
            /// </summary>
            /// <param name="value">Building</param>
            public HudsonmodelFreeStyleBuildBuilder Building(bool? value)
            {
                _Building = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.Description property.
            /// </summary>
            /// <param name="value">Description</param>
            public HudsonmodelFreeStyleBuildBuilder Description(string value)
            {
                _Description = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public HudsonmodelFreeStyleBuildBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.Duration property.
            /// </summary>
            /// <param name="value">Duration</param>
            public HudsonmodelFreeStyleBuildBuilder Duration(int? value)
            {
                _Duration = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.EstimatedDuration property.
            /// </summary>
            /// <param name="value">EstimatedDuration</param>
            public HudsonmodelFreeStyleBuildBuilder EstimatedDuration(int? value)
            {
                _EstimatedDuration = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.Executor property.
            /// </summary>
            /// <param name="value">Executor</param>
            public HudsonmodelFreeStyleBuildBuilder Executor(string value)
            {
                _Executor = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.FullDisplayName property.
            /// </summary>
            /// <param name="value">FullDisplayName</param>
            public HudsonmodelFreeStyleBuildBuilder FullDisplayName(string value)
            {
                _FullDisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public HudsonmodelFreeStyleBuildBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.KeepLog property.
            /// </summary>
            /// <param name="value">KeepLog</param>
            public HudsonmodelFreeStyleBuildBuilder KeepLog(bool? value)
            {
                _KeepLog = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.QueueId property.
            /// </summary>
            /// <param name="value">QueueId</param>
            public HudsonmodelFreeStyleBuildBuilder QueueId(int? value)
            {
                _QueueId = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.Result property.
            /// </summary>
            /// <param name="value">Result</param>
            public HudsonmodelFreeStyleBuildBuilder Result(string value)
            {
                _Result = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.Timestamp property.
            /// </summary>
            /// <param name="value">Timestamp</param>
            public HudsonmodelFreeStyleBuildBuilder Timestamp(int? value)
            {
                _Timestamp = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.BuiltOn property.
            /// </summary>
            /// <param name="value">BuiltOn</param>
            public HudsonmodelFreeStyleBuildBuilder BuiltOn(string value)
            {
                _BuiltOn = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleBuild.ChangeSet property.
            /// </summary>
            /// <param name="value">ChangeSet</param>
            public HudsonmodelFreeStyleBuildBuilder ChangeSet(HudsonscmEmptyChangeLogSet value)
            {
                _ChangeSet = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelFreeStyleBuild.
            /// </summary>
            /// <returns>HudsonmodelFreeStyleBuild</returns>
            public HudsonmodelFreeStyleBuild Build()
            {
                Validate();
                return new HudsonmodelFreeStyleBuild(
                    Class: _Class,
                    Number: _Number,
                    Url: _Url,
                    Actions: _Actions,
                    Building: _Building,
                    Description: _Description,
                    DisplayName: _DisplayName,
                    Duration: _Duration,
                    EstimatedDuration: _EstimatedDuration,
                    Executor: _Executor,
                    FullDisplayName: _FullDisplayName,
                    Id: _Id,
                    KeepLog: _KeepLog,
                    QueueId: _QueueId,
                    Result: _Result,
                    Timestamp: _Timestamp,
                    BuiltOn: _BuiltOn,
                    ChangeSet: _ChangeSet
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
