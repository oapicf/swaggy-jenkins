using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// ResponseTimeMonitorData
    /// </summary>
    public sealed class ResponseTimeMonitorData:  IEquatable<ResponseTimeMonitorData>
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
        /// Use ResponseTimeMonitorData.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeMonitorData()
        {
        }

        private ResponseTimeMonitorData(string Class, int? Timestamp, int? Average)
        {
            
            this.Class = Class;
            
            this.Timestamp = Timestamp;
            
            this.Average = Average;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeMonitorData.
        /// </summary>
        /// <returns>ResponseTimeMonitorDataBuilder</returns>
        public static ResponseTimeMonitorDataBuilder Builder()
        {
            return new ResponseTimeMonitorDataBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeMonitorDataBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeMonitorDataBuilder</returns>
        public ResponseTimeMonitorDataBuilder With()
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

        public bool Equals(ResponseTimeMonitorData other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeMonitorData.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMonitorData</param>
        /// <param name="right">Compared (ResponseTimeMonitorData</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeMonitorData left, ResponseTimeMonitorData right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeMonitorData.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMonitorData</param>
        /// <param name="right">Compared (ResponseTimeMonitorData</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeMonitorData left, ResponseTimeMonitorData right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeMonitorData.
        /// </summary>
        public sealed class ResponseTimeMonitorDataBuilder
        {
            private string _Class;
            private int? _Timestamp;
            private int? _Average;

            internal ResponseTimeMonitorDataBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeMonitorData.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public ResponseTimeMonitorDataBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeMonitorData.Timestamp property.
            /// </summary>
            /// <param name="value">Timestamp</param>
            public ResponseTimeMonitorDataBuilder Timestamp(int? value)
            {
                _Timestamp = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeMonitorData.Average property.
            /// </summary>
            /// <param name="value">Average</param>
            public ResponseTimeMonitorDataBuilder Average(int? value)
            {
                _Average = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeMonitorData.
            /// </summary>
            /// <returns>ResponseTimeMonitorData</returns>
            public ResponseTimeMonitorData Build()
            {
                Validate();
                return new ResponseTimeMonitorData(
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