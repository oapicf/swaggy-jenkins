using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonMasterComputer
    /// </summary>
    public sealed class HudsonMasterComputer:  IEquatable<HudsonMasterComputer>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// DisplayName
        /// </summary>
        public string DisplayName { get; private set; }

        /// <summary>
        /// Executors
        /// </summary>
        public List<HudsonMasterComputerexecutors> Executors { get; private set; }

        /// <summary>
        /// Icon
        /// </summary>
        public string Icon { get; private set; }

        /// <summary>
        /// IconClassName
        /// </summary>
        public string IconClassName { get; private set; }

        /// <summary>
        /// Idle
        /// </summary>
        public bool? Idle { get; private set; }

        /// <summary>
        /// JnlpAgent
        /// </summary>
        public bool? JnlpAgent { get; private set; }

        /// <summary>
        /// LaunchSupported
        /// </summary>
        public bool? LaunchSupported { get; private set; }

        /// <summary>
        /// LoadStatistics
        /// </summary>
        public Label1 LoadStatistics { get; private set; }

        /// <summary>
        /// ManualLaunchAllowed
        /// </summary>
        public bool? ManualLaunchAllowed { get; private set; }

        /// <summary>
        /// MonitorData
        /// </summary>
        public HudsonMasterComputermonitorData MonitorData { get; private set; }

        /// <summary>
        /// NumExecutors
        /// </summary>
        public int? NumExecutors { get; private set; }

        /// <summary>
        /// Offline
        /// </summary>
        public bool? Offline { get; private set; }

        /// <summary>
        /// OfflineCause
        /// </summary>
        public string OfflineCause { get; private set; }

        /// <summary>
        /// OfflineCauseReason
        /// </summary>
        public string OfflineCauseReason { get; private set; }

        /// <summary>
        /// TemporarilyOffline
        /// </summary>
        public bool? TemporarilyOffline { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonMasterComputer.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonMasterComputer()
        {
        }

        private HudsonMasterComputer(string Class, string DisplayName, List<HudsonMasterComputerexecutors> Executors, string Icon, string IconClassName, bool? Idle, bool? JnlpAgent, bool? LaunchSupported, Label1 LoadStatistics, bool? ManualLaunchAllowed, HudsonMasterComputermonitorData MonitorData, int? NumExecutors, bool? Offline, string OfflineCause, string OfflineCauseReason, bool? TemporarilyOffline)
        {
            
            this.Class = Class;
            
            this.DisplayName = DisplayName;
            
            this.Executors = Executors;
            
            this.Icon = Icon;
            
            this.IconClassName = IconClassName;
            
            this.Idle = Idle;
            
            this.JnlpAgent = JnlpAgent;
            
            this.LaunchSupported = LaunchSupported;
            
            this.LoadStatistics = LoadStatistics;
            
            this.ManualLaunchAllowed = ManualLaunchAllowed;
            
            this.MonitorData = MonitorData;
            
            this.NumExecutors = NumExecutors;
            
            this.Offline = Offline;
            
            this.OfflineCause = OfflineCause;
            
            this.OfflineCauseReason = OfflineCauseReason;
            
            this.TemporarilyOffline = TemporarilyOffline;
            
        }

        /// <summary>
        /// Returns builder of HudsonMasterComputer.
        /// </summary>
        /// <returns>HudsonMasterComputerBuilder</returns>
        public static HudsonMasterComputerBuilder Builder()
        {
            return new HudsonMasterComputerBuilder();
        }

        /// <summary>
        /// Returns HudsonMasterComputerBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonMasterComputerBuilder</returns>
        public HudsonMasterComputerBuilder With()
        {
            return Builder()
                .Class(Class)
                .DisplayName(DisplayName)
                .Executors(Executors)
                .Icon(Icon)
                .IconClassName(IconClassName)
                .Idle(Idle)
                .JnlpAgent(JnlpAgent)
                .LaunchSupported(LaunchSupported)
                .LoadStatistics(LoadStatistics)
                .ManualLaunchAllowed(ManualLaunchAllowed)
                .MonitorData(MonitorData)
                .NumExecutors(NumExecutors)
                .Offline(Offline)
                .OfflineCause(OfflineCause)
                .OfflineCauseReason(OfflineCauseReason)
                .TemporarilyOffline(TemporarilyOffline);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(HudsonMasterComputer other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonMasterComputer.
        /// </summary>
        /// <param name="left">Compared (HudsonMasterComputer</param>
        /// <param name="right">Compared (HudsonMasterComputer</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonMasterComputer left, HudsonMasterComputer right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonMasterComputer.
        /// </summary>
        /// <param name="left">Compared (HudsonMasterComputer</param>
        /// <param name="right">Compared (HudsonMasterComputer</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonMasterComputer left, HudsonMasterComputer right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonMasterComputer.
        /// </summary>
        public sealed class HudsonMasterComputerBuilder
        {
            private string _Class;
            private string _DisplayName;
            private List<HudsonMasterComputerexecutors> _Executors;
            private string _Icon;
            private string _IconClassName;
            private bool? _Idle;
            private bool? _JnlpAgent;
            private bool? _LaunchSupported;
            private Label1 _LoadStatistics;
            private bool? _ManualLaunchAllowed;
            private HudsonMasterComputermonitorData _MonitorData;
            private int? _NumExecutors;
            private bool? _Offline;
            private string _OfflineCause;
            private string _OfflineCauseReason;
            private bool? _TemporarilyOffline;

            internal HudsonMasterComputerBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonMasterComputerBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public HudsonMasterComputerBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.Executors property.
            /// </summary>
            /// <param name="value">Executors</param>
            public HudsonMasterComputerBuilder Executors(List<HudsonMasterComputerexecutors> value)
            {
                _Executors = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.Icon property.
            /// </summary>
            /// <param name="value">Icon</param>
            public HudsonMasterComputerBuilder Icon(string value)
            {
                _Icon = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.IconClassName property.
            /// </summary>
            /// <param name="value">IconClassName</param>
            public HudsonMasterComputerBuilder IconClassName(string value)
            {
                _IconClassName = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.Idle property.
            /// </summary>
            /// <param name="value">Idle</param>
            public HudsonMasterComputerBuilder Idle(bool? value)
            {
                _Idle = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.JnlpAgent property.
            /// </summary>
            /// <param name="value">JnlpAgent</param>
            public HudsonMasterComputerBuilder JnlpAgent(bool? value)
            {
                _JnlpAgent = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.LaunchSupported property.
            /// </summary>
            /// <param name="value">LaunchSupported</param>
            public HudsonMasterComputerBuilder LaunchSupported(bool? value)
            {
                _LaunchSupported = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.LoadStatistics property.
            /// </summary>
            /// <param name="value">LoadStatistics</param>
            public HudsonMasterComputerBuilder LoadStatistics(Label1 value)
            {
                _LoadStatistics = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.ManualLaunchAllowed property.
            /// </summary>
            /// <param name="value">ManualLaunchAllowed</param>
            public HudsonMasterComputerBuilder ManualLaunchAllowed(bool? value)
            {
                _ManualLaunchAllowed = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.MonitorData property.
            /// </summary>
            /// <param name="value">MonitorData</param>
            public HudsonMasterComputerBuilder MonitorData(HudsonMasterComputermonitorData value)
            {
                _MonitorData = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.NumExecutors property.
            /// </summary>
            /// <param name="value">NumExecutors</param>
            public HudsonMasterComputerBuilder NumExecutors(int? value)
            {
                _NumExecutors = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.Offline property.
            /// </summary>
            /// <param name="value">Offline</param>
            public HudsonMasterComputerBuilder Offline(bool? value)
            {
                _Offline = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.OfflineCause property.
            /// </summary>
            /// <param name="value">OfflineCause</param>
            public HudsonMasterComputerBuilder OfflineCause(string value)
            {
                _OfflineCause = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.OfflineCauseReason property.
            /// </summary>
            /// <param name="value">OfflineCauseReason</param>
            public HudsonMasterComputerBuilder OfflineCauseReason(string value)
            {
                _OfflineCauseReason = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputer.TemporarilyOffline property.
            /// </summary>
            /// <param name="value">TemporarilyOffline</param>
            public HudsonMasterComputerBuilder TemporarilyOffline(bool? value)
            {
                _TemporarilyOffline = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonMasterComputer.
            /// </summary>
            /// <returns>HudsonMasterComputer</returns>
            public HudsonMasterComputer Build()
            {
                Validate();
                return new HudsonMasterComputer(
                    Class: _Class,
                    DisplayName: _DisplayName,
                    Executors: _Executors,
                    Icon: _Icon,
                    IconClassName: _IconClassName,
                    Idle: _Idle,
                    JnlpAgent: _JnlpAgent,
                    LaunchSupported: _LaunchSupported,
                    LoadStatistics: _LoadStatistics,
                    ManualLaunchAllowed: _ManualLaunchAllowed,
                    MonitorData: _MonitorData,
                    NumExecutors: _NumExecutors,
                    Offline: _Offline,
                    OfflineCause: _OfflineCause,
                    OfflineCauseReason: _OfflineCauseReason,
                    TemporarilyOffline: _TemporarilyOffline
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}