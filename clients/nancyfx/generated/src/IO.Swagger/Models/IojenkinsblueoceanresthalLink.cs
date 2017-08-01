using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// IojenkinsblueoceanresthalLink
    /// </summary>
    public sealed class IojenkinsblueoceanresthalLink:  IEquatable<IojenkinsblueoceanresthalLink>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Href
        /// </summary>
        public string Href { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use IojenkinsblueoceanresthalLink.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public IojenkinsblueoceanresthalLink()
        {
        }

        private IojenkinsblueoceanresthalLink(string Class, string Href)
        {
            
            this.Class = Class;
            
            this.Href = Href;
            
        }

        /// <summary>
        /// Returns builder of IojenkinsblueoceanresthalLink.
        /// </summary>
        /// <returns>IojenkinsblueoceanresthalLinkBuilder</returns>
        public static IojenkinsblueoceanresthalLinkBuilder Builder()
        {
            return new IojenkinsblueoceanresthalLinkBuilder();
        }

        /// <summary>
        /// Returns IojenkinsblueoceanresthalLinkBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>IojenkinsblueoceanresthalLinkBuilder</returns>
        public IojenkinsblueoceanresthalLinkBuilder With()
        {
            return Builder()
                .Class(Class)
                .Href(Href);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(IojenkinsblueoceanresthalLink other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (IojenkinsblueoceanresthalLink.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanresthalLink</param>
        /// <param name="right">Compared (IojenkinsblueoceanresthalLink</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (IojenkinsblueoceanresthalLink left, IojenkinsblueoceanresthalLink right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (IojenkinsblueoceanresthalLink.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanresthalLink</param>
        /// <param name="right">Compared (IojenkinsblueoceanresthalLink</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (IojenkinsblueoceanresthalLink left, IojenkinsblueoceanresthalLink right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of IojenkinsblueoceanresthalLink.
        /// </summary>
        public sealed class IojenkinsblueoceanresthalLinkBuilder
        {
            private string _Class;
            private string _Href;

            internal IojenkinsblueoceanresthalLinkBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanresthalLink.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public IojenkinsblueoceanresthalLinkBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanresthalLink.Href property.
            /// </summary>
            /// <param name="value">Href</param>
            public IojenkinsblueoceanresthalLinkBuilder Href(string value)
            {
                _Href = value;
                return this;
            }


            /// <summary>
            /// Builds instance of IojenkinsblueoceanresthalLink.
            /// </summary>
            /// <returns>IojenkinsblueoceanresthalLink</returns>
            public IojenkinsblueoceanresthalLink Build()
            {
                Validate();
                return new IojenkinsblueoceanresthalLink(
                    Class: _Class,
                    Href: _Href
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
