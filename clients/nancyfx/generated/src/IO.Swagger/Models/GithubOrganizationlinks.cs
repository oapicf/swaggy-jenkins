using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GithubOrganizationlinks
    /// </summary>
    public sealed class GithubOrganizationlinks:  IEquatable<GithubOrganizationlinks>
    { 
        /// <summary>
        /// Repositories
        /// </summary>
        public Link Repositories { get; private set; }

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
        /// Use GithubOrganizationlinks.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GithubOrganizationlinks()
        {
        }

        private GithubOrganizationlinks(Link Repositories, Link Self, string Class)
        {
            
            this.Repositories = Repositories;
            
            this.Self = Self;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of GithubOrganizationlinks.
        /// </summary>
        /// <returns>GithubOrganizationlinksBuilder</returns>
        public static GithubOrganizationlinksBuilder Builder()
        {
            return new GithubOrganizationlinksBuilder();
        }

        /// <summary>
        /// Returns GithubOrganizationlinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GithubOrganizationlinksBuilder</returns>
        public GithubOrganizationlinksBuilder With()
        {
            return Builder()
                .Repositories(Repositories)
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

        public bool Equals(GithubOrganizationlinks other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GithubOrganizationlinks.
        /// </summary>
        /// <param name="left">Compared (GithubOrganizationlinks</param>
        /// <param name="right">Compared (GithubOrganizationlinks</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GithubOrganizationlinks left, GithubOrganizationlinks right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GithubOrganizationlinks.
        /// </summary>
        /// <param name="left">Compared (GithubOrganizationlinks</param>
        /// <param name="right">Compared (GithubOrganizationlinks</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GithubOrganizationlinks left, GithubOrganizationlinks right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GithubOrganizationlinks.
        /// </summary>
        public sealed class GithubOrganizationlinksBuilder
        {
            private Link _Repositories;
            private Link _Self;
            private string _Class;

            internal GithubOrganizationlinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GithubOrganizationlinks.Repositories property.
            /// </summary>
            /// <param name="value">Repositories</param>
            public GithubOrganizationlinksBuilder Repositories(Link value)
            {
                _Repositories = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubOrganizationlinks.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public GithubOrganizationlinksBuilder Self(Link value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubOrganizationlinks.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GithubOrganizationlinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GithubOrganizationlinks.
            /// </summary>
            /// <returns>GithubOrganizationlinks</returns>
            public GithubOrganizationlinks Build()
            {
                Validate();
                return new GithubOrganizationlinks(
                    Repositories: _Repositories,
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