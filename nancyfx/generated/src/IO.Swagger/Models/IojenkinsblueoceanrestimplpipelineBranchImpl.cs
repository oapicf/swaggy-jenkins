using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// IojenkinsblueoceanrestimplpipelineBranchImpl
    /// </summary>
    public sealed class IojenkinsblueoceanrestimplpipelineBranchImpl:  IEquatable<IojenkinsblueoceanrestimplpipelineBranchImpl>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// DisplayName
        /// </summary>
        public string DisplayName { get; private set; }

        /// <summary>
        /// EstimatedDurationInMillis
        /// </summary>
        public int? EstimatedDurationInMillis { get; private set; }

        /// <summary>
        /// FullDisplayName
        /// </summary>
        public string FullDisplayName { get; private set; }

        /// <summary>
        /// FullName
        /// </summary>
        public string FullName { get; private set; }

        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }

        /// <summary>
        /// Organization
        /// </summary>
        public string Organization { get; private set; }

        /// <summary>
        /// Parameters
        /// </summary>
        public List<HudsonmodelStringParameterDefinition> Parameters { get; private set; }

        /// <summary>
        /// Permissions
        /// </summary>
        public IojenkinsblueoceanrestimplpipelineBranchImplPermissions Permissions { get; private set; }

        /// <summary>
        /// WeatherScore
        /// </summary>
        public int? WeatherScore { get; private set; }

        /// <summary>
        /// PullRequest
        /// </summary>
        public string PullRequest { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use IojenkinsblueoceanrestimplpipelineBranchImpl.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public IojenkinsblueoceanrestimplpipelineBranchImpl()
        {
        }

        private IojenkinsblueoceanrestimplpipelineBranchImpl(string Class, string DisplayName, int? EstimatedDurationInMillis, string FullDisplayName, string FullName, string Name, string Organization, List<HudsonmodelStringParameterDefinition> Parameters, IojenkinsblueoceanrestimplpipelineBranchImplPermissions Permissions, int? WeatherScore, string PullRequest)
        {
            
            this.Class = Class;
            
            this.DisplayName = DisplayName;
            
            this.EstimatedDurationInMillis = EstimatedDurationInMillis;
            
            this.FullDisplayName = FullDisplayName;
            
            this.FullName = FullName;
            
            this.Name = Name;
            
            this.Organization = Organization;
            
            this.Parameters = Parameters;
            
            this.Permissions = Permissions;
            
            this.WeatherScore = WeatherScore;
            
            this.PullRequest = PullRequest;
            
        }

        /// <summary>
        /// Returns builder of IojenkinsblueoceanrestimplpipelineBranchImpl.
        /// </summary>
        /// <returns>IojenkinsblueoceanrestimplpipelineBranchImplBuilder</returns>
        public static IojenkinsblueoceanrestimplpipelineBranchImplBuilder Builder()
        {
            return new IojenkinsblueoceanrestimplpipelineBranchImplBuilder();
        }

        /// <summary>
        /// Returns IojenkinsblueoceanrestimplpipelineBranchImplBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>IojenkinsblueoceanrestimplpipelineBranchImplBuilder</returns>
        public IojenkinsblueoceanrestimplpipelineBranchImplBuilder With()
        {
            return Builder()
                .Class(Class)
                .DisplayName(DisplayName)
                .EstimatedDurationInMillis(EstimatedDurationInMillis)
                .FullDisplayName(FullDisplayName)
                .FullName(FullName)
                .Name(Name)
                .Organization(Organization)
                .Parameters(Parameters)
                .Permissions(Permissions)
                .WeatherScore(WeatherScore)
                .PullRequest(PullRequest);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(IojenkinsblueoceanrestimplpipelineBranchImpl other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (IojenkinsblueoceanrestimplpipelineBranchImpl.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanrestimplpipelineBranchImpl</param>
        /// <param name="right">Compared (IojenkinsblueoceanrestimplpipelineBranchImpl</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (IojenkinsblueoceanrestimplpipelineBranchImpl left, IojenkinsblueoceanrestimplpipelineBranchImpl right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (IojenkinsblueoceanrestimplpipelineBranchImpl.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanrestimplpipelineBranchImpl</param>
        /// <param name="right">Compared (IojenkinsblueoceanrestimplpipelineBranchImpl</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (IojenkinsblueoceanrestimplpipelineBranchImpl left, IojenkinsblueoceanrestimplpipelineBranchImpl right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of IojenkinsblueoceanrestimplpipelineBranchImpl.
        /// </summary>
        public sealed class IojenkinsblueoceanrestimplpipelineBranchImplBuilder
        {
            private string _Class;
            private string _DisplayName;
            private int? _EstimatedDurationInMillis;
            private string _FullDisplayName;
            private string _FullName;
            private string _Name;
            private string _Organization;
            private List<HudsonmodelStringParameterDefinition> _Parameters;
            private IojenkinsblueoceanrestimplpipelineBranchImplPermissions _Permissions;
            private int? _WeatherScore;
            private string _PullRequest;

            internal IojenkinsblueoceanrestimplpipelineBranchImplBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImpl.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImpl.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImpl.EstimatedDurationInMillis property.
            /// </summary>
            /// <param name="value">EstimatedDurationInMillis</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplBuilder EstimatedDurationInMillis(int? value)
            {
                _EstimatedDurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImpl.FullDisplayName property.
            /// </summary>
            /// <param name="value">FullDisplayName</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplBuilder FullDisplayName(string value)
            {
                _FullDisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImpl.FullName property.
            /// </summary>
            /// <param name="value">FullName</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplBuilder FullName(string value)
            {
                _FullName = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImpl.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImpl.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImpl.Parameters property.
            /// </summary>
            /// <param name="value">Parameters</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplBuilder Parameters(List<HudsonmodelStringParameterDefinition> value)
            {
                _Parameters = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImpl.Permissions property.
            /// </summary>
            /// <param name="value">Permissions</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplBuilder Permissions(IojenkinsblueoceanrestimplpipelineBranchImplPermissions value)
            {
                _Permissions = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImpl.WeatherScore property.
            /// </summary>
            /// <param name="value">WeatherScore</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplBuilder WeatherScore(int? value)
            {
                _WeatherScore = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImpl.PullRequest property.
            /// </summary>
            /// <param name="value">PullRequest</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplBuilder PullRequest(string value)
            {
                _PullRequest = value;
                return this;
            }


            /// <summary>
            /// Builds instance of IojenkinsblueoceanrestimplpipelineBranchImpl.
            /// </summary>
            /// <returns>IojenkinsblueoceanrestimplpipelineBranchImpl</returns>
            public IojenkinsblueoceanrestimplpipelineBranchImpl Build()
            {
                Validate();
                return new IojenkinsblueoceanrestimplpipelineBranchImpl(
                    Class: _Class,
                    DisplayName: _DisplayName,
                    EstimatedDurationInMillis: _EstimatedDurationInMillis,
                    FullDisplayName: _FullDisplayName,
                    FullName: _FullName,
                    Name: _Name,
                    Organization: _Organization,
                    Parameters: _Parameters,
                    Permissions: _Permissions,
                    WeatherScore: _WeatherScore,
                    PullRequest: _PullRequest
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
