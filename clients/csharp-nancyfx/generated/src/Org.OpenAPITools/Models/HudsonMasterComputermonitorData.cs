using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// HudsonMasterComputermonitorData
    /// </summary>
    public sealed class HudsonMasterComputermonitorData:  IEquatable<HudsonMasterComputermonitorData>
    { 
        /// <summary>
        /// HudsonNodeMonitorsSwapSpaceMonitor
        /// </summary>
        public SwapSpaceMonitorMemoryUsage2 HudsonNodeMonitorsSwapSpaceMonitor { get; private set; }

        /// <summary>
        /// HudsonNodeMonitorsTemporarySpaceMonitor
        /// </summary>
        public DiskSpaceMonitorDescriptorDiskSpace HudsonNodeMonitorsTemporarySpaceMonitor { get; private set; }

        /// <summary>
        /// HudsonNodeMonitorsDiskSpaceMonitor
        /// </summary>
        public DiskSpaceMonitorDescriptorDiskSpace HudsonNodeMonitorsDiskSpaceMonitor { get; private set; }

        /// <summary>
        /// HudsonNodeMonitorsArchitectureMonitor
        /// </summary>
        public string HudsonNodeMonitorsArchitectureMonitor { get; private set; }

        /// <summary>
        /// HudsonNodeMonitorsResponseTimeMonitor
        /// </summary>
        public ResponseTimeMonitorData HudsonNodeMonitorsResponseTimeMonitor { get; private set; }

        /// <summary>
        /// HudsonNodeMonitorsClockMonitor
        /// </summary>
        public ClockDifference HudsonNodeMonitorsClockMonitor { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonMasterComputermonitorData.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonMasterComputermonitorData()
        {
        }

        private HudsonMasterComputermonitorData(SwapSpaceMonitorMemoryUsage2 HudsonNodeMonitorsSwapSpaceMonitor, DiskSpaceMonitorDescriptorDiskSpace HudsonNodeMonitorsTemporarySpaceMonitor, DiskSpaceMonitorDescriptorDiskSpace HudsonNodeMonitorsDiskSpaceMonitor, string HudsonNodeMonitorsArchitectureMonitor, ResponseTimeMonitorData HudsonNodeMonitorsResponseTimeMonitor, ClockDifference HudsonNodeMonitorsClockMonitor, string Class)
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
        /// Returns builder of HudsonMasterComputermonitorData.
        /// </summary>
        /// <returns>HudsonMasterComputermonitorDataBuilder</returns>
        public static HudsonMasterComputermonitorDataBuilder Builder()
        {
            return new HudsonMasterComputermonitorDataBuilder();
        }

        /// <summary>
        /// Returns HudsonMasterComputermonitorDataBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonMasterComputermonitorDataBuilder</returns>
        public HudsonMasterComputermonitorDataBuilder With()
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

        public bool Equals(HudsonMasterComputermonitorData other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonMasterComputermonitorData.
        /// </summary>
        /// <param name="left">Compared (HudsonMasterComputermonitorData</param>
        /// <param name="right">Compared (HudsonMasterComputermonitorData</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonMasterComputermonitorData left, HudsonMasterComputermonitorData right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonMasterComputermonitorData.
        /// </summary>
        /// <param name="left">Compared (HudsonMasterComputermonitorData</param>
        /// <param name="right">Compared (HudsonMasterComputermonitorData</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonMasterComputermonitorData left, HudsonMasterComputermonitorData right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonMasterComputermonitorData.
        /// </summary>
        public sealed class HudsonMasterComputermonitorDataBuilder
        {
            private SwapSpaceMonitorMemoryUsage2 _HudsonNodeMonitorsSwapSpaceMonitor;
            private DiskSpaceMonitorDescriptorDiskSpace _HudsonNodeMonitorsTemporarySpaceMonitor;
            private DiskSpaceMonitorDescriptorDiskSpace _HudsonNodeMonitorsDiskSpaceMonitor;
            private string _HudsonNodeMonitorsArchitectureMonitor;
            private ResponseTimeMonitorData _HudsonNodeMonitorsResponseTimeMonitor;
            private ClockDifference _HudsonNodeMonitorsClockMonitor;
            private string _Class;

            internal HudsonMasterComputermonitorDataBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonMasterComputermonitorData.HudsonNodeMonitorsSwapSpaceMonitor property.
            /// </summary>
            /// <param name="value">HudsonNodeMonitorsSwapSpaceMonitor</param>
            public HudsonMasterComputermonitorDataBuilder HudsonNodeMonitorsSwapSpaceMonitor(SwapSpaceMonitorMemoryUsage2 value)
            {
                _HudsonNodeMonitorsSwapSpaceMonitor = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputermonitorData.HudsonNodeMonitorsTemporarySpaceMonitor property.
            /// </summary>
            /// <param name="value">HudsonNodeMonitorsTemporarySpaceMonitor</param>
            public HudsonMasterComputermonitorDataBuilder HudsonNodeMonitorsTemporarySpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace value)
            {
                _HudsonNodeMonitorsTemporarySpaceMonitor = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputermonitorData.HudsonNodeMonitorsDiskSpaceMonitor property.
            /// </summary>
            /// <param name="value">HudsonNodeMonitorsDiskSpaceMonitor</param>
            public HudsonMasterComputermonitorDataBuilder HudsonNodeMonitorsDiskSpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace value)
            {
                _HudsonNodeMonitorsDiskSpaceMonitor = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputermonitorData.HudsonNodeMonitorsArchitectureMonitor property.
            /// </summary>
            /// <param name="value">HudsonNodeMonitorsArchitectureMonitor</param>
            public HudsonMasterComputermonitorDataBuilder HudsonNodeMonitorsArchitectureMonitor(string value)
            {
                _HudsonNodeMonitorsArchitectureMonitor = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputermonitorData.HudsonNodeMonitorsResponseTimeMonitor property.
            /// </summary>
            /// <param name="value">HudsonNodeMonitorsResponseTimeMonitor</param>
            public HudsonMasterComputermonitorDataBuilder HudsonNodeMonitorsResponseTimeMonitor(ResponseTimeMonitorData value)
            {
                _HudsonNodeMonitorsResponseTimeMonitor = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputermonitorData.HudsonNodeMonitorsClockMonitor property.
            /// </summary>
            /// <param name="value">HudsonNodeMonitorsClockMonitor</param>
            public HudsonMasterComputermonitorDataBuilder HudsonNodeMonitorsClockMonitor(ClockDifference value)
            {
                _HudsonNodeMonitorsClockMonitor = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonMasterComputermonitorData.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonMasterComputermonitorDataBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonMasterComputermonitorData.
            /// </summary>
            /// <returns>HudsonMasterComputermonitorData</returns>
            public HudsonMasterComputermonitorData Build()
            {
                Validate();
                return new HudsonMasterComputermonitorData(
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