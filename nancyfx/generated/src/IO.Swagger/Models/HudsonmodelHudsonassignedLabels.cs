using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelHudsonassignedLabels
    /// </summary>
    public sealed class HudsonmodelHudsonassignedLabels:  IEquatable<HudsonmodelHudsonassignedLabels>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonmodelHudsonassignedLabels.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelHudsonassignedLabels()
        {
        }

        private HudsonmodelHudsonassignedLabels(string Class)
        {
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelHudsonassignedLabels.
        /// </summary>
        /// <returns>HudsonmodelHudsonassignedLabelsBuilder</returns>
        public static HudsonmodelHudsonassignedLabelsBuilder Builder()
        {
            return new HudsonmodelHudsonassignedLabelsBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelHudsonassignedLabelsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelHudsonassignedLabelsBuilder</returns>
        public HudsonmodelHudsonassignedLabelsBuilder With()
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

        public bool Equals(HudsonmodelHudsonassignedLabels other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelHudsonassignedLabels.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelHudsonassignedLabels</param>
        /// <param name="right">Compared (HudsonmodelHudsonassignedLabels</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelHudsonassignedLabels left, HudsonmodelHudsonassignedLabels right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelHudsonassignedLabels.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelHudsonassignedLabels</param>
        /// <param name="right">Compared (HudsonmodelHudsonassignedLabels</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelHudsonassignedLabels left, HudsonmodelHudsonassignedLabels right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelHudsonassignedLabels.
        /// </summary>
        public sealed class HudsonmodelHudsonassignedLabelsBuilder
        {
            private string _Class;

            internal HudsonmodelHudsonassignedLabelsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelHudsonassignedLabels.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelHudsonassignedLabelsBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelHudsonassignedLabels.
            /// </summary>
            /// <returns>HudsonmodelHudsonassignedLabels</returns>
            public HudsonmodelHudsonassignedLabels Build()
            {
                Validate();
                return new HudsonmodelHudsonassignedLabels(
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
