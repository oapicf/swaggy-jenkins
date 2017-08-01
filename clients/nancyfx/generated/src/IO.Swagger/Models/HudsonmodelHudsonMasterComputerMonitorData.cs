using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelHudsonMasterComputerMonitorData
    /// </summary>
    public sealed class HudsonmodelHudsonMasterComputerMonitorData:  IEquatable<HudsonmodelHudsonMasterComputerMonitorData>
    { 
        /// <summary>
        /// HudsonNodeMonitorsSwapSpaceMonitor
        /// </summary>
        public HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 HudsonNodeMonitorsSwapSpaceMonitor { get; private set; }

        /// <summary>
        /// HudsonNodeMonitorsTemporarySpaceMonitor
        /// </summary>
        public HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace HudsonNodeMonitorsTemporarySpaceMonitor { get; private set; }

        /// <summary>
        /// HudsonNodeMonitorsDiskSpaceMonitor
        /// </summary>
        public HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace HudsonNodeMonitorsDiskSpaceMonitor { get; private set; }

        /// <summary>
        /// HudsonNodeMonitorsArchitectureMonitor
        /// </summary>
        public string HudsonNodeMonitorsArchitectureMonitor { get; private set; }

        /// <summary>
        /// HudsonNodeMonitorsResponseTimeMonitor
        /// </summary>
        public HudsonnodeMonitorsResponseTimeMonitorData HudsonNodeMonitorsResponseTimeMonitor { get; private set; }

        /// <summary>
        /// HudsonNodeMonitorsClockMonitor
        /// </summary>
        public HudsonutilClockDifference HudsonNodeMonitorsClockMonitor { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonmodelHudsonMasterComputerMonitorData.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelHudsonMasterComputerMonitorData()
        {
        }

        private HudsonmodelHudsonMasterComputerMonitorData(HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 HudsonNodeMonitorsSwapSpaceMonitor, HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace HudsonNodeMonitorsTemporarySpaceMonitor, HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace HudsonNodeMonitorsDiskSpaceMonitor, string HudsonNodeMonitorsArchitectureMonitor, HudsonnodeMonitorsResponseTimeMonitorData HudsonNodeMonitorsResponseTimeMonitor, HudsonutilClockDifference HudsonNodeMonitorsClockMonitor, string Class)
        {
            
            this.HudsonNodeMonitorsSwapSpaceMonitor = HudsonNodeMonitorsSwapSpaceMonitor;
            
            this.HudsonNodeMonitorsTemporarySpaceMonitor = HudsonNodeMonitorsTemporarySpaceMonitor;
            
            this.HudsonNodeMonitorsDiskSpaceMonitor = HudsonNodeMonitorsDiskSpaceMonitor;
            
            this.HudsonNodeMonitorsArchitectureMonitor = HudsonNodeMonitorsArchitectureMonitor;
            
            this.HudsonNodeMonitorsResponseTimeMonitor = HudsonNodeMonitorsResponseTimeMonitor;
            
            this.HudsonNodeMonitorsClockMonitor = HudsonNodeMonitorsClockMonitor;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelHudsonMasterComputerMonitorData.
        /// </summary>
        /// <returns>HudsonmodelHudsonMasterComputerMonitorDataBuilder</returns>
        public static HudsonmodelHudsonMasterComputerMonitorDataBuilder Builder()
        {
            return new HudsonmodelHudsonMasterComputerMonitorDataBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelHudsonMasterComputerMonitorDataBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelHudsonMasterComputerMonitorDataBuilder</returns>
        public HudsonmodelHudsonMasterComputerMonitorDataBuilder With()
        {
            return Builder()
                .HudsonNodeMonitorsSwapSpaceMonitor(HudsonNodeMonitorsSwapSpaceMonitor)
                .HudsonNodeMonitorsTemporarySpaceMonitor(HudsonNodeMonitorsTemporarySpaceMonitor)
                .HudsonNodeMonitorsDiskSpaceMonitor(HudsonNodeMonitorsDiskSpaceMonitor)
                .HudsonNodeMonitorsArchitectureMonitor(HudsonNodeMonitorsArchitectureMonitor)
                .HudsonNodeMonitorsResponseTimeMonitor(HudsonNodeMonitorsResponseTimeMonitor)
                .HudsonNodeMonitorsClockMonitor(HudsonNodeMonitorsClockMonitor)
                .Class(Class);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(HudsonmodelHudsonMasterComputerMonitorData other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelHudsonMasterComputerMonitorData.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelHudsonMasterComputerMonitorData</param>
        /// <param name="right">Compared (HudsonmodelHudsonMasterComputerMonitorData</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelHudsonMasterComputerMonitorData left, HudsonmodelHudsonMasterComputerMonitorData right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelHudsonMasterComputerMonitorData.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelHudsonMasterComputerMonitorData</param>
        /// <param name="right">Compared (HudsonmodelHudsonMasterComputerMonitorData</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelHudsonMasterComputerMonitorData left, HudsonmodelHudsonMasterComputerMonitorData right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelHudsonMasterComputerMonitorData.
        /// </summary>
        public sealed class HudsonmodelHudsonMasterComputerMonitorDataBuilder
        {
            private HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 _HudsonNodeMonitorsSwapSpaceMonitor;
            private HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace _HudsonNodeMonitorsTemporarySpaceMonitor;
            private HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace _HudsonNodeMonitorsDiskSpaceMonitor;
            private string _HudsonNodeMonitorsArchitectureMonitor;
            private HudsonnodeMonitorsResponseTimeMonitorData _HudsonNodeMonitorsResponseTimeMonitor;
            private HudsonutilClockDifference _HudsonNodeMonitorsClockMonitor;
            private string _Class;

            internal HudsonmodelHudsonMasterComputerMonitorDataBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputerMonitorData.HudsonNodeMonitorsSwapSpaceMonitor property.
            /// </summary>
            /// <param name="value">HudsonNodeMonitorsSwapSpaceMonitor</param>
            public HudsonmodelHudsonMasterComputerMonitorDataBuilder HudsonNodeMonitorsSwapSpaceMonitor(HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 value)
            {
                _HudsonNodeMonitorsSwapSpaceMonitor = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputerMonitorData.HudsonNodeMonitorsTemporarySpaceMonitor property.
            /// </summary>
            /// <param name="value">HudsonNodeMonitorsTemporarySpaceMonitor</param>
            public HudsonmodelHudsonMasterComputerMonitorDataBuilder HudsonNodeMonitorsTemporarySpaceMonitor(HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace value)
            {
                _HudsonNodeMonitorsTemporarySpaceMonitor = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputerMonitorData.HudsonNodeMonitorsDiskSpaceMonitor property.
            /// </summary>
            /// <param name="value">HudsonNodeMonitorsDiskSpaceMonitor</param>
            public HudsonmodelHudsonMasterComputerMonitorDataBuilder HudsonNodeMonitorsDiskSpaceMonitor(HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace value)
            {
                _HudsonNodeMonitorsDiskSpaceMonitor = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputerMonitorData.HudsonNodeMonitorsArchitectureMonitor property.
            /// </summary>
            /// <param name="value">HudsonNodeMonitorsArchitectureMonitor</param>
            public HudsonmodelHudsonMasterComputerMonitorDataBuilder HudsonNodeMonitorsArchitectureMonitor(string value)
            {
                _HudsonNodeMonitorsArchitectureMonitor = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputerMonitorData.HudsonNodeMonitorsResponseTimeMonitor property.
            /// </summary>
            /// <param name="value">HudsonNodeMonitorsResponseTimeMonitor</param>
            public HudsonmodelHudsonMasterComputerMonitorDataBuilder HudsonNodeMonitorsResponseTimeMonitor(HudsonnodeMonitorsResponseTimeMonitorData value)
            {
                _HudsonNodeMonitorsResponseTimeMonitor = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputerMonitorData.HudsonNodeMonitorsClockMonitor property.
            /// </summary>
            /// <param name="value">HudsonNodeMonitorsClockMonitor</param>
            public HudsonmodelHudsonMasterComputerMonitorDataBuilder HudsonNodeMonitorsClockMonitor(HudsonutilClockDifference value)
            {
                _HudsonNodeMonitorsClockMonitor = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonMasterComputerMonitorData.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelHudsonMasterComputerMonitorDataBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelHudsonMasterComputerMonitorData.
            /// </summary>
            /// <returns>HudsonmodelHudsonMasterComputerMonitorData</returns>
            public HudsonmodelHudsonMasterComputerMonitorData Build()
            {
                Validate();
                return new HudsonmodelHudsonMasterComputerMonitorData(
                    HudsonNodeMonitorsSwapSpaceMonitor: _HudsonNodeMonitorsSwapSpaceMonitor,
                    HudsonNodeMonitorsTemporarySpaceMonitor: _HudsonNodeMonitorsTemporarySpaceMonitor,
                    HudsonNodeMonitorsDiskSpaceMonitor: _HudsonNodeMonitorsDiskSpaceMonitor,
                    HudsonNodeMonitorsArchitectureMonitor: _HudsonNodeMonitorsArchitectureMonitor,
                    HudsonNodeMonitorsResponseTimeMonitor: _HudsonNodeMonitorsResponseTimeMonitor,
                    HudsonNodeMonitorsClockMonitor: _HudsonNodeMonitorsClockMonitor,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
