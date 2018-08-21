using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// ExtensionClassContainerImpl1links
    /// </summary>
    public sealed class ExtensionClassContainerImpl1links:  IEquatable<ExtensionClassContainerImpl1links>
    { 
        /// <summary>
        /// Self
        /// </summary>
        public Link Self { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ExtensionClassContainerImpl1links.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ExtensionClassContainerImpl1links()
        {
        }

        private ExtensionClassContainerImpl1links(Link Self, string Class)
        {
            
            this.Self = Self;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of ExtensionClassContainerImpl1links.
        /// </summary>
        /// <returns>ExtensionClassContainerImpl1linksBuilder</returns>
        public static ExtensionClassContainerImpl1linksBuilder Builder()
        {
            return new ExtensionClassContainerImpl1linksBuilder();
        }

        /// <summary>
        /// Returns ExtensionClassContainerImpl1linksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ExtensionClassContainerImpl1linksBuilder</returns>
        public ExtensionClassContainerImpl1linksBuilder With()
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

        public bool Equals(ExtensionClassContainerImpl1links other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ExtensionClassContainerImpl1links.
        /// </summary>
        /// <param name="left">Compared (ExtensionClassContainerImpl1links</param>
        /// <param name="right">Compared (ExtensionClassContainerImpl1links</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ExtensionClassContainerImpl1links left, ExtensionClassContainerImpl1links right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ExtensionClassContainerImpl1links.
        /// </summary>
        /// <param name="left">Compared (ExtensionClassContainerImpl1links</param>
        /// <param name="right">Compared (ExtensionClassContainerImpl1links</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ExtensionClassContainerImpl1links left, ExtensionClassContainerImpl1links right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ExtensionClassContainerImpl1links.
        /// </summary>
        public sealed class ExtensionClassContainerImpl1linksBuilder
        {
            private Link _Self;
            private string _Class;

            internal ExtensionClassContainerImpl1linksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ExtensionClassContainerImpl1links.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public ExtensionClassContainerImpl1linksBuilder Self(Link value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for ExtensionClassContainerImpl1links.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public ExtensionClassContainerImpl1linksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ExtensionClassContainerImpl1links.
            /// </summary>
            /// <returns>ExtensionClassContainerImpl1links</returns>
            public ExtensionClassContainerImpl1links Build()
            {
                Validate();
                return new ExtensionClassContainerImpl1links(
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