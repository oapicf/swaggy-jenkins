using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// DefaultCrumbIssuer
    /// </summary>
    public sealed class DefaultCrumbIssuer:  IEquatable<DefaultCrumbIssuer>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Crumb
        /// </summary>
        public string Crumb { get; private set; }

        /// <summary>
        /// CrumbRequestField
        /// </summary>
        public string CrumbRequestField { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use DefaultCrumbIssuer.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public DefaultCrumbIssuer()
        {
        }

        private DefaultCrumbIssuer(string Class, string Crumb, string CrumbRequestField)
        {
            
            this.Class = Class;
            
            this.Crumb = Crumb;
            
            this.CrumbRequestField = CrumbRequestField;
            
        }

        /// <summary>
        /// Returns builder of DefaultCrumbIssuer.
        /// </summary>
        /// <returns>DefaultCrumbIssuerBuilder</returns>
        public static DefaultCrumbIssuerBuilder Builder()
        {
            return new DefaultCrumbIssuerBuilder();
        }

        /// <summary>
        /// Returns DefaultCrumbIssuerBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>DefaultCrumbIssuerBuilder</returns>
        public DefaultCrumbIssuerBuilder With()
        {
            return Builder()
                .Class(Class)
                .Crumb(Crumb)
                .CrumbRequestField(CrumbRequestField);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(DefaultCrumbIssuer other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (DefaultCrumbIssuer.
        /// </summary>
        /// <param name="left">Compared (DefaultCrumbIssuer</param>
        /// <param name="right">Compared (DefaultCrumbIssuer</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (DefaultCrumbIssuer left, DefaultCrumbIssuer right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (DefaultCrumbIssuer.
        /// </summary>
        /// <param name="left">Compared (DefaultCrumbIssuer</param>
        /// <param name="right">Compared (DefaultCrumbIssuer</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (DefaultCrumbIssuer left, DefaultCrumbIssuer right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of DefaultCrumbIssuer.
        /// </summary>
        public sealed class DefaultCrumbIssuerBuilder
        {
            private string _Class;
            private string _Crumb;
            private string _CrumbRequestField;

            internal DefaultCrumbIssuerBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for DefaultCrumbIssuer.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public DefaultCrumbIssuerBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for DefaultCrumbIssuer.Crumb property.
            /// </summary>
            /// <param name="value">Crumb</param>
            public DefaultCrumbIssuerBuilder Crumb(string value)
            {
                _Crumb = value;
                return this;
            }

            /// <summary>
            /// Sets value for DefaultCrumbIssuer.CrumbRequestField property.
            /// </summary>
            /// <param name="value">CrumbRequestField</param>
            public DefaultCrumbIssuerBuilder CrumbRequestField(string value)
            {
                _CrumbRequestField = value;
                return this;
            }


            /// <summary>
            /// Builds instance of DefaultCrumbIssuer.
            /// </summary>
            /// <returns>DefaultCrumbIssuer</returns>
            public DefaultCrumbIssuer Build()
            {
                Validate();
                return new DefaultCrumbIssuer(
                    Class: _Class,
                    Crumb: _Crumb,
                    CrumbRequestField: _CrumbRequestField
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}