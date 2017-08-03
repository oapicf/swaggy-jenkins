using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// Link
    /// </summary>
    public sealed class Link:  IEquatable<Link>
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
        /// Use Link.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public Link()
        {
        }

        private Link(string Class, string Href)
        {
            
            this.Class = Class;
            
            this.Href = Href;
            
        }

        /// <summary>
        /// Returns builder of Link.
        /// </summary>
        /// <returns>LinkBuilder</returns>
        public static LinkBuilder Builder()
        {
            return new LinkBuilder();
        }

        /// <summary>
        /// Returns LinkBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>LinkBuilder</returns>
        public LinkBuilder With()
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

        public bool Equals(Link other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (Link.
        /// </summary>
        /// <param name="left">Compared (Link</param>
        /// <param name="right">Compared (Link</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (Link left, Link right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (Link.
        /// </summary>
        /// <param name="left">Compared (Link</param>
        /// <param name="right">Compared (Link</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (Link left, Link right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of Link.
        /// </summary>
        public sealed class LinkBuilder
        {
            private string _Class;
            private string _Href;

            internal LinkBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for Link.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public LinkBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for Link.Href property.
            /// </summary>
            /// <param name="value">Href</param>
            public LinkBuilder Href(string value)
            {
                _Href = value;
                return this;
            }


            /// <summary>
            /// Builds instance of Link.
            /// </summary>
            /// <returns>Link</returns>
            public Link Build()
            {
                Validate();
                return new Link(
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