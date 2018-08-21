using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// ClockDifference
    /// </summary>
    public sealed class ClockDifference:  IEquatable<ClockDifference>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Diff
        /// </summary>
        public int? Diff { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ClockDifference.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ClockDifference()
        {
        }

        private ClockDifference(string Class, int? Diff)
        {
            
            this.Class = Class;
            
            this.Diff = Diff;
            
        }

        /// <summary>
        /// Returns builder of ClockDifference.
        /// </summary>
        /// <returns>ClockDifferenceBuilder</returns>
        public static ClockDifferenceBuilder Builder()
        {
            return new ClockDifferenceBuilder();
        }

        /// <summary>
        /// Returns ClockDifferenceBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ClockDifferenceBuilder</returns>
        public ClockDifferenceBuilder With()
        {
            return Builder()
                .Class(Class)
                .Diff(Diff);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ClockDifference other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ClockDifference.
        /// </summary>
        /// <param name="left">Compared (ClockDifference</param>
        /// <param name="right">Compared (ClockDifference</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ClockDifference left, ClockDifference right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ClockDifference.
        /// </summary>
        /// <param name="left">Compared (ClockDifference</param>
        /// <param name="right">Compared (ClockDifference</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ClockDifference left, ClockDifference right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ClockDifference.
        /// </summary>
        public sealed class ClockDifferenceBuilder
        {
            private string _Class;
            private int? _Diff;

            internal ClockDifferenceBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ClockDifference.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public ClockDifferenceBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for ClockDifference.Diff property.
            /// </summary>
            /// <param name="value">Diff</param>
            public ClockDifferenceBuilder Diff(int? value)
            {
                _Diff = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ClockDifference.
            /// </summary>
            /// <returns>ClockDifference</returns>
            public ClockDifference Build()
            {
                Validate();
                return new ClockDifference(
                    Class: _Class,
                    Diff: _Diff
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}