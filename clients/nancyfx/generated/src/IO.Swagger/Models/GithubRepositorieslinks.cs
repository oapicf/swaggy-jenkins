using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GithubRepositorieslinks
    /// </summary>
    public sealed class GithubRepositorieslinks:  IEquatable<GithubRepositorieslinks>
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
        /// Use GithubRepositorieslinks.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GithubRepositorieslinks()
        {
        }

        private GithubRepositorieslinks(Link Self, string Class)
        {
            
            this.Self = Self;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of GithubRepositorieslinks.
        /// </summary>
        /// <returns>GithubRepositorieslinksBuilder</returns>
        public static GithubRepositorieslinksBuilder Builder()
        {
            return new GithubRepositorieslinksBuilder();
        }

        /// <summary>
        /// Returns GithubRepositorieslinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GithubRepositorieslinksBuilder</returns>
        public GithubRepositorieslinksBuilder With()
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

        public bool Equals(GithubRepositorieslinks other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GithubRepositorieslinks.
        /// </summary>
        /// <param name="left">Compared (GithubRepositorieslinks</param>
        /// <param name="right">Compared (GithubRepositorieslinks</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GithubRepositorieslinks left, GithubRepositorieslinks right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GithubRepositorieslinks.
        /// </summary>
        /// <param name="left">Compared (GithubRepositorieslinks</param>
        /// <param name="right">Compared (GithubRepositorieslinks</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GithubRepositorieslinks left, GithubRepositorieslinks right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GithubRepositorieslinks.
        /// </summary>
        public sealed class GithubRepositorieslinksBuilder
        {
            private Link _Self;
            private string _Class;

            internal GithubRepositorieslinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GithubRepositorieslinks.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public GithubRepositorieslinksBuilder Self(Link value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepositorieslinks.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GithubRepositorieslinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GithubRepositorieslinks.
            /// </summary>
            /// <returns>GithubRepositorieslinks</returns>
            public GithubRepositorieslinks Build()
            {
                Validate();
                return new GithubRepositorieslinks(
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