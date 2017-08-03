using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// NullSCM
    /// </summary>
    public sealed class NullSCM:  IEquatable<NullSCM>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use NullSCM.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public NullSCM()
        {
        }

        private NullSCM(string Class)
        {
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of NullSCM.
        /// </summary>
        /// <returns>NullSCMBuilder</returns>
        public static NullSCMBuilder Builder()
        {
            return new NullSCMBuilder();
        }

        /// <summary>
        /// Returns NullSCMBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>NullSCMBuilder</returns>
        public NullSCMBuilder With()
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

        public bool Equals(NullSCM other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (NullSCM.
        /// </summary>
        /// <param name="left">Compared (NullSCM</param>
        /// <param name="right">Compared (NullSCM</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (NullSCM left, NullSCM right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (NullSCM.
        /// </summary>
        /// <param name="left">Compared (NullSCM</param>
        /// <param name="right">Compared (NullSCM</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (NullSCM left, NullSCM right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of NullSCM.
        /// </summary>
        public sealed class NullSCMBuilder
        {
            private string _Class;

            internal NullSCMBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for NullSCM.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public NullSCMBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of NullSCM.
            /// </summary>
            /// <returns>NullSCM</returns>
            public NullSCM Build()
            {
                Validate();
                return new NullSCM(
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}