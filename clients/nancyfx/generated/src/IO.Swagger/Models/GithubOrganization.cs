using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GithubOrganization
    /// </summary>
    public sealed class GithubOrganization:  IEquatable<GithubOrganization>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Links
        /// </summary>
        public GithubOrganizationlinks Links { get; private set; }

        /// <summary>
        /// JenkinsOrganizationPipeline
        /// </summary>
        public bool? JenkinsOrganizationPipeline { get; private set; }

        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use GithubOrganization.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GithubOrganization()
        {
        }

        private GithubOrganization(string Class, GithubOrganizationlinks Links, bool? JenkinsOrganizationPipeline, string Name)
        {
            
            this.Class = Class;
            
            this.Links = Links;
            
            this.JenkinsOrganizationPipeline = JenkinsOrganizationPipeline;
            
            this.Name = Name;
            
        }

        /// <summary>
        /// Returns builder of GithubOrganization.
        /// </summary>
        /// <returns>GithubOrganizationBuilder</returns>
        public static GithubOrganizationBuilder Builder()
        {
            return new GithubOrganizationBuilder();
        }

        /// <summary>
        /// Returns GithubOrganizationBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GithubOrganizationBuilder</returns>
        public GithubOrganizationBuilder With()
        {
            return Builder()
                .Class(Class)
                .Links(Links)
                .JenkinsOrganizationPipeline(JenkinsOrganizationPipeline)
                .Name(Name);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(GithubOrganization other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GithubOrganization.
        /// </summary>
        /// <param name="left">Compared (GithubOrganization</param>
        /// <param name="right">Compared (GithubOrganization</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GithubOrganization left, GithubOrganization right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GithubOrganization.
        /// </summary>
        /// <param name="left">Compared (GithubOrganization</param>
        /// <param name="right">Compared (GithubOrganization</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GithubOrganization left, GithubOrganization right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GithubOrganization.
        /// </summary>
        public sealed class GithubOrganizationBuilder
        {
            private string _Class;
            private GithubOrganizationlinks _Links;
            private bool? _JenkinsOrganizationPipeline;
            private string _Name;

            internal GithubOrganizationBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GithubOrganization.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GithubOrganizationBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubOrganization.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public GithubOrganizationBuilder Links(GithubOrganizationlinks value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubOrganization.JenkinsOrganizationPipeline property.
            /// </summary>
            /// <param name="value">JenkinsOrganizationPipeline</param>
            public GithubOrganizationBuilder JenkinsOrganizationPipeline(bool? value)
            {
                _JenkinsOrganizationPipeline = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubOrganization.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public GithubOrganizationBuilder Name(string value)
            {
                _Name = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GithubOrganization.
            /// </summary>
            /// <returns>GithubOrganization</returns>
            public GithubOrganization Build()
            {
                Validate();
                return new GithubOrganization(
                    Class: _Class,
                    Links: _Links,
                    JenkinsOrganizationPipeline: _JenkinsOrganizationPipeline,
                    Name: _Name
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}