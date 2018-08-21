using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// BranchImpl
    /// </summary>
    public sealed class BranchImpl:  IEquatable<BranchImpl>
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
        public List<StringParameterDefinition> Parameters { get; private set; }

        /// <summary>
        /// Permissions
        /// </summary>
        public BranchImplpermissions Permissions { get; private set; }

        /// <summary>
        /// WeatherScore
        /// </summary>
        public int? WeatherScore { get; private set; }

        /// <summary>
        /// PullRequest
        /// </summary>
        public string PullRequest { get; private set; }

        /// <summary>
        /// Links
        /// </summary>
        public BranchImpllinks Links { get; private set; }

        /// <summary>
        /// LatestRun
        /// </summary>
        public PipelineRunImpl LatestRun { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use BranchImpl.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public BranchImpl()
        {
        }

        private BranchImpl(string Class, string DisplayName, int? EstimatedDurationInMillis, string FullDisplayName, string FullName, string Name, string Organization, List<StringParameterDefinition> Parameters, BranchImplpermissions Permissions, int? WeatherScore, string PullRequest, BranchImpllinks Links, PipelineRunImpl LatestRun)
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
            
            this.Links = Links;
            
            this.LatestRun = LatestRun;
            
        }

        /// <summary>
        /// Returns builder of BranchImpl.
        /// </summary>
        /// <returns>BranchImplBuilder</returns>
        public static BranchImplBuilder Builder()
        {
            return new BranchImplBuilder();
        }

        /// <summary>
        /// Returns BranchImplBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>BranchImplBuilder</returns>
        public BranchImplBuilder With()
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
                .PullRequest(PullRequest)
                .Links(Links)
                .LatestRun(LatestRun);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(BranchImpl other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (BranchImpl.
        /// </summary>
        /// <param name="left">Compared (BranchImpl</param>
        /// <param name="right">Compared (BranchImpl</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (BranchImpl left, BranchImpl right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (BranchImpl.
        /// </summary>
        /// <param name="left">Compared (BranchImpl</param>
        /// <param name="right">Compared (BranchImpl</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (BranchImpl left, BranchImpl right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of BranchImpl.
        /// </summary>
        public sealed class BranchImplBuilder
        {
            private string _Class;
            private string _DisplayName;
            private int? _EstimatedDurationInMillis;
            private string _FullDisplayName;
            private string _FullName;
            private string _Name;
            private string _Organization;
            private List<StringParameterDefinition> _Parameters;
            private BranchImplpermissions _Permissions;
            private int? _WeatherScore;
            private string _PullRequest;
            private BranchImpllinks _Links;
            private PipelineRunImpl _LatestRun;

            internal BranchImplBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for BranchImpl.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public BranchImplBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpl.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public BranchImplBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpl.EstimatedDurationInMillis property.
            /// </summary>
            /// <param name="value">EstimatedDurationInMillis</param>
            public BranchImplBuilder EstimatedDurationInMillis(int? value)
            {
                _EstimatedDurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpl.FullDisplayName property.
            /// </summary>
            /// <param name="value">FullDisplayName</param>
            public BranchImplBuilder FullDisplayName(string value)
            {
                _FullDisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpl.FullName property.
            /// </summary>
            /// <param name="value">FullName</param>
            public BranchImplBuilder FullName(string value)
            {
                _FullName = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpl.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public BranchImplBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpl.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public BranchImplBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpl.Parameters property.
            /// </summary>
            /// <param name="value">Parameters</param>
            public BranchImplBuilder Parameters(List<StringParameterDefinition> value)
            {
                _Parameters = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpl.Permissions property.
            /// </summary>
            /// <param name="value">Permissions</param>
            public BranchImplBuilder Permissions(BranchImplpermissions value)
            {
                _Permissions = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpl.WeatherScore property.
            /// </summary>
            /// <param name="value">WeatherScore</param>
            public BranchImplBuilder WeatherScore(int? value)
            {
                _WeatherScore = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpl.PullRequest property.
            /// </summary>
            /// <param name="value">PullRequest</param>
            public BranchImplBuilder PullRequest(string value)
            {
                _PullRequest = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpl.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public BranchImplBuilder Links(BranchImpllinks value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImpl.LatestRun property.
            /// </summary>
            /// <param name="value">LatestRun</param>
            public BranchImplBuilder LatestRun(PipelineRunImpl value)
            {
                _LatestRun = value;
                return this;
            }


            /// <summary>
            /// Builds instance of BranchImpl.
            /// </summary>
            /// <returns>BranchImpl</returns>
            public BranchImpl Build()
            {
                Validate();
                return new BranchImpl(
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
                    PullRequest: _PullRequest,
                    Links: _Links,
                    LatestRun: _LatestRun
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}