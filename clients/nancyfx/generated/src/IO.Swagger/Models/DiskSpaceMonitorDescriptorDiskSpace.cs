using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// DiskSpaceMonitorDescriptorDiskSpace
    /// </summary>
    public sealed class DiskSpaceMonitorDescriptorDiskSpace:  IEquatable<DiskSpaceMonitorDescriptorDiskSpace>
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
        /// Use DiskSpaceMonitorDescriptorDiskSpace.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public DiskSpaceMonitorDescriptorDiskSpace()
        {
        }

        private DiskSpaceMonitorDescriptorDiskSpace(string Class, int? Timestamp, string Path, int? Size)
        {
            
            this.Class = Class;
            
            this.Timestamp = Timestamp;
            
            this.Path = Path;
            
            this.Size = Size;
            
        }

        /// <summary>
        /// Returns builder of DiskSpaceMonitorDescriptorDiskSpace.
        /// </summary>
        /// <returns>DiskSpaceMonitorDescriptorDiskSpaceBuilder</returns>
        public static DiskSpaceMonitorDescriptorDiskSpaceBuilder Builder()
        {
            return new DiskSpaceMonitorDescriptorDiskSpaceBuilder();
        }

        /// <summary>
        /// Returns DiskSpaceMonitorDescriptorDiskSpaceBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>DiskSpaceMonitorDescriptorDiskSpaceBuilder</returns>
        public DiskSpaceMonitorDescriptorDiskSpaceBuilder With()
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

        public bool Equals(DiskSpaceMonitorDescriptorDiskSpace other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (DiskSpaceMonitorDescriptorDiskSpace.
        /// </summary>
        /// <param name="left">Compared (DiskSpaceMonitorDescriptorDiskSpace</param>
        /// <param name="right">Compared (DiskSpaceMonitorDescriptorDiskSpace</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (DiskSpaceMonitorDescriptorDiskSpace left, DiskSpaceMonitorDescriptorDiskSpace right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (DiskSpaceMonitorDescriptorDiskSpace.
        /// </summary>
        /// <param name="left">Compared (DiskSpaceMonitorDescriptorDiskSpace</param>
        /// <param name="right">Compared (DiskSpaceMonitorDescriptorDiskSpace</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (DiskSpaceMonitorDescriptorDiskSpace left, DiskSpaceMonitorDescriptorDiskSpace right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of DiskSpaceMonitorDescriptorDiskSpace.
        /// </summary>
        public sealed class DiskSpaceMonitorDescriptorDiskSpaceBuilder
        {
            private string _Class;
            private int? _Timestamp;
            private string _Path;
            private int? _Size;

            internal DiskSpaceMonitorDescriptorDiskSpaceBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for DiskSpaceMonitorDescriptorDiskSpace.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public DiskSpaceMonitorDescriptorDiskSpaceBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for DiskSpaceMonitorDescriptorDiskSpace.Timestamp property.
            /// </summary>
            /// <param name="value">Timestamp</param>
            public DiskSpaceMonitorDescriptorDiskSpaceBuilder Timestamp(int? value)
            {
                _Timestamp = value;
                return this;
            }

            /// <summary>
            /// Sets value for DiskSpaceMonitorDescriptorDiskSpace.Path property.
            /// </summary>
            /// <param name="value">Path</param>
            public DiskSpaceMonitorDescriptorDiskSpaceBuilder Path(string value)
            {
                _Path = value;
                return this;
            }

            /// <summary>
            /// Sets value for DiskSpaceMonitorDescriptorDiskSpace.Size property.
            /// </summary>
            /// <param name="value">Size</param>
            public DiskSpaceMonitorDescriptorDiskSpaceBuilder Size(int? value)
            {
                _Size = value;
                return this;
            }


            /// <summary>
            /// Builds instance of DiskSpaceMonitorDescriptorDiskSpace.
            /// </summary>
            /// <returns>DiskSpaceMonitorDescriptorDiskSpace</returns>
            public DiskSpaceMonitorDescriptorDiskSpace Build()
            {
                Validate();
                return new DiskSpaceMonitorDescriptorDiskSpace(
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