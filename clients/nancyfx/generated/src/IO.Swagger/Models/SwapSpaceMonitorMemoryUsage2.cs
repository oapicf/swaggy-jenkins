using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// SwapSpaceMonitorMemoryUsage2
    /// </summary>
    public sealed class SwapSpaceMonitorMemoryUsage2:  IEquatable<SwapSpaceMonitorMemoryUsage2>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// AvailablePhysicalMemory
        /// </summary>
        public int? AvailablePhysicalMemory { get; private set; }

        /// <summary>
        /// AvailableSwapSpace
        /// </summary>
        public int? AvailableSwapSpace { get; private set; }

        /// <summary>
        /// TotalPhysicalMemory
        /// </summary>
        public int? TotalPhysicalMemory { get; private set; }

        /// <summary>
        /// TotalSwapSpace
        /// </summary>
        public int? TotalSwapSpace { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use SwapSpaceMonitorMemoryUsage2.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public SwapSpaceMonitorMemoryUsage2()
        {
        }

        private SwapSpaceMonitorMemoryUsage2(string Class, int? AvailablePhysicalMemory, int? AvailableSwapSpace, int? TotalPhysicalMemory, int? TotalSwapSpace)
        {
            
            this.Class = Class;
            
            this.AvailablePhysicalMemory = AvailablePhysicalMemory;
            
            this.AvailableSwapSpace = AvailableSwapSpace;
            
            this.TotalPhysicalMemory = TotalPhysicalMemory;
            
            this.TotalSwapSpace = TotalSwapSpace;
            
        }

        /// <summary>
        /// Returns builder of SwapSpaceMonitorMemoryUsage2.
        /// </summary>
        /// <returns>SwapSpaceMonitorMemoryUsage2Builder</returns>
        public static SwapSpaceMonitorMemoryUsage2Builder Builder()
        {
            return new SwapSpaceMonitorMemoryUsage2Builder();
        }

        /// <summary>
        /// Returns SwapSpaceMonitorMemoryUsage2Builder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>SwapSpaceMonitorMemoryUsage2Builder</returns>
        public SwapSpaceMonitorMemoryUsage2Builder With()
        {
            return Builder()
                .Class(Class)
                .AvailablePhysicalMemory(AvailablePhysicalMemory)
                .AvailableSwapSpace(AvailableSwapSpace)
                .TotalPhysicalMemory(TotalPhysicalMemory)
                .TotalSwapSpace(TotalSwapSpace);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(SwapSpaceMonitorMemoryUsage2 other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (SwapSpaceMonitorMemoryUsage2.
        /// </summary>
        /// <param name="left">Compared (SwapSpaceMonitorMemoryUsage2</param>
        /// <param name="right">Compared (SwapSpaceMonitorMemoryUsage2</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (SwapSpaceMonitorMemoryUsage2 left, SwapSpaceMonitorMemoryUsage2 right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (SwapSpaceMonitorMemoryUsage2.
        /// </summary>
        /// <param name="left">Compared (SwapSpaceMonitorMemoryUsage2</param>
        /// <param name="right">Compared (SwapSpaceMonitorMemoryUsage2</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (SwapSpaceMonitorMemoryUsage2 left, SwapSpaceMonitorMemoryUsage2 right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of SwapSpaceMonitorMemoryUsage2.
        /// </summary>
        public sealed class SwapSpaceMonitorMemoryUsage2Builder
        {
            private string _Class;
            private int? _AvailablePhysicalMemory;
            private int? _AvailableSwapSpace;
            private int? _TotalPhysicalMemory;
            private int? _TotalSwapSpace;

            internal SwapSpaceMonitorMemoryUsage2Builder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for SwapSpaceMonitorMemoryUsage2.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public SwapSpaceMonitorMemoryUsage2Builder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwapSpaceMonitorMemoryUsage2.AvailablePhysicalMemory property.
            /// </summary>
            /// <param name="value">AvailablePhysicalMemory</param>
            public SwapSpaceMonitorMemoryUsage2Builder AvailablePhysicalMemory(int? value)
            {
                _AvailablePhysicalMemory = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwapSpaceMonitorMemoryUsage2.AvailableSwapSpace property.
            /// </summary>
            /// <param name="value">AvailableSwapSpace</param>
            public SwapSpaceMonitorMemoryUsage2Builder AvailableSwapSpace(int? value)
            {
                _AvailableSwapSpace = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwapSpaceMonitorMemoryUsage2.TotalPhysicalMemory property.
            /// </summary>
            /// <param name="value">TotalPhysicalMemory</param>
            public SwapSpaceMonitorMemoryUsage2Builder TotalPhysicalMemory(int? value)
            {
                _TotalPhysicalMemory = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwapSpaceMonitorMemoryUsage2.TotalSwapSpace property.
            /// </summary>
            /// <param name="value">TotalSwapSpace</param>
            public SwapSpaceMonitorMemoryUsage2Builder TotalSwapSpace(int? value)
            {
                _TotalSwapSpace = value;
                return this;
            }


            /// <summary>
            /// Builds instance of SwapSpaceMonitorMemoryUsage2.
            /// </summary>
            /// <returns>SwapSpaceMonitorMemoryUsage2</returns>
            public SwapSpaceMonitorMemoryUsage2 Build()
            {
                Validate();
                return new SwapSpaceMonitorMemoryUsage2(
                    Class: _Class,
                    AvailablePhysicalMemory: _AvailablePhysicalMemory,
                    AvailableSwapSpace: _AvailableSwapSpace,
                    TotalPhysicalMemory: _TotalPhysicalMemory,
                    TotalSwapSpace: _TotalSwapSpace
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}