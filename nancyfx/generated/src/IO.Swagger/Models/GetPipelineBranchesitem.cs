using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GetPipelineBranchesitem
    /// </summary>
    public sealed class GetPipelineBranchesitem:  IEquatable<GetPipelineBranchesitem>
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
        public GetPipelineBranchesitemLatestRun LatestRun { get; private set; }

        /// <summary>
        /// Organization
        /// </summary>
        public string Organization { get; private set; }

        /// <summary>
        /// PullRequest
        /// </summary>
        public GetPipelineBranchesitemPullRequest PullRequest { get; private set; }

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
        /// Use GetPipelineBranchesitem.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GetPipelineBranchesitem()
        {
        }

        private GetPipelineBranchesitem(string DisplayName, int? EstimatedDurationInMillis, string Name, int? WeatherScore, GetPipelineBranchesitemLatestRun LatestRun, string Organization, GetPipelineBranchesitemPullRequest PullRequest, int? TotalNumberOfPullRequests, string Class)
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
        /// Returns builder of GetPipelineBranchesitem.
        /// </summary>
        /// <returns>GetPipelineBranchesitemBuilder</returns>
        public static GetPipelineBranchesitemBuilder Builder()
        {
            return new GetPipelineBranchesitemBuilder();
        }

        /// <summary>
        /// Returns GetPipelineBranchesitemBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GetPipelineBranchesitemBuilder</returns>
        public GetPipelineBranchesitemBuilder With()
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

        public bool Equals(GetPipelineBranchesitem other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GetPipelineBranchesitem.
        /// </summary>
        /// <param name="left">Compared (GetPipelineBranchesitem</param>
        /// <param name="right">Compared (GetPipelineBranchesitem</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GetPipelineBranchesitem left, GetPipelineBranchesitem right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GetPipelineBranchesitem.
        /// </summary>
        /// <param name="left">Compared (GetPipelineBranchesitem</param>
        /// <param name="right">Compared (GetPipelineBranchesitem</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GetPipelineBranchesitem left, GetPipelineBranchesitem right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GetPipelineBranchesitem.
        /// </summary>
        public sealed class GetPipelineBranchesitemBuilder
        {
            private string _DisplayName;
            private int? _EstimatedDurationInMillis;
            private string _Name;
            private int? _WeatherScore;
            private GetPipelineBranchesitemLatestRun _LatestRun;
            private string _Organization;
            private GetPipelineBranchesitemPullRequest _PullRequest;
            private int? _TotalNumberOfPullRequests;
            private string _Class;

            internal GetPipelineBranchesitemBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitem.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public GetPipelineBranchesitemBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitem.EstimatedDurationInMillis property.
            /// </summary>
            /// <param name="value">EstimatedDurationInMillis</param>
            public GetPipelineBranchesitemBuilder EstimatedDurationInMillis(int? value)
            {
                _EstimatedDurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitem.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public GetPipelineBranchesitemBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitem.WeatherScore property.
            /// </summary>
            /// <param name="value">WeatherScore</param>
            public GetPipelineBranchesitemBuilder WeatherScore(int? value)
            {
                _WeatherScore = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitem.LatestRun property.
            /// </summary>
            /// <param name="value">LatestRun</param>
            public GetPipelineBranchesitemBuilder LatestRun(GetPipelineBranchesitemLatestRun value)
            {
                _LatestRun = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitem.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public GetPipelineBranchesitemBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitem.PullRequest property.
            /// </summary>
            /// <param name="value">PullRequest</param>
            public GetPipelineBranchesitemBuilder PullRequest(GetPipelineBranchesitemPullRequest value)
            {
                _PullRequest = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitem.TotalNumberOfPullRequests property.
            /// </summary>
            /// <param name="value">TotalNumberOfPullRequests</param>
            public GetPipelineBranchesitemBuilder TotalNumberOfPullRequests(int? value)
            {
                _TotalNumberOfPullRequests = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitem.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GetPipelineBranchesitemBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GetPipelineBranchesitem.
            /// </summary>
            /// <returns>GetPipelineBranchesitem</returns>
            public GetPipelineBranchesitem Build()
            {
                Validate();
                return new GetPipelineBranchesitem(
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
