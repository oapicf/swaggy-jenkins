using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// GithubRepository
    /// </summary>
    public sealed class GithubRepository:  IEquatable<GithubRepository>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Links
        /// </summary>
        public GithubRepositorylinks Links { get; private set; }

        /// <summary>
        /// DefaultBranch
        /// </summary>
        public string DefaultBranch { get; private set; }

        /// <summary>
        /// Description
        /// </summary>
        public string Description { get; private set; }

        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }

        /// <summary>
        /// Permissions
        /// </summary>
        public GithubRepositorypermissions Permissions { get; private set; }

        /// <summary>
        /// Private
        /// </summary>
        public bool? Private { get; private set; }

        /// <summary>
        /// FullName
        /// </summary>
        public string FullName { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use GithubRepository.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GithubRepository()
        {
        }

        private GithubRepository(string Class, GithubRepositorylinks Links, string DefaultBranch, string Description, string Name, GithubRepositorypermissions Permissions, bool? Private, string FullName)
        {
            
            this.Class = Class;
            
            this.Links = Links;
            
            this.DefaultBranch = DefaultBranch;
            
            this.Description = Description;
            
            this.Name = Name;
            
            this.Permissions = Permissions;
            
            this.Private = Private;
            
            this.FullName = FullName;
            
        }

        /// <summary>
        /// Returns builder of GithubRepository.
        /// </summary>
        /// <returns>GithubRepositoryBuilder</returns>
        public static GithubRepositoryBuilder Builder()
        {
            return new GithubRepositoryBuilder();
        }

        /// <summary>
        /// Returns GithubRepositoryBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GithubRepositoryBuilder</returns>
        public GithubRepositoryBuilder With()
        {
            return Builder()
                .Class(Class)
                .Links(Links)
                .DefaultBranch(DefaultBranch)
                .Description(Description)
                .Name(Name)
                .Permissions(Permissions)
                .Private(Private)
                .FullName(FullName);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(GithubRepository other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GithubRepository.
        /// </summary>
        /// <param name="left">Compared (GithubRepository</param>
        /// <param name="right">Compared (GithubRepository</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GithubRepository left, GithubRepository right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GithubRepository.
        /// </summary>
        /// <param name="left">Compared (GithubRepository</param>
        /// <param name="right">Compared (GithubRepository</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GithubRepository left, GithubRepository right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GithubRepository.
        /// </summary>
        public sealed class GithubRepositoryBuilder
        {
            private string _Class;
            private GithubRepositorylinks _Links;
            private string _DefaultBranch;
            private string _Description;
            private string _Name;
            private GithubRepositorypermissions _Permissions;
            private bool? _Private;
            private string _FullName;

            internal GithubRepositoryBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GithubRepository.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GithubRepositoryBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepository.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public GithubRepositoryBuilder Links(GithubRepositorylinks value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepository.DefaultBranch property.
            /// </summary>
            /// <param name="value">DefaultBranch</param>
            public GithubRepositoryBuilder DefaultBranch(string value)
            {
                _DefaultBranch = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepository.Description property.
            /// </summary>
            /// <param name="value">Description</param>
            public GithubRepositoryBuilder Description(string value)
            {
                _Description = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepository.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public GithubRepositoryBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepository.Permissions property.
            /// </summary>
            /// <param name="value">Permissions</param>
            public GithubRepositoryBuilder Permissions(GithubRepositorypermissions value)
            {
                _Permissions = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepository.Private property.
            /// </summary>
            /// <param name="value">Private</param>
            public GithubRepositoryBuilder Private(bool? value)
            {
                _Private = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepository.FullName property.
            /// </summary>
            /// <param name="value">FullName</param>
            public GithubRepositoryBuilder FullName(string value)
            {
                _FullName = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GithubRepository.
            /// </summary>
            /// <returns>GithubRepository</returns>
            public GithubRepository Build()
            {
                Validate();
                return new GithubRepository(
                    Class: _Class,
                    Links: _Links,
                    DefaultBranch: _DefaultBranch,
                    Description: _Description,
                    Name: _Name,
                    Permissions: _Permissions,
                    Private: _Private,
                    FullName: _FullName
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}