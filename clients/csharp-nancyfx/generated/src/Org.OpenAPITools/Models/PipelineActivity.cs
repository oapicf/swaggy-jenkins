using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// PipelineActivity
    /// </summary>
    public sealed class PipelineActivity:  IEquatable<PipelineActivity>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Artifacts
        /// </summary>
        public List<PipelineActivityartifacts> Artifacts { get; private set; }

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
        /// Empty constructor required by some serializers.
        /// Use PipelineActivity.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineActivity()
        {
        }

        private PipelineActivity(string Class, List<PipelineActivityartifacts> Artifacts, int? DurationInMillis, int? EstimatedDurationInMillis, string EnQueueTime, string EndTime, string Id, string Organization, string Pipeline, string Result, string RunSummary, string StartTime, string State, string Type, string CommitId)
        {
            
            this.Class = Class;
            
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
            
        }

        /// <summary>
        /// Returns builder of PipelineActivity.
        /// </summary>
        /// <returns>PipelineActivityBuilder</returns>
        public static PipelineActivityBuilder Builder()
        {
            return new PipelineActivityBuilder();
        }

        /// <summary>
        /// Returns PipelineActivityBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineActivityBuilder</returns>
        public PipelineActivityBuilder With()
        {
            return Builder()
                .Class(Class)
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
                .CommitId(CommitId);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(PipelineActivity other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineActivity.
        /// </summary>
        /// <param name="left">Compared (PipelineActivity</param>
        /// <param name="right">Compared (PipelineActivity</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineActivity left, PipelineActivity right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineActivity.
        /// </summary>
        /// <param name="left">Compared (PipelineActivity</param>
        /// <param name="right">Compared (PipelineActivity</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineActivity left, PipelineActivity right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineActivity.
        /// </summary>
        public sealed class PipelineActivityBuilder
        {
            private string _Class;
            private List<PipelineActivityartifacts> _Artifacts;
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

            internal PipelineActivityBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineActivity.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineActivityBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivity.Artifacts property.
            /// </summary>
            /// <param name="value">Artifacts</param>
            public PipelineActivityBuilder Artifacts(List<PipelineActivityartifacts> value)
            {
                _Artifacts = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivity.DurationInMillis property.
            /// </summary>
            /// <param name="value">DurationInMillis</param>
            public PipelineActivityBuilder DurationInMillis(int? value)
            {
                _DurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivity.EstimatedDurationInMillis property.
            /// </summary>
            /// <param name="value">EstimatedDurationInMillis</param>
            public PipelineActivityBuilder EstimatedDurationInMillis(int? value)
            {
                _EstimatedDurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivity.EnQueueTime property.
            /// </summary>
            /// <param name="value">EnQueueTime</param>
            public PipelineActivityBuilder EnQueueTime(string value)
            {
                _EnQueueTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivity.EndTime property.
            /// </summary>
            /// <param name="value">EndTime</param>
            public PipelineActivityBuilder EndTime(string value)
            {
                _EndTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivity.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public PipelineActivityBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivity.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public PipelineActivityBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivity.Pipeline property.
            /// </summary>
            /// <param name="value">Pipeline</param>
            public PipelineActivityBuilder Pipeline(string value)
            {
                _Pipeline = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivity.Result property.
            /// </summary>
            /// <param name="value">Result</param>
            public PipelineActivityBuilder Result(string value)
            {
                _Result = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivity.RunSummary property.
            /// </summary>
            /// <param name="value">RunSummary</param>
            public PipelineActivityBuilder RunSummary(string value)
            {
                _RunSummary = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivity.StartTime property.
            /// </summary>
            /// <param name="value">StartTime</param>
            public PipelineActivityBuilder StartTime(string value)
            {
                _StartTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivity.State property.
            /// </summary>
            /// <param name="value">State</param>
            public PipelineActivityBuilder State(string value)
            {
                _State = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivity.Type property.
            /// </summary>
            /// <param name="value">Type</param>
            public PipelineActivityBuilder Type(string value)
            {
                _Type = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivity.CommitId property.
            /// </summary>
            /// <param name="value">CommitId</param>
            public PipelineActivityBuilder CommitId(string value)
            {
                _CommitId = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineActivity.
            /// </summary>
            /// <returns>PipelineActivity</returns>
            public PipelineActivity Build()
            {
                Validate();
                return new PipelineActivity(
                    Class: _Class,
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
                    CommitId: _CommitId
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}