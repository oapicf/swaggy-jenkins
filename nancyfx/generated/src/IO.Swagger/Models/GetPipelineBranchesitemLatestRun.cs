using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GetPipelineBranchesitemLatestRun
    /// </summary>
    public sealed class GetPipelineBranchesitemLatestRun:  IEquatable<GetPipelineBranchesitemLatestRun>
    { 
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
        /// Use GetPipelineBranchesitemLatestRun.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GetPipelineBranchesitemLatestRun()
        {
        }

        private GetPipelineBranchesitemLatestRun(int? DurationInMillis, int? EstimatedDurationInMillis, string EnQueueTime, string EndTime, string Id, string Organization, string Pipeline, string Result, string RunSummary, string StartTime, string State, string Type, string CommitId, string Class)
        {
            
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
        /// Returns builder of GetPipelineBranchesitemLatestRun.
        /// </summary>
        /// <returns>GetPipelineBranchesitemLatestRunBuilder</returns>
        public static GetPipelineBranchesitemLatestRunBuilder Builder()
        {
            return new GetPipelineBranchesitemLatestRunBuilder();
        }

        /// <summary>
        /// Returns GetPipelineBranchesitemLatestRunBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GetPipelineBranchesitemLatestRunBuilder</returns>
        public GetPipelineBranchesitemLatestRunBuilder With()
        {
            return Builder()
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

        public bool Equals(GetPipelineBranchesitemLatestRun other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GetPipelineBranchesitemLatestRun.
        /// </summary>
        /// <param name="left">Compared (GetPipelineBranchesitemLatestRun</param>
        /// <param name="right">Compared (GetPipelineBranchesitemLatestRun</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GetPipelineBranchesitemLatestRun left, GetPipelineBranchesitemLatestRun right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GetPipelineBranchesitemLatestRun.
        /// </summary>
        /// <param name="left">Compared (GetPipelineBranchesitemLatestRun</param>
        /// <param name="right">Compared (GetPipelineBranchesitemLatestRun</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GetPipelineBranchesitemLatestRun left, GetPipelineBranchesitemLatestRun right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GetPipelineBranchesitemLatestRun.
        /// </summary>
        public sealed class GetPipelineBranchesitemLatestRunBuilder
        {
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

            internal GetPipelineBranchesitemLatestRunBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemLatestRun.DurationInMillis property.
            /// </summary>
            /// <param name="value">DurationInMillis</param>
            public GetPipelineBranchesitemLatestRunBuilder DurationInMillis(int? value)
            {
                _DurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemLatestRun.EstimatedDurationInMillis property.
            /// </summary>
            /// <param name="value">EstimatedDurationInMillis</param>
            public GetPipelineBranchesitemLatestRunBuilder EstimatedDurationInMillis(int? value)
            {
                _EstimatedDurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemLatestRun.EnQueueTime property.
            /// </summary>
            /// <param name="value">EnQueueTime</param>
            public GetPipelineBranchesitemLatestRunBuilder EnQueueTime(string value)
            {
                _EnQueueTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemLatestRun.EndTime property.
            /// </summary>
            /// <param name="value">EndTime</param>
            public GetPipelineBranchesitemLatestRunBuilder EndTime(string value)
            {
                _EndTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemLatestRun.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public GetPipelineBranchesitemLatestRunBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemLatestRun.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public GetPipelineBranchesitemLatestRunBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemLatestRun.Pipeline property.
            /// </summary>
            /// <param name="value">Pipeline</param>
            public GetPipelineBranchesitemLatestRunBuilder Pipeline(string value)
            {
                _Pipeline = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemLatestRun.Result property.
            /// </summary>
            /// <param name="value">Result</param>
            public GetPipelineBranchesitemLatestRunBuilder Result(string value)
            {
                _Result = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemLatestRun.RunSummary property.
            /// </summary>
            /// <param name="value">RunSummary</param>
            public GetPipelineBranchesitemLatestRunBuilder RunSummary(string value)
            {
                _RunSummary = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemLatestRun.StartTime property.
            /// </summary>
            /// <param name="value">StartTime</param>
            public GetPipelineBranchesitemLatestRunBuilder StartTime(string value)
            {
                _StartTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemLatestRun.State property.
            /// </summary>
            /// <param name="value">State</param>
            public GetPipelineBranchesitemLatestRunBuilder State(string value)
            {
                _State = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemLatestRun.Type property.
            /// </summary>
            /// <param name="value">Type</param>
            public GetPipelineBranchesitemLatestRunBuilder Type(string value)
            {
                _Type = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemLatestRun.CommitId property.
            /// </summary>
            /// <param name="value">CommitId</param>
            public GetPipelineBranchesitemLatestRunBuilder CommitId(string value)
            {
                _CommitId = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemLatestRun.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GetPipelineBranchesitemLatestRunBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GetPipelineBranchesitemLatestRun.
            /// </summary>
            /// <returns>GetPipelineBranchesitemLatestRun</returns>
            public GetPipelineBranchesitemLatestRun Build()
            {
                Validate();
                return new GetPipelineBranchesitemLatestRun(
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
