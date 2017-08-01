using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonscmNullSCM
    /// </summary>
    public sealed class HudsonscmNullSCM:  IEquatable<HudsonscmNullSCM>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonscmNullSCM.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonscmNullSCM()
        {
        }

        private HudsonscmNullSCM(string Class)
        {
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of HudsonscmNullSCM.
        /// </summary>
        /// <returns>HudsonscmNullSCMBuilder</returns>
        public static HudsonscmNullSCMBuilder Builder()
        {
            return new HudsonscmNullSCMBuilder();
        }

        /// <summary>
        /// Returns HudsonscmNullSCMBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonscmNullSCMBuilder</returns>
        public HudsonscmNullSCMBuilder With()
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

        public bool Equals(HudsonscmNullSCM other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonscmNullSCM.
        /// </summary>
        /// <param name="left">Compared (HudsonscmNullSCM</param>
        /// <param name="right">Compared (HudsonscmNullSCM</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonscmNullSCM left, HudsonscmNullSCM right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonscmNullSCM.
        /// </summary>
        /// <param name="left">Compared (HudsonscmNullSCM</param>
        /// <param name="right">Compared (HudsonscmNullSCM</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonscmNullSCM left, HudsonscmNullSCM right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonscmNullSCM.
        /// </summary>
        public sealed class HudsonscmNullSCMBuilder
        {
            private string _Class;

            internal HudsonscmNullSCMBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonscmNullSCM.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonscmNullSCMBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonscmNullSCM.
            /// </summary>
            /// <returns>HudsonscmNullSCM</returns>
            public HudsonscmNullSCM Build()
            {
                Validate();
                return new HudsonscmNullSCM(
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
