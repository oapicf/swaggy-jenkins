using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonutilClockDifference
    /// </summary>
    public sealed class HudsonutilClockDifference:  IEquatable<HudsonutilClockDifference>
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
        /// Use HudsonutilClockDifference.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonutilClockDifference()
        {
        }

        private HudsonutilClockDifference(string Class, int? Diff)
        {
            
            this.Class = Class;
            
            this.Diff = Diff;
            
        }

        /// <summary>
        /// Returns builder of HudsonutilClockDifference.
        /// </summary>
        /// <returns>HudsonutilClockDifferenceBuilder</returns>
        public static HudsonutilClockDifferenceBuilder Builder()
        {
            return new HudsonutilClockDifferenceBuilder();
        }

        /// <summary>
        /// Returns HudsonutilClockDifferenceBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonutilClockDifferenceBuilder</returns>
        public HudsonutilClockDifferenceBuilder With()
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

        public bool Equals(HudsonutilClockDifference other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonutilClockDifference.
        /// </summary>
        /// <param name="left">Compared (HudsonutilClockDifference</param>
        /// <param name="right">Compared (HudsonutilClockDifference</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonutilClockDifference left, HudsonutilClockDifference right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonutilClockDifference.
        /// </summary>
        /// <param name="left">Compared (HudsonutilClockDifference</param>
        /// <param name="right">Compared (HudsonutilClockDifference</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonutilClockDifference left, HudsonutilClockDifference right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonutilClockDifference.
        /// </summary>
        public sealed class HudsonutilClockDifferenceBuilder
        {
            private string _Class;
            private int? _Diff;

            internal HudsonutilClockDifferenceBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonutilClockDifference.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonutilClockDifferenceBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonutilClockDifference.Diff property.
            /// </summary>
            /// <param name="value">Diff</param>
            public HudsonutilClockDifferenceBuilder Diff(int? value)
            {
                _Diff = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonutilClockDifference.
            /// </summary>
            /// <returns>HudsonutilClockDifference</returns>
            public HudsonutilClockDifference Build()
            {
                Validate();
                return new HudsonutilClockDifference(
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
