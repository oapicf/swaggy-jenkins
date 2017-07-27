using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace
    /// </summary>
    public sealed class HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace:  IEquatable<HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace>
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
        /// Path
        /// </summary>
        public string Path { get; private set; }

        /// <summary>
        /// Size
        /// </summary>
        public int? Size { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace()
        {
        }

        private HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace(string Class, int? Timestamp, string Path, int? Size)
        {
            
            this.Class = Class;
            
            this.Timestamp = Timestamp;
            
            this.Path = Path;
            
            this.Size = Size;
            
        }

        /// <summary>
        /// Returns builder of HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace.
        /// </summary>
        /// <returns>HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceBuilder</returns>
        public static HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceBuilder Builder()
        {
            return new HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceBuilder();
        }

        /// <summary>
        /// Returns HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceBuilder</returns>
        public HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceBuilder With()
        {
            return Builder()
                .Class(Class)
                .Timestamp(Timestamp)
                .Path(Path)
                .Size(Size);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace.
        /// </summary>
        /// <param name="left">Compared (HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace</param>
        /// <param name="right">Compared (HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace left, HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace.
        /// </summary>
        /// <param name="left">Compared (HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace</param>
        /// <param name="right">Compared (HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace left, HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace.
        /// </summary>
        public sealed class HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceBuilder
        {
            private string _Class;
            private int? _Timestamp;
            private string _Path;
            private int? _Size;

            internal HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace.Timestamp property.
            /// </summary>
            /// <param name="value">Timestamp</param>
            public HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceBuilder Timestamp(int? value)
            {
                _Timestamp = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace.Path property.
            /// </summary>
            /// <param name="value">Path</param>
            public HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceBuilder Path(string value)
            {
                _Path = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace.Size property.
            /// </summary>
            /// <param name="value">Size</param>
            public HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceBuilder Size(int? value)
            {
                _Size = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace.
            /// </summary>
            /// <returns>HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace</returns>
            public HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace Build()
            {
                Validate();
                return new HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace(
                    Class: _Class,
                    Timestamp: _Timestamp,
                    Path: _Path,
                    Size: _Size
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
