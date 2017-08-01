using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links
    /// </summary>
    public sealed class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links:  IEquatable<IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links>
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
        /// Use IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links()
        {
        }

        private IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links(IojenkinsblueoceanresthalLink Self, string Class)
        {
            
            this.Self = Self;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links.
        /// </summary>
        /// <returns>IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1LinksBuilder</returns>
        public static IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1LinksBuilder Builder()
        {
            return new IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1LinksBuilder();
        }

        /// <summary>
        /// Returns IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1LinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1LinksBuilder</returns>
        public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1LinksBuilder With()
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

        public bool Equals(IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links</param>
        /// <param name="right">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links left, IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links</param>
        /// <param name="right">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links left, IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links.
        /// </summary>
        public sealed class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1LinksBuilder
        {
            private IojenkinsblueoceanresthalLink _Self;
            private string _Class;

            internal IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1LinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1LinksBuilder Self(IojenkinsblueoceanresthalLink value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1LinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links.
            /// </summary>
            /// <returns>IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links</returns>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links Build()
            {
                Validate();
                return new IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links(
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
