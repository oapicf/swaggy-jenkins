using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GithubScmlinks
    /// </summary>
    public sealed class GithubScmlinks:  IEquatable<GithubScmlinks>
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
        /// Use GithubScmlinks.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GithubScmlinks()
        {
        }

        private GithubScmlinks(Link Self, string Class)
        {
            
            this.Self = Self;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of GithubScmlinks.
        /// </summary>
        /// <returns>GithubScmlinksBuilder</returns>
        public static GithubScmlinksBuilder Builder()
        {
            return new GithubScmlinksBuilder();
        }

        /// <summary>
        /// Returns GithubScmlinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GithubScmlinksBuilder</returns>
        public GithubScmlinksBuilder With()
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

        public bool Equals(GithubScmlinks other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GithubScmlinks.
        /// </summary>
        /// <param name="left">Compared (GithubScmlinks</param>
        /// <param name="right">Compared (GithubScmlinks</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GithubScmlinks left, GithubScmlinks right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GithubScmlinks.
        /// </summary>
        /// <param name="left">Compared (GithubScmlinks</param>
        /// <param name="right">Compared (GithubScmlinks</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GithubScmlinks left, GithubScmlinks right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GithubScmlinks.
        /// </summary>
        public sealed class GithubScmlinksBuilder
        {
            private Link _Self;
            private string _Class;

            internal GithubScmlinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GithubScmlinks.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public GithubScmlinksBuilder Self(Link value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubScmlinks.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GithubScmlinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GithubScmlinks.
            /// </summary>
            /// <returns>GithubScmlinks</returns>
            public GithubScmlinks Build()
            {
                Validate();
                return new GithubScmlinks(
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