using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelLabel1
    /// </summary>
    public sealed class HudsonmodelLabel1:  IEquatable<HudsonmodelLabel1>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonmodelLabel1.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelLabel1()
        {
        }

        private HudsonmodelLabel1(string Class)
        {
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelLabel1.
        /// </summary>
        /// <returns>HudsonmodelLabel1Builder</returns>
        public static HudsonmodelLabel1Builder Builder()
        {
            return new HudsonmodelLabel1Builder();
        }

        /// <summary>
        /// Returns HudsonmodelLabel1Builder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelLabel1Builder</returns>
        public HudsonmodelLabel1Builder With()
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

        public bool Equals(HudsonmodelLabel1 other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelLabel1.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelLabel1</param>
        /// <param name="right">Compared (HudsonmodelLabel1</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelLabel1 left, HudsonmodelLabel1 right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelLabel1.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelLabel1</param>
        /// <param name="right">Compared (HudsonmodelLabel1</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelLabel1 left, HudsonmodelLabel1 right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelLabel1.
        /// </summary>
        public sealed class HudsonmodelLabel1Builder
        {
            private string _Class;

            internal HudsonmodelLabel1Builder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelLabel1.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelLabel1Builder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelLabel1.
            /// </summary>
            /// <returns>HudsonmodelLabel1</returns>
            public HudsonmodelLabel1 Build()
            {
                Validate();
                return new HudsonmodelLabel1(
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
