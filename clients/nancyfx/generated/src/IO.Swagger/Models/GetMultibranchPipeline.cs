using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GetMultibranchPipeline
    /// </summary>
    public sealed class GetMultibranchPipeline:  IEquatable<GetMultibranchPipeline>
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
        /// LatestRun
        /// </summary>
        public string LatestRun { get; private set; }

        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }

        /// <summary>
        /// Organization
        /// </summary>
        public string Organization { get; private set; }

        /// <summary>
        /// WeatherScore
        /// </summary>
        public int? WeatherScore { get; private set; }

        /// <summary>
        /// BranchNames
        /// </summary>
        public List<string> BranchNames { get; private set; }

        /// <summary>
        /// NumberOfFailingBranches
        /// </summary>
        public int? NumberOfFailingBranches { get; private set; }

        /// <summary>
        /// NumberOfFailingPullRequests
        /// </summary>
        public int? NumberOfFailingPullRequests { get; private set; }

        /// <summary>
        /// NumberOfSuccessfulBranches
        /// </summary>
        public int? NumberOfSuccessfulBranches { get; private set; }

        /// <summary>
        /// NumberOfSuccessfulPullRequests
        /// </summary>
        public int? NumberOfSuccessfulPullRequests { get; private set; }

        /// <summary>
        /// TotalNumberOfBranches
        /// </summary>
        public int? TotalNumberOfBranches { get; private set; }

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
        /// Use GetMultibranchPipeline.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GetMultibranchPipeline()
        {
        }

        private GetMultibranchPipeline(string DisplayName, int? EstimatedDurationInMillis, string LatestRun, string Name, string Organization, int? WeatherScore, List<string> BranchNames, int? NumberOfFailingBranches, int? NumberOfFailingPullRequests, int? NumberOfSuccessfulBranches, int? NumberOfSuccessfulPullRequests, int? TotalNumberOfBranches, int? TotalNumberOfPullRequests, string Class)
        {
            
            this.DisplayName = DisplayName;
            
            this.EstimatedDurationInMillis = EstimatedDurationInMillis;
            
            this.LatestRun = LatestRun;
            
            this.Name = Name;
            
            this.Organization = Organization;
            
            this.WeatherScore = WeatherScore;
            
            this.BranchNames = BranchNames;
            
            this.NumberOfFailingBranches = NumberOfFailingBranches;
            
            this.NumberOfFailingPullRequests = NumberOfFailingPullRequests;
            
            this.NumberOfSuccessfulBranches = NumberOfSuccessfulBranches;
            
            this.NumberOfSuccessfulPullRequests = NumberOfSuccessfulPullRequests;
            
            this.TotalNumberOfBranches = TotalNumberOfBranches;
            
            this.TotalNumberOfPullRequests = TotalNumberOfPullRequests;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of GetMultibranchPipeline.
        /// </summary>
        /// <returns>GetMultibranchPipelineBuilder</returns>
        public static GetMultibranchPipelineBuilder Builder()
        {
            return new GetMultibranchPipelineBuilder();
        }

        /// <summary>
        /// Returns GetMultibranchPipelineBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GetMultibranchPipelineBuilder</returns>
        public GetMultibranchPipelineBuilder With()
        {
            return Builder()
                .DisplayName(DisplayName)
                .EstimatedDurationInMillis(EstimatedDurationInMillis)
                .LatestRun(LatestRun)
                .Name(Name)
                .Organization(Organization)
                .WeatherScore(WeatherScore)
                .BranchNames(BranchNames)
                .NumberOfFailingBranches(NumberOfFailingBranches)
                .NumberOfFailingPullRequests(NumberOfFailingPullRequests)
                .NumberOfSuccessfulBranches(NumberOfSuccessfulBranches)
                .NumberOfSuccessfulPullRequests(NumberOfSuccessfulPullRequests)
                .TotalNumberOfBranches(TotalNumberOfBranches)
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

        public bool Equals(GetMultibranchPipeline other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GetMultibranchPipeline.
        /// </summary>
        /// <param name="left">Compared (GetMultibranchPipeline</param>
        /// <param name="right">Compared (GetMultibranchPipeline</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GetMultibranchPipeline left, GetMultibranchPipeline right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GetMultibranchPipeline.
        /// </summary>
        /// <param name="left">Compared (GetMultibranchPipeline</param>
        /// <param name="right">Compared (GetMultibranchPipeline</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GetMultibranchPipeline left, GetMultibranchPipeline right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GetMultibranchPipeline.
        /// </summary>
        public sealed class GetMultibranchPipelineBuilder
        {
            private string _DisplayName;
            private int? _EstimatedDurationInMillis;
            private string _LatestRun;
            private string _Name;
            private string _Organization;
            private int? _WeatherScore;
            private List<string> _BranchNames;
            private int? _NumberOfFailingBranches;
            private int? _NumberOfFailingPullRequests;
            private int? _NumberOfSuccessfulBranches;
            private int? _NumberOfSuccessfulPullRequests;
            private int? _TotalNumberOfBranches;
            private int? _TotalNumberOfPullRequests;
            private string _Class;

            internal GetMultibranchPipelineBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GetMultibranchPipeline.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public GetMultibranchPipelineBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetMultibranchPipeline.EstimatedDurationInMillis property.
            /// </summary>
            /// <param name="value">EstimatedDurationInMillis</param>
            public GetMultibranchPipelineBuilder EstimatedDurationInMillis(int? value)
            {
                _EstimatedDurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetMultibranchPipeline.LatestRun property.
            /// </summary>
            /// <param name="value">LatestRun</param>
            public GetMultibranchPipelineBuilder LatestRun(string value)
            {
                _LatestRun = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetMultibranchPipeline.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public GetMultibranchPipelineBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetMultibranchPipeline.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public GetMultibranchPipelineBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetMultibranchPipeline.WeatherScore property.
            /// </summary>
            /// <param name="value">WeatherScore</param>
            public GetMultibranchPipelineBuilder WeatherScore(int? value)
            {
                _WeatherScore = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetMultibranchPipeline.BranchNames property.
            /// </summary>
            /// <param name="value">BranchNames</param>
            public GetMultibranchPipelineBuilder BranchNames(List<string> value)
            {
                _BranchNames = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetMultibranchPipeline.NumberOfFailingBranches property.
            /// </summary>
            /// <param name="value">NumberOfFailingBranches</param>
            public GetMultibranchPipelineBuilder NumberOfFailingBranches(int? value)
            {
                _NumberOfFailingBranches = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetMultibranchPipeline.NumberOfFailingPullRequests property.
            /// </summary>
            /// <param name="value">NumberOfFailingPullRequests</param>
            public GetMultibranchPipelineBuilder NumberOfFailingPullRequests(int? value)
            {
                _NumberOfFailingPullRequests = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetMultibranchPipeline.NumberOfSuccessfulBranches property.
            /// </summary>
            /// <param name="value">NumberOfSuccessfulBranches</param>
            public GetMultibranchPipelineBuilder NumberOfSuccessfulBranches(int? value)
            {
                _NumberOfSuccessfulBranches = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetMultibranchPipeline.NumberOfSuccessfulPullRequests property.
            /// </summary>
            /// <param name="value">NumberOfSuccessfulPullRequests</param>
            public GetMultibranchPipelineBuilder NumberOfSuccessfulPullRequests(int? value)
            {
                _NumberOfSuccessfulPullRequests = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetMultibranchPipeline.TotalNumberOfBranches property.
            /// </summary>
            /// <param name="value">TotalNumberOfBranches</param>
            public GetMultibranchPipelineBuilder TotalNumberOfBranches(int? value)
            {
                _TotalNumberOfBranches = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetMultibranchPipeline.TotalNumberOfPullRequests property.
            /// </summary>
            /// <param name="value">TotalNumberOfPullRequests</param>
            public GetMultibranchPipelineBuilder TotalNumberOfPullRequests(int? value)
            {
                _TotalNumberOfPullRequests = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetMultibranchPipeline.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GetMultibranchPipelineBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GetMultibranchPipeline.
            /// </summary>
            /// <returns>GetMultibranchPipeline</returns>
            public GetMultibranchPipeline Build()
            {
                Validate();
                return new GetMultibranchPipeline(
                    DisplayName: _DisplayName,
                    EstimatedDurationInMillis: _EstimatedDurationInMillis,
                    LatestRun: _LatestRun,
                    Name: _Name,
                    Organization: _Organization,
                    WeatherScore: _WeatherScore,
                    BranchNames: _BranchNames,
                    NumberOfFailingBranches: _NumberOfFailingBranches,
                    NumberOfFailingPullRequests: _NumberOfFailingPullRequests,
                    NumberOfSuccessfulBranches: _NumberOfSuccessfulBranches,
                    NumberOfSuccessfulPullRequests: _NumberOfSuccessfulPullRequests,
                    TotalNumberOfBranches: _TotalNumberOfBranches,
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
