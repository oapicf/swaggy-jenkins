using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// GithubRespositoryContainer
    /// </summary>
    public sealed class GithubRespositoryContainer:  IEquatable<GithubRespositoryContainer>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Links
        /// </summary>
        public GithubRespositoryContainerlinks Links { get; private set; }

        /// <summary>
        /// Repositories
        /// </summary>
        public GithubRepositories Repositories { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use GithubRespositoryContainer.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GithubRespositoryContainer()
        {
        }

        private GithubRespositoryContainer(string Class, GithubRespositoryContainerlinks Links, GithubRepositories Repositories)
        {
            
            this.Class = Class;
            
            this.Links = Links;
            
            this.Repositories = Repositories;
            
        }

        /// <summary>
        /// Returns builder of GithubRespositoryContainer.
        /// </summary>
        /// <returns>GithubRespositoryContainerBuilder</returns>
        public static GithubRespositoryContainerBuilder Builder()
        {
            return new GithubRespositoryContainerBuilder();
        }

        /// <summary>
        /// Returns GithubRespositoryContainerBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GithubRespositoryContainerBuilder</returns>
        public GithubRespositoryContainerBuilder With()
        {
            return Builder()
                .Class(Class)
                .Links(Links)
                .Repositories(Repositories);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(GithubRespositoryContainer other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GithubRespositoryContainer.
        /// </summary>
        /// <param name="left">Compared (GithubRespositoryContainer</param>
        /// <param name="right">Compared (GithubRespositoryContainer</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GithubRespositoryContainer left, GithubRespositoryContainer right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GithubRespositoryContainer.
        /// </summary>
        /// <param name="left">Compared (GithubRespositoryContainer</param>
        /// <param name="right">Compared (GithubRespositoryContainer</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GithubRespositoryContainer left, GithubRespositoryContainer right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GithubRespositoryContainer.
        /// </summary>
        public sealed class GithubRespositoryContainerBuilder
        {
            private string _Class;
            private GithubRespositoryContainerlinks _Links;
            private GithubRepositories _Repositories;

            internal GithubRespositoryContainerBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GithubRespositoryContainer.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GithubRespositoryContainerBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRespositoryContainer.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public GithubRespositoryContainerBuilder Links(GithubRespositoryContainerlinks value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRespositoryContainer.Repositories property.
            /// </summary>
            /// <param name="value">Repositories</param>
            public GithubRespositoryContainerBuilder Repositories(GithubRepositories value)
            {
                _Repositories = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GithubRespositoryContainer.
            /// </summary>
            /// <returns>GithubRespositoryContainer</returns>
            public GithubRespositoryContainer Build()
            {
                Validate();
                return new GithubRespositoryContainer(
                    Class: _Class,
                    Links: _Links,
                    Repositories: _Repositories
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}