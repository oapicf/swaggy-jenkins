using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelHudsonMasterComputer
    /// </summary>
    public sealed class HudsonmodelHudsonMasterComputer:  IEquatable<HudsonmodelHudsonMasterComputer>
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
        public List<HudsonmodelHudsonMasterComputerexecutors> Executors { get; private set; }

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
        public HudsonmodelLabel1 LoadStatistics { get; private set; }

        /// <summary>
        /// ManualLaunchAllowed
        /// </summary>
        public bool? ManualLaunchAllowed { get; private set; }

        /// <summary>
        /// MonitorData
        /// </summary>
        public HudsonmodelHudsonMasterComputerMonitorData MonitorData { get; private set; }

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
        /// Use HudsonmodelHudsonMasterComputer.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelHudsonMasterComputer()
        {
        }

        private HudsonmodelHudsonMasterComputer(string Class, string DisplayName, List<HudsonmodelHudsonMasterComputerexecutors> Executors, string Icon, string IconClassName, bool? Idle, bool? JnlpAgent, bool? LaunchSupported, HudsonmodelLabel1 LoadStatistics, bool? ManualLaunchAllowed, HudsonmodelHudsonMasterComputerMonitorData MonitorData, int? NumExecutors, bool? Offline, string OfflineCause, string OfflineCauseReason, bool? TemporarilyOffline)
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
        /// Returns builder of HudsonmodelHudsonMasterComputer.
        /// </summary>
        /// <returns>HudsonmodelHudsonMasterComputerBuilder</returns>
        public static HudsonmodelHudsonMasterComputerBuilder Builder()
        {
            return new HudsonmodelHudsonMasterComputerBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelHudsonMasterComputerBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelHudsonMasterComputerBuilder</returns>
        public HudsonmodelHudsonMasterComputerBuilder With()
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

        public bool Equals(HudsonmodelHudsonMasterComputer other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelHudsonMasterComputer.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelHudsonMasterComputer</param>
        /// <param name="right">Compared (HudsonmodelHudsonMasterComputer</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelHudsonMasterComputer left, HudsonmodelHudsonMasterComputer right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelHudsonMasterComputer.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelHudsonMasterComputer</param>
        /// <param name="right">Compared (HudsonmodelHudsonMasterComputer</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelHudsonMasterComputer left, HudsonmodelHudsonMasterComputer right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelHudsonMasterComputer.
        /// </summary>
        public sealed class HudsonmodelHudsonMasterComputerBuilder
        {
            private string _Class;
            private string _DisplayName;
            private List<HudsonmodelHudsonMasterComputerexecutors> _Executors;
            private string _Icon;
            private string _IconClassName;
            private bool? _Idle;
            private bool? _JnlpAgent;
            private bool? _LaunchSupported;
            private HudsonmodelLabel1 _LoadStatistics;
            private bool? _ManualLaunchAllowed;
            private HudsonmodelHudsonMasterComputerMonitorData _MonitorData;
            private int? _NumExecutors;
            private bool? _Offline;
            private string _OfflineCause;
            private string _OfflineCauseReason;
            private bool? _TemporarilyOffline;

            internal HudsonmodelHudsonMasterComputerBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelHudsonMasterComputerBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public HudsonmodelHudsonMasterComputerBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.Executors property.
            /// </summary>
            /// <param name="value">Executors</param>
            public HudsonmodelHudsonMasterComputerBuilder Executors(List<HudsonmodelHudsonMasterComputerexecutors> value)
            {
                _Executors = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.Icon property.
            /// </summary>
            /// <param name="value">Icon</param>
            public HudsonmodelHudsonMasterComputerBuilder Icon(string value)
            {
                _Icon = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.IconClassName property.
            /// </summary>
            /// <param name="value">IconClassName</param>
            public HudsonmodelHudsonMasterComputerBuilder IconClassName(string value)
            {
                _IconClassName = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.Idle property.
            /// </summary>
            /// <param name="value">Idle</param>
            public HudsonmodelHudsonMasterComputerBuilder Idle(bool? value)
            {
                _Idle = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.JnlpAgent property.
            /// </summary>
            /// <param name="value">JnlpAgent</param>
            public HudsonmodelHudsonMasterComputerBuilder JnlpAgent(bool? value)
            {
                _JnlpAgent = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.LaunchSupported property.
            /// </summary>
            /// <param name="value">LaunchSupported</param>
            public HudsonmodelHudsonMasterComputerBuilder LaunchSupported(bool? value)
            {
                _LaunchSupported = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.LoadStatistics property.
            /// </summary>
            /// <param name="value">LoadStatistics</param>
            public HudsonmodelHudsonMasterComputerBuilder LoadStatistics(HudsonmodelLabel1 value)
            {
                _LoadStatistics = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.ManualLaunchAllowed property.
            /// </summary>
            /// <param name="value">ManualLaunchAllowed</param>
            public HudsonmodelHudsonMasterComputerBuilder ManualLaunchAllowed(bool? value)
            {
                _ManualLaunchAllowed = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.MonitorData property.
            /// </summary>
            /// <param name="value">MonitorData</param>
            public HudsonmodelHudsonMasterComputerBuilder MonitorData(HudsonmodelHudsonMasterComputerMonitorData value)
            {
                _MonitorData = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.NumExecutors property.
            /// </summary>
            /// <param name="value">NumExecutors</param>
            public HudsonmodelHudsonMasterComputerBuilder NumExecutors(int? value)
            {
                _NumExecutors = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.Offline property.
            /// </summary>
            /// <param name="value">Offline</param>
            public HudsonmodelHudsonMasterComputerBuilder Offline(bool? value)
            {
                _Offline = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.OfflineCause property.
            /// </summary>
            /// <param name="value">OfflineCause</param>
            public HudsonmodelHudsonMasterComputerBuilder OfflineCause(string value)
            {
                _OfflineCause = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.OfflineCauseReason property.
            /// </summary>
            /// <param name="value">OfflineCauseReason</param>
            public HudsonmodelHudsonMasterComputerBuilder OfflineCauseReason(string value)
            {
                _OfflineCauseReason = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputer.TemporarilyOffline property.
            /// </summary>
            /// <param name="value">TemporarilyOffline</param>
            public HudsonmodelHudsonMasterComputerBuilder TemporarilyOffline(bool? value)
            {
                _TemporarilyOffline = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelHudsonMasterComputer.
            /// </summary>
            /// <returns>HudsonmodelHudsonMasterComputer</returns>
            public HudsonmodelHudsonMasterComputer Build()
            {
                Validate();
                return new HudsonmodelHudsonMasterComputer(
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
