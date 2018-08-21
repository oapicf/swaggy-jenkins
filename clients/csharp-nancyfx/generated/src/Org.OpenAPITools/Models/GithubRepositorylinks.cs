using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// GithubRepositorylinks
    /// </summary>
    public sealed class GithubRepositorylinks:  IEquatable<GithubRepositorylinks>
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
        /// Use GithubRepositorylinks.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GithubRepositorylinks()
        {
        }

        private GithubRepositorylinks(Link Self, string Class)
        {
            
            this.Self = Self;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of GithubRepositorylinks.
        /// </summary>
        /// <returns>GithubRepositorylinksBuilder</returns>
        public static GithubRepositorylinksBuilder Builder()
        {
            return new GithubRepositorylinksBuilder();
        }

        /// <summary>
        /// Returns GithubRepositorylinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GithubRepositorylinksBuilder</returns>
        public GithubRepositorylinksBuilder With()
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

        public bool Equals(GithubRepositorylinks other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GithubRepositorylinks.
        /// </summary>
        /// <param name="left">Compared (GithubRepositorylinks</param>
        /// <param name="right">Compared (GithubRepositorylinks</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GithubRepositorylinks left, GithubRepositorylinks right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GithubRepositorylinks.
        /// </summary>
        /// <param name="left">Compared (GithubRepositorylinks</param>
        /// <param name="right">Compared (GithubRepositorylinks</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GithubRepositorylinks left, GithubRepositorylinks right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GithubRepositorylinks.
        /// </summary>
        public sealed class GithubRepositorylinksBuilder
        {
            private Link _Self;
            private string _Class;

            internal GithubRepositorylinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GithubRepositorylinks.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public GithubRepositorylinksBuilder Self(Link value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepositorylinks.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GithubRepositorylinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GithubRepositorylinks.
            /// </summary>
            /// <returns>GithubRepositorylinks</returns>
            public GithubRepositorylinks Build()
            {
                Validate();
                return new GithubRepositorylinks(
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