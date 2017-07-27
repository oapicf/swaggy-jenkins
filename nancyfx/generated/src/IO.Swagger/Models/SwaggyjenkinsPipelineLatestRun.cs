using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// SwaggyjenkinsPipelineLatestRun
    /// </summary>
    public sealed class SwaggyjenkinsPipelineLatestRun:  IEquatable<SwaggyjenkinsPipelineLatestRun>
    { 
        /// <summary>
        /// Artifacts
        /// </summary>
        public List<SwaggyjenkinsPipelineLatestRunartifacts> Artifacts { get; private set; }

        /// <summary>
        /// DurationInMillis
        /// </summary>
        public int? DurationInMillis { get; private set; }

        /// <summary>
        /// EstimatedDurationInMillis
        /// </summary>
        public int? EstimatedDurationInMillis { get; private set; }

        /// <summary>
        /// EnQueueTime
        /// </summary>
        public string EnQueueTime { get; private set; }

        /// <summary>
        /// EndTime
        /// </summary>
        public string EndTime { get; private set; }

        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// Organization
        /// </summary>
        public string Organization { get; private set; }

        /// <summary>
        /// Pipeline
        /// </summary>
        public string Pipeline { get; private set; }

        /// <summary>
        /// Result
        /// </summary>
        public string Result { get; private set; }

        /// <summary>
        /// RunSummary
        /// </summary>
        public string RunSummary { get; private set; }

        /// <summary>
        /// StartTime
        /// </summary>
        public string StartTime { get; private set; }

        /// <summary>
        /// State
        /// </summary>
        public string State { get; private set; }

        /// <summary>
        /// Type
        /// </summary>
        public string Type { get; private set; }

        /// <summary>
        /// CommitId
        /// </summary>
        public string CommitId { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use SwaggyjenkinsPipelineLatestRun.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public SwaggyjenkinsPipelineLatestRun()
        {
        }

        private SwaggyjenkinsPipelineLatestRun(List<SwaggyjenkinsPipelineLatestRunartifacts> Artifacts, int? DurationInMillis, int? EstimatedDurationInMillis, string EnQueueTime, string EndTime, string Id, string Organization, string Pipeline, string Result, string RunSummary, string StartTime, string State, string Type, string CommitId, string Class)
        {
            
            this.Artifacts = Artifacts;
            
            this.DurationInMillis = DurationInMillis;
            
            this.EstimatedDurationInMillis = EstimatedDurationInMillis;
            
            this.EnQueueTime = EnQueueTime;
            
            this.EndTime = EndTime;
            
            this.Id = Id;
            
            this.Organization = Organization;
            
            this.Pipeline = Pipeline;
            
            this.Result = Result;
            
            this.RunSummary = RunSummary;
            
            this.StartTime = StartTime;
            
            this.State = State;
            
            this.Type = Type;
            
            this.CommitId = CommitId;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of SwaggyjenkinsPipelineLatestRun.
        /// </summary>
        /// <returns>SwaggyjenkinsPipelineLatestRunBuilder</returns>
        public static SwaggyjenkinsPipelineLatestRunBuilder Builder()
        {
            return new SwaggyjenkinsPipelineLatestRunBuilder();
        }

        /// <summary>
        /// Returns SwaggyjenkinsPipelineLatestRunBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>SwaggyjenkinsPipelineLatestRunBuilder</returns>
        public SwaggyjenkinsPipelineLatestRunBuilder With()
        {
            return Builder()
                .Artifacts(Artifacts)
                .DurationInMillis(DurationInMillis)
                .EstimatedDurationInMillis(EstimatedDurationInMillis)
                .EnQueueTime(EnQueueTime)
                .EndTime(EndTime)
                .Id(Id)
                .Organization(Organization)
                .Pipeline(Pipeline)
                .Result(Result)
                .RunSummary(RunSummary)
                .StartTime(StartTime)
                .State(State)
                .Type(Type)
                .CommitId(CommitId)
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

        public bool Equals(SwaggyjenkinsPipelineLatestRun other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (SwaggyjenkinsPipelineLatestRun.
        /// </summary>
        /// <param name="left">Compared (SwaggyjenkinsPipelineLatestRun</param>
        /// <param name="right">Compared (SwaggyjenkinsPipelineLatestRun</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (SwaggyjenkinsPipelineLatestRun left, SwaggyjenkinsPipelineLatestRun right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (SwaggyjenkinsPipelineLatestRun.
        /// </summary>
        /// <param name="left">Compared (SwaggyjenkinsPipelineLatestRun</param>
        /// <param name="right">Compared (SwaggyjenkinsPipelineLatestRun</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (SwaggyjenkinsPipelineLatestRun left, SwaggyjenkinsPipelineLatestRun right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of SwaggyjenkinsPipelineLatestRun.
        /// </summary>
        public sealed class SwaggyjenkinsPipelineLatestRunBuilder
        {
            private List<SwaggyjenkinsPipelineLatestRunartifacts> _Artifacts;
            private int? _DurationInMillis;
            private int? _EstimatedDurationInMillis;
            private string _EnQueueTime;
            private string _EndTime;
            private string _Id;
            private string _Organization;
            private string _Pipeline;
            private string _Result;
            private string _RunSummary;
            private string _StartTime;
            private string _State;
            private string _Type;
            private string _CommitId;
            private string _Class;

            internal SwaggyjenkinsPipelineLatestRunBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRun.Artifacts property.
            /// </summary>
            /// <param name="value">Artifacts</param>
            public SwaggyjenkinsPipelineLatestRunBuilder Artifacts(List<SwaggyjenkinsPipelineLatestRunartifacts> value)
            {
                _Artifacts = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRun.DurationInMillis property.
            /// </summary>
            /// <param name="value">DurationInMillis</param>
            public SwaggyjenkinsPipelineLatestRunBuilder DurationInMillis(int? value)
            {
                _DurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRun.EstimatedDurationInMillis property.
            /// </summary>
            /// <param name="value">EstimatedDurationInMillis</param>
            public SwaggyjenkinsPipelineLatestRunBuilder EstimatedDurationInMillis(int? value)
            {
                _EstimatedDurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRun.EnQueueTime property.
            /// </summary>
            /// <param name="value">EnQueueTime</param>
            public SwaggyjenkinsPipelineLatestRunBuilder EnQueueTime(string value)
            {
                _EnQueueTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRun.EndTime property.
            /// </summary>
            /// <param name="value">EndTime</param>
            public SwaggyjenkinsPipelineLatestRunBuilder EndTime(string value)
            {
                _EndTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRun.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public SwaggyjenkinsPipelineLatestRunBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRun.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public SwaggyjenkinsPipelineLatestRunBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRun.Pipeline property.
            /// </summary>
            /// <param name="value">Pipeline</param>
            public SwaggyjenkinsPipelineLatestRunBuilder Pipeline(string value)
            {
                _Pipeline = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRun.Result property.
            /// </summary>
            /// <param name="value">Result</param>
            public SwaggyjenkinsPipelineLatestRunBuilder Result(string value)
            {
                _Result = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRun.RunSummary property.
            /// </summary>
            /// <param name="value">RunSummary</param>
            public SwaggyjenkinsPipelineLatestRunBuilder RunSummary(string value)
            {
                _RunSummary = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRun.StartTime property.
            /// </summary>
            /// <param name="value">StartTime</param>
            public SwaggyjenkinsPipelineLatestRunBuilder StartTime(string value)
            {
                _StartTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRun.State property.
            /// </summary>
            /// <param name="value">State</param>
            public SwaggyjenkinsPipelineLatestRunBuilder State(string value)
            {
                _State = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRun.Type property.
            /// </summary>
            /// <param name="value">Type</param>
            public SwaggyjenkinsPipelineLatestRunBuilder Type(string value)
            {
                _Type = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRun.CommitId property.
            /// </summary>
            /// <param name="value">CommitId</param>
            public SwaggyjenkinsPipelineLatestRunBuilder CommitId(string value)
            {
                _CommitId = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRun.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public SwaggyjenkinsPipelineLatestRunBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of SwaggyjenkinsPipelineLatestRun.
            /// </summary>
            /// <returns>SwaggyjenkinsPipelineLatestRun</returns>
            public SwaggyjenkinsPipelineLatestRun Build()
            {
                Validate();
                return new SwaggyjenkinsPipelineLatestRun(
                    Artifacts: _Artifacts,
                    DurationInMillis: _DurationInMillis,
                    EstimatedDurationInMillis: _EstimatedDurationInMillis,
                    EnQueueTime: _EnQueueTime,
                    EndTime: _EndTime,
                    Id: _Id,
                    Organization: _Organization,
                    Pipeline: _Pipeline,
                    Result: _Result,
                    RunSummary: _RunSummary,
                    StartTime: _StartTime,
                    State: _State,
                    Type: _Type,
                    CommitId: _CommitId,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
