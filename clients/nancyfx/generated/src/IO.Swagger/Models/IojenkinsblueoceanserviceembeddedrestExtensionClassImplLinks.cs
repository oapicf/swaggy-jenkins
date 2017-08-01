using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks
    /// </summary>
    public sealed class IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks:  IEquatable<IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks>
    { 
        /// <summary>
        /// Self
        /// </summary>
        public IojenkinsblueoceanresthalLink Self { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks()
        {
        }

        private IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks(IojenkinsblueoceanresthalLink Self, string Class)
        {
            
            this.Self = Self;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks.
        /// </summary>
        /// <returns>IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinksBuilder</returns>
        public static IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinksBuilder Builder()
        {
            return new IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinksBuilder();
        }

        /// <summary>
        /// Returns IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinksBuilder</returns>
        public IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinksBuilder With()
        {
            return Builder()
                .Self(Self)
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

        public bool Equals(IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks</param>
        /// <param name="right">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks left, IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks</param>
        /// <param name="right">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks left, IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks.
        /// </summary>
        public sealed class IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinksBuilder
        {
            private IojenkinsblueoceanresthalLink _Self;
            private string _Class;

            internal IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinksBuilder Self(IojenkinsblueoceanresthalLink value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks.
            /// </summary>
            /// <returns>IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks</returns>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks Build()
            {
                Validate();
                return new IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks(
                    Self: _Self,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
