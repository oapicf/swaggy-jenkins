using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// ExtensionClassImpllinks
    /// </summary>
    public sealed class ExtensionClassImpllinks:  IEquatable<ExtensionClassImpllinks>
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
        /// Use ExtensionClassImpllinks.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ExtensionClassImpllinks()
        {
        }

        private ExtensionClassImpllinks(Link Self, string Class)
        {
            
            this.Self = Self;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of ExtensionClassImpllinks.
        /// </summary>
        /// <returns>ExtensionClassImpllinksBuilder</returns>
        public static ExtensionClassImpllinksBuilder Builder()
        {
            return new ExtensionClassImpllinksBuilder();
        }

        /// <summary>
        /// Returns ExtensionClassImpllinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ExtensionClassImpllinksBuilder</returns>
        public ExtensionClassImpllinksBuilder With()
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

        public bool Equals(ExtensionClassImpllinks other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ExtensionClassImpllinks.
        /// </summary>
        /// <param name="left">Compared (ExtensionClassImpllinks</param>
        /// <param name="right">Compared (ExtensionClassImpllinks</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ExtensionClassImpllinks left, ExtensionClassImpllinks right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ExtensionClassImpllinks.
        /// </summary>
        /// <param name="left">Compared (ExtensionClassImpllinks</param>
        /// <param name="right">Compared (ExtensionClassImpllinks</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ExtensionClassImpllinks left, ExtensionClassImpllinks right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ExtensionClassImpllinks.
        /// </summary>
        public sealed class ExtensionClassImpllinksBuilder
        {
            private Link _Self;
            private string _Class;

            internal ExtensionClassImpllinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ExtensionClassImpllinks.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public ExtensionClassImpllinksBuilder Self(Link value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for ExtensionClassImpllinks.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public ExtensionClassImpllinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ExtensionClassImpllinks.
            /// </summary>
            /// <returns>ExtensionClassImpllinks</returns>
            public ExtensionClassImpllinks Build()
            {
                Validate();
                return new ExtensionClassImpllinks(
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