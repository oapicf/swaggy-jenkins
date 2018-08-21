using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// PipelineBranchesitem
    /// </summary>
    public sealed class PipelineBranchesitem:  IEquatable<PipelineBranchesitem>
    { 
        /// <summary>
        /// DisplayName
        /// </summary>
        public string DisplayName { get; private set; }

        /// <summary>
        /// EstimatedDurationInMillis
        /// </summary>
        public int? EstimatedDurationInMillis { get; private set; }

        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }

        /// <summary>
        /// WeatherScore
        /// </summary>
        public int? WeatherScore { get; private set; }

        /// <summary>
        /// LatestRun
        /// </summary>
        public PipelineBranchesitemlatestRun LatestRun { get; private set; }

        /// <summary>
        /// Organization
        /// </summary>
        public string Organization { get; private set; }

        /// <summary>
        /// PullRequest
        /// </summary>
        public PipelineBranchesitempullRequest PullRequest { get; private set; }

        /// <summary>
        /// TotalNumberOfPullRequests
        /// </summary>
        public int? TotalNumberOfPullRequests { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineBranchesitem.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineBranchesitem()
        {
        }

        private PipelineBranchesitem(string DisplayName, int? EstimatedDurationInMillis, string Name, int? WeatherScore, PipelineBranchesitemlatestRun LatestRun, string Organization, PipelineBranchesitempullRequest PullRequest, int? TotalNumberOfPullRequests, string Class)
        {
            
            this.DisplayName = DisplayName;
            
            this.EstimatedDurationInMillis = EstimatedDurationInMillis;
            
            this.Name = Name;
            
            this.WeatherScore = WeatherScore;
            
            this.LatestRun = LatestRun;
            
            this.Organization = Organization;
            
            this.PullRequest = PullRequest;
            
            this.TotalNumberOfPullRequests = TotalNumberOfPullRequests;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of PipelineBranchesitem.
        /// </summary>
        /// <returns>PipelineBranchesitemBuilder</returns>
        public static PipelineBranchesitemBuilder Builder()
        {
            return new PipelineBranchesitemBuilder();
        }

        /// <summary>
        /// Returns PipelineBranchesitemBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineBranchesitemBuilder</returns>
        public PipelineBranchesitemBuilder With()
        {
            return Builder()
                .DisplayName(DisplayName)
                .EstimatedDurationInMillis(EstimatedDurationInMillis)
                .Name(Name)
                .WeatherScore(WeatherScore)
                .LatestRun(LatestRun)
                .Organization(Organization)
                .PullRequest(PullRequest)
                .TotalNumberOfPullRequests(TotalNumberOfPullRequests)
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

        public bool Equals(PipelineBranchesitem other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineBranchesitem.
        /// </summary>
        /// <param name="left">Compared (PipelineBranchesitem</param>
        /// <param name="right">Compared (PipelineBranchesitem</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineBranchesitem left, PipelineBranchesitem right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineBranchesitem.
        /// </summary>
        /// <param name="left">Compared (PipelineBranchesitem</param>
        /// <param name="right">Compared (PipelineBranchesitem</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineBranchesitem left, PipelineBranchesitem right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineBranchesitem.
        /// </summary>
        public sealed class PipelineBranchesitemBuilder
        {
            private string _DisplayName;
            private int? _EstimatedDurationInMillis;
            private string _Name;
            private int? _WeatherScore;
            private PipelineBranchesitemlatestRun _LatestRun;
            private string _Organization;
            private PipelineBranchesitempullRequest _PullRequest;
            private int? _TotalNumberOfPullRequests;
            private string _Class;

            internal PipelineBranchesitemBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineBranchesitem.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public PipelineBranchesitemBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitem.EstimatedDurationInMillis property.
            /// </summary>
            /// <param name="value">EstimatedDurationInMillis</param>
            public PipelineBranchesitemBuilder EstimatedDurationInMillis(int? value)
            {
                _EstimatedDurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitem.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public PipelineBranchesitemBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitem.WeatherScore property.
            /// </summary>
            /// <param name="value">WeatherScore</param>
            public PipelineBranchesitemBuilder WeatherScore(int? value)
            {
                _WeatherScore = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitem.LatestRun property.
            /// </summary>
            /// <param name="value">LatestRun</param>
            public PipelineBranchesitemBuilder LatestRun(PipelineBranchesitemlatestRun value)
            {
                _LatestRun = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitem.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public PipelineBranchesitemBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitem.PullRequest property.
            /// </summary>
            /// <param name="value">PullRequest</param>
            public PipelineBranchesitemBuilder PullRequest(PipelineBranchesitempullRequest value)
            {
                _PullRequest = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitem.TotalNumberOfPullRequests property.
            /// </summary>
            /// <param name="value">TotalNumberOfPullRequests</param>
            public PipelineBranchesitemBuilder TotalNumberOfPullRequests(int? value)
            {
                _TotalNumberOfPullRequests = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitem.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineBranchesitemBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineBranchesitem.
            /// </summary>
            /// <returns>PipelineBranchesitem</returns>
            public PipelineBranchesitem Build()
            {
                Validate();
                return new PipelineBranchesitem(
                    DisplayName: _DisplayName,
                    EstimatedDurationInMillis: _EstimatedDurationInMillis,
                    Name: _Name,
                    WeatherScore: _WeatherScore,
                    LatestRun: _LatestRun,
                    Organization: _Organization,
                    PullRequest: _PullRequest,
                    TotalNumberOfPullRequests: _TotalNumberOfPullRequests,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}