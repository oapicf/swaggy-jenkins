using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// GithubRespositoryContainerlinks
    /// </summary>
    public sealed class GithubRespositoryContainerlinks:  IEquatable<GithubRespositoryContainerlinks>
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
        /// Use GithubRespositoryContainerlinks.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GithubRespositoryContainerlinks()
        {
        }

        private GithubRespositoryContainerlinks(Link Self, string Class)
        {
            
            this.Self = Self;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of GithubRespositoryContainerlinks.
        /// </summary>
        /// <returns>GithubRespositoryContainerlinksBuilder</returns>
        public static GithubRespositoryContainerlinksBuilder Builder()
        {
            return new GithubRespositoryContainerlinksBuilder();
        }

        /// <summary>
        /// Returns GithubRespositoryContainerlinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GithubRespositoryContainerlinksBuilder</returns>
        public GithubRespositoryContainerlinksBuilder With()
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

        public bool Equals(GithubRespositoryContainerlinks other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GithubRespositoryContainerlinks.
        /// </summary>
        /// <param name="left">Compared (GithubRespositoryContainerlinks</param>
        /// <param name="right">Compared (GithubRespositoryContainerlinks</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GithubRespositoryContainerlinks left, GithubRespositoryContainerlinks right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GithubRespositoryContainerlinks.
        /// </summary>
        /// <param name="left">Compared (GithubRespositoryContainerlinks</param>
        /// <param name="right">Compared (GithubRespositoryContainerlinks</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GithubRespositoryContainerlinks left, GithubRespositoryContainerlinks right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GithubRespositoryContainerlinks.
        /// </summary>
        public sealed class GithubRespositoryContainerlinksBuilder
        {
            private Link _Self;
            private string _Class;

            internal GithubRespositoryContainerlinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GithubRespositoryContainerlinks.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public GithubRespositoryContainerlinksBuilder Self(Link value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRespositoryContainerlinks.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GithubRespositoryContainerlinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GithubRespositoryContainerlinks.
            /// </summary>
            /// <returns>GithubRespositoryContainerlinks</returns>
            public GithubRespositoryContainerlinks Build()
            {
                Validate();
                return new GithubRespositoryContainerlinks(
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