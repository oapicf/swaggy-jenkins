using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelFreeStyleProjectactions
    /// </summary>
    public sealed class HudsonmodelFreeStyleProjectactions:  IEquatable<HudsonmodelFreeStyleProjectactions>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonmodelFreeStyleProjectactions.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelFreeStyleProjectactions()
        {
        }

        private HudsonmodelFreeStyleProjectactions(string Class)
        {
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelFreeStyleProjectactions.
        /// </summary>
        /// <returns>HudsonmodelFreeStyleProjectactionsBuilder</returns>
        public static HudsonmodelFreeStyleProjectactionsBuilder Builder()
        {
            return new HudsonmodelFreeStyleProjectactionsBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelFreeStyleProjectactionsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelFreeStyleProjectactionsBuilder</returns>
        public HudsonmodelFreeStyleProjectactionsBuilder With()
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

        public bool Equals(HudsonmodelFreeStyleProjectactions other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelFreeStyleProjectactions.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelFreeStyleProjectactions</param>
        /// <param name="right">Compared (HudsonmodelFreeStyleProjectactions</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelFreeStyleProjectactions left, HudsonmodelFreeStyleProjectactions right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelFreeStyleProjectactions.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelFreeStyleProjectactions</param>
        /// <param name="right">Compared (HudsonmodelFreeStyleProjectactions</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelFreeStyleProjectactions left, HudsonmodelFreeStyleProjectactions right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelFreeStyleProjectactions.
        /// </summary>
        public sealed class HudsonmodelFreeStyleProjectactionsBuilder
        {
            private string _Class;

            internal HudsonmodelFreeStyleProjectactionsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProjectactions.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelFreeStyleProjectactionsBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelFreeStyleProjectactions.
            /// </summary>
            /// <returns>HudsonmodelFreeStyleProjectactions</returns>
            public HudsonmodelFreeStyleProjectactions Build()
            {
                Validate();
                return new HudsonmodelFreeStyleProjectactions(
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
