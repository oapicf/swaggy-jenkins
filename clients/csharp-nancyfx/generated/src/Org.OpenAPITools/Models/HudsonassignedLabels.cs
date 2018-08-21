using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// HudsonassignedLabels
    /// </summary>
    public sealed class HudsonassignedLabels:  IEquatable<HudsonassignedLabels>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonassignedLabels.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonassignedLabels()
        {
        }

        private HudsonassignedLabels(string Class)
        {
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of HudsonassignedLabels.
        /// </summary>
        /// <returns>HudsonassignedLabelsBuilder</returns>
        public static HudsonassignedLabelsBuilder Builder()
        {
            return new HudsonassignedLabelsBuilder();
        }

        /// <summary>
        /// Returns HudsonassignedLabelsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonassignedLabelsBuilder</returns>
        public HudsonassignedLabelsBuilder With()
        {
            return Builder()
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

        public bool Equals(HudsonassignedLabels other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonassignedLabels.
        /// </summary>
        /// <param name="left">Compared (HudsonassignedLabels</param>
        /// <param name="right">Compared (HudsonassignedLabels</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonassignedLabels left, HudsonassignedLabels right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonassignedLabels.
        /// </summary>
        /// <param name="left">Compared (HudsonassignedLabels</param>
        /// <param name="right">Compared (HudsonassignedLabels</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonassignedLabels left, HudsonassignedLabels right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonassignedLabels.
        /// </summary>
        public sealed class HudsonassignedLabelsBuilder
        {
            private string _Class;

            internal HudsonassignedLabelsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonassignedLabels.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonassignedLabelsBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonassignedLabels.
            /// </summary>
            /// <returns>HudsonassignedLabels</returns>
            public HudsonassignedLabels Build()
            {
                Validate();
                return new HudsonassignedLabels(
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}