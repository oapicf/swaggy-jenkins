using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonnodeMonitorsResponseTimeMonitorData
    /// </summary>
    public sealed class HudsonnodeMonitorsResponseTimeMonitorData:  IEquatable<HudsonnodeMonitorsResponseTimeMonitorData>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Timestamp
        /// </summary>
        public int? Timestamp { get; private set; }

        /// <summary>
        /// Average
        /// </summary>
        public int? Average { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonnodeMonitorsResponseTimeMonitorData.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonnodeMonitorsResponseTimeMonitorData()
        {
        }

        private HudsonnodeMonitorsResponseTimeMonitorData(string Class, int? Timestamp, int? Average)
        {
            
            this.Class = Class;
            
            this.Timestamp = Timestamp;
            
            this.Average = Average;
            
        }

        /// <summary>
        /// Returns builder of HudsonnodeMonitorsResponseTimeMonitorData.
        /// </summary>
        /// <returns>HudsonnodeMonitorsResponseTimeMonitorDataBuilder</returns>
        public static HudsonnodeMonitorsResponseTimeMonitorDataBuilder Builder()
        {
            return new HudsonnodeMonitorsResponseTimeMonitorDataBuilder();
        }

        /// <summary>
        /// Returns HudsonnodeMonitorsResponseTimeMonitorDataBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonnodeMonitorsResponseTimeMonitorDataBuilder</returns>
        public HudsonnodeMonitorsResponseTimeMonitorDataBuilder With()
        {
            return Builder()
                .Class(Class)
                .Timestamp(Timestamp)
                .Average(Average);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(HudsonnodeMonitorsResponseTimeMonitorData other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonnodeMonitorsResponseTimeMonitorData.
        /// </summary>
        /// <param name="left">Compared (HudsonnodeMonitorsResponseTimeMonitorData</param>
        /// <param name="right">Compared (HudsonnodeMonitorsResponseTimeMonitorData</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonnodeMonitorsResponseTimeMonitorData left, HudsonnodeMonitorsResponseTimeMonitorData right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonnodeMonitorsResponseTimeMonitorData.
        /// </summary>
        /// <param name="left">Compared (HudsonnodeMonitorsResponseTimeMonitorData</param>
        /// <param name="right">Compared (HudsonnodeMonitorsResponseTimeMonitorData</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonnodeMonitorsResponseTimeMonitorData left, HudsonnodeMonitorsResponseTimeMonitorData right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonnodeMonitorsResponseTimeMonitorData.
        /// </summary>
        public sealed class HudsonnodeMonitorsResponseTimeMonitorDataBuilder
        {
            private string _Class;
            private int? _Timestamp;
            private int? _Average;

            internal HudsonnodeMonitorsResponseTimeMonitorDataBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonnodeMonitorsResponseTimeMonitorData.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonnodeMonitorsResponseTimeMonitorDataBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonnodeMonitorsResponseTimeMonitorData.Timestamp property.
            /// </summary>
            /// <param name="value">Timestamp</param>
            public HudsonnodeMonitorsResponseTimeMonitorDataBuilder Timestamp(int? value)
            {
                _Timestamp = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonnodeMonitorsResponseTimeMonitorData.Average property.
            /// </summary>
            /// <param name="value">Average</param>
            public HudsonnodeMonitorsResponseTimeMonitorDataBuilder Average(int? value)
            {
                _Average = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonnodeMonitorsResponseTimeMonitorData.
            /// </summary>
            /// <returns>HudsonnodeMonitorsResponseTimeMonitorData</returns>
            public HudsonnodeMonitorsResponseTimeMonitorData Build()
            {
                Validate();
                return new HudsonnodeMonitorsResponseTimeMonitorData(
                    Class: _Class,
                    Timestamp: _Timestamp,
                    Average: _Average
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
