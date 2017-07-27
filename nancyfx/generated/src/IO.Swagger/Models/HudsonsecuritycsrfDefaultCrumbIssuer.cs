using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonsecuritycsrfDefaultCrumbIssuer
    /// </summary>
    public sealed class HudsonsecuritycsrfDefaultCrumbIssuer:  IEquatable<HudsonsecuritycsrfDefaultCrumbIssuer>
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
        /// Use HudsonsecuritycsrfDefaultCrumbIssuer.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonsecuritycsrfDefaultCrumbIssuer()
        {
        }

        private HudsonsecuritycsrfDefaultCrumbIssuer(string Class, string Crumb, string CrumbRequestField)
        {
            
            this.Class = Class;
            
            this.Crumb = Crumb;
            
            this.CrumbRequestField = CrumbRequestField;
            
        }

        /// <summary>
        /// Returns builder of HudsonsecuritycsrfDefaultCrumbIssuer.
        /// </summary>
        /// <returns>HudsonsecuritycsrfDefaultCrumbIssuerBuilder</returns>
        public static HudsonsecuritycsrfDefaultCrumbIssuerBuilder Builder()
        {
            return new HudsonsecuritycsrfDefaultCrumbIssuerBuilder();
        }

        /// <summary>
        /// Returns HudsonsecuritycsrfDefaultCrumbIssuerBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonsecuritycsrfDefaultCrumbIssuerBuilder</returns>
        public HudsonsecuritycsrfDefaultCrumbIssuerBuilder With()
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

        public bool Equals(HudsonsecuritycsrfDefaultCrumbIssuer other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonsecuritycsrfDefaultCrumbIssuer.
        /// </summary>
        /// <param name="left">Compared (HudsonsecuritycsrfDefaultCrumbIssuer</param>
        /// <param name="right">Compared (HudsonsecuritycsrfDefaultCrumbIssuer</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonsecuritycsrfDefaultCrumbIssuer left, HudsonsecuritycsrfDefaultCrumbIssuer right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonsecuritycsrfDefaultCrumbIssuer.
        /// </summary>
        /// <param name="left">Compared (HudsonsecuritycsrfDefaultCrumbIssuer</param>
        /// <param name="right">Compared (HudsonsecuritycsrfDefaultCrumbIssuer</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonsecuritycsrfDefaultCrumbIssuer left, HudsonsecuritycsrfDefaultCrumbIssuer right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonsecuritycsrfDefaultCrumbIssuer.
        /// </summary>
        public sealed class HudsonsecuritycsrfDefaultCrumbIssuerBuilder
        {
            private string _Class;
            private string _Crumb;
            private string _CrumbRequestField;

            internal HudsonsecuritycsrfDefaultCrumbIssuerBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonsecuritycsrfDefaultCrumbIssuer.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonsecuritycsrfDefaultCrumbIssuerBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonsecuritycsrfDefaultCrumbIssuer.Crumb property.
            /// </summary>
            /// <param name="value">Crumb</param>
            public HudsonsecuritycsrfDefaultCrumbIssuerBuilder Crumb(string value)
            {
                _Crumb = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonsecuritycsrfDefaultCrumbIssuer.CrumbRequestField property.
            /// </summary>
            /// <param name="value">CrumbRequestField</param>
            public HudsonsecuritycsrfDefaultCrumbIssuerBuilder CrumbRequestField(string value)
            {
                _CrumbRequestField = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonsecuritycsrfDefaultCrumbIssuer.
            /// </summary>
            /// <returns>HudsonsecuritycsrfDefaultCrumbIssuer</returns>
            public HudsonsecuritycsrfDefaultCrumbIssuer Build()
            {
                Validate();
                return new HudsonsecuritycsrfDefaultCrumbIssuer(
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
