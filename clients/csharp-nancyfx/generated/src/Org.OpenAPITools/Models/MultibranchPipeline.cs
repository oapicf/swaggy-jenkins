using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// MultibranchPipeline
    /// </summary>
    public sealed class MultibranchPipeline:  IEquatable<MultibranchPipeline>
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
        /// Use MultibranchPipeline.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public MultibranchPipeline()
        {
        }

        private MultibranchPipeline(string DisplayName, int? EstimatedDurationInMillis, string LatestRun, string Name, string Organization, int? WeatherScore, List<string> BranchNames, int? NumberOfFailingBranches, int? NumberOfFailingPullRequests, int? NumberOfSuccessfulBranches, int? NumberOfSuccessfulPullRequests, int? TotalNumberOfBranches, int? TotalNumberOfPullRequests, string Class)
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
        /// Returns builder of MultibranchPipeline.
        /// </summary>
        /// <returns>MultibranchPipelineBuilder</returns>
        public static MultibranchPipelineBuilder Builder()
        {
            return new MultibranchPipelineBuilder();
        }

        /// <summary>
        /// Returns MultibranchPipelineBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>MultibranchPipelineBuilder</returns>
        public MultibranchPipelineBuilder With()
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

        public bool Equals(MultibranchPipeline other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (MultibranchPipeline.
        /// </summary>
        /// <param name="left">Compared (MultibranchPipeline</param>
        /// <param name="right">Compared (MultibranchPipeline</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (MultibranchPipeline left, MultibranchPipeline right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (MultibranchPipeline.
        /// </summary>
        /// <param name="left">Compared (MultibranchPipeline</param>
        /// <param name="right">Compared (MultibranchPipeline</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (MultibranchPipeline left, MultibranchPipeline right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of MultibranchPipeline.
        /// </summary>
        public sealed class MultibranchPipelineBuilder
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

            internal MultibranchPipelineBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for MultibranchPipeline.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public MultibranchPipelineBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for MultibranchPipeline.EstimatedDurationInMillis property.
            /// </summary>
            /// <param name="value">EstimatedDurationInMillis</param>
            public MultibranchPipelineBuilder EstimatedDurationInMillis(int? value)
            {
                _EstimatedDurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for MultibranchPipeline.LatestRun property.
            /// </summary>
            /// <param name="value">LatestRun</param>
            public MultibranchPipelineBuilder LatestRun(string value)
            {
                _LatestRun = value;
                return this;
            }

            /// <summary>
            /// Sets value for MultibranchPipeline.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public MultibranchPipelineBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for MultibranchPipeline.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public MultibranchPipelineBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for MultibranchPipeline.WeatherScore property.
            /// </summary>
            /// <param name="value">WeatherScore</param>
            public MultibranchPipelineBuilder WeatherScore(int? value)
            {
                _WeatherScore = value;
                return this;
            }

            /// <summary>
            /// Sets value for MultibranchPipeline.BranchNames property.
            /// </summary>
            /// <param name="value">BranchNames</param>
            public MultibranchPipelineBuilder BranchNames(List<string> value)
            {
                _BranchNames = value;
                return this;
            }

            /// <summary>
            /// Sets value for MultibranchPipeline.NumberOfFailingBranches property.
            /// </summary>
            /// <param name="value">NumberOfFailingBranches</param>
            public MultibranchPipelineBuilder NumberOfFailingBranches(int? value)
            {
                _NumberOfFailingBranches = value;
                return this;
            }

            /// <summary>
            /// Sets value for MultibranchPipeline.NumberOfFailingPullRequests property.
            /// </summary>
            /// <param name="value">NumberOfFailingPullRequests</param>
            public MultibranchPipelineBuilder NumberOfFailingPullRequests(int? value)
            {
                _NumberOfFailingPullRequests = value;
                return this;
            }

            /// <summary>
            /// Sets value for MultibranchPipeline.NumberOfSuccessfulBranches property.
            /// </summary>
            /// <param name="value">NumberOfSuccessfulBranches</param>
            public MultibranchPipelineBuilder NumberOfSuccessfulBranches(int? value)
            {
                _NumberOfSuccessfulBranches = value;
                return this;
            }

            /// <summary>
            /// Sets value for MultibranchPipeline.NumberOfSuccessfulPullRequests property.
            /// </summary>
            /// <param name="value">NumberOfSuccessfulPullRequests</param>
            public MultibranchPipelineBuilder NumberOfSuccessfulPullRequests(int? value)
            {
                _NumberOfSuccessfulPullRequests = value;
                return this;
            }

            /// <summary>
            /// Sets value for MultibranchPipeline.TotalNumberOfBranches property.
            /// </summary>
            /// <param name="value">TotalNumberOfBranches</param>
            public MultibranchPipelineBuilder TotalNumberOfBranches(int? value)
            {
                _TotalNumberOfBranches = value;
                return this;
            }

            /// <summary>
            /// Sets value for MultibranchPipeline.TotalNumberOfPullRequests property.
            /// </summary>
            /// <param name="value">TotalNumberOfPullRequests</param>
            public MultibranchPipelineBuilder TotalNumberOfPullRequests(int? value)
            {
                _TotalNumberOfPullRequests = value;
                return this;
            }

            /// <summary>
            /// Sets value for MultibranchPipeline.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public MultibranchPipelineBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of MultibranchPipeline.
            /// </summary>
            /// <returns>MultibranchPipeline</returns>
            public MultibranchPipeline Build()
            {
                Validate();
                return new MultibranchPipeline(
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