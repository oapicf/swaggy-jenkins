using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// PipelineBranchesitemlatestRun
    /// </summary>
    public sealed class PipelineBranchesitemlatestRun:  IEquatable<PipelineBranchesitemlatestRun>
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
        /// Use PipelineBranchesitemlatestRun.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineBranchesitemlatestRun()
        {
        }

        private PipelineBranchesitemlatestRun(int? DurationInMillis, int? EstimatedDurationInMillis, string EnQueueTime, string EndTime, string Id, string Organization, string Pipeline, string Result, string RunSummary, string StartTime, string State, string Type, string CommitId, string Class)
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
        /// Returns builder of PipelineBranchesitemlatestRun.
        /// </summary>
        /// <returns>PipelineBranchesitemlatestRunBuilder</returns>
        public static PipelineBranchesitemlatestRunBuilder Builder()
        {
            return new PipelineBranchesitemlatestRunBuilder();
        }

        /// <summary>
        /// Returns PipelineBranchesitemlatestRunBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineBranchesitemlatestRunBuilder</returns>
        public PipelineBranchesitemlatestRunBuilder With()
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

        public bool Equals(PipelineBranchesitemlatestRun other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineBranchesitemlatestRun.
        /// </summary>
        /// <param name="left">Compared (PipelineBranchesitemlatestRun</param>
        /// <param name="right">Compared (PipelineBranchesitemlatestRun</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineBranchesitemlatestRun left, PipelineBranchesitemlatestRun right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineBranchesitemlatestRun.
        /// </summary>
        /// <param name="left">Compared (PipelineBranchesitemlatestRun</param>
        /// <param name="right">Compared (PipelineBranchesitemlatestRun</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineBranchesitemlatestRun left, PipelineBranchesitemlatestRun right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineBranchesitemlatestRun.
        /// </summary>
        public sealed class PipelineBranchesitemlatestRunBuilder
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

            internal PipelineBranchesitemlatestRunBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineBranchesitemlatestRun.DurationInMillis property.
            /// </summary>
            /// <param name="value">DurationInMillis</param>
            public PipelineBranchesitemlatestRunBuilder DurationInMillis(int? value)
            {
                _DurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitemlatestRun.EstimatedDurationInMillis property.
            /// </summary>
            /// <param name="value">EstimatedDurationInMillis</param>
            public PipelineBranchesitemlatestRunBuilder EstimatedDurationInMillis(int? value)
            {
                _EstimatedDurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitemlatestRun.EnQueueTime property.
            /// </summary>
            /// <param name="value">EnQueueTime</param>
            public PipelineBranchesitemlatestRunBuilder EnQueueTime(string value)
            {
                _EnQueueTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitemlatestRun.EndTime property.
            /// </summary>
            /// <param name="value">EndTime</param>
            public PipelineBranchesitemlatestRunBuilder EndTime(string value)
            {
                _EndTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitemlatestRun.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public PipelineBranchesitemlatestRunBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitemlatestRun.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public PipelineBranchesitemlatestRunBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitemlatestRun.Pipeline property.
            /// </summary>
            /// <param name="value">Pipeline</param>
            public PipelineBranchesitemlatestRunBuilder Pipeline(string value)
            {
                _Pipeline = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitemlatestRun.Result property.
            /// </summary>
            /// <param name="value">Result</param>
            public PipelineBranchesitemlatestRunBuilder Result(string value)
            {
                _Result = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitemlatestRun.RunSummary property.
            /// </summary>
            /// <param name="value">RunSummary</param>
            public PipelineBranchesitemlatestRunBuilder RunSummary(string value)
            {
                _RunSummary = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitemlatestRun.StartTime property.
            /// </summary>
            /// <param name="value">StartTime</param>
            public PipelineBranchesitemlatestRunBuilder StartTime(string value)
            {
                _StartTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitemlatestRun.State property.
            /// </summary>
            /// <param name="value">State</param>
            public PipelineBranchesitemlatestRunBuilder State(string value)
            {
                _State = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitemlatestRun.Type property.
            /// </summary>
            /// <param name="value">Type</param>
            public PipelineBranchesitemlatestRunBuilder Type(string value)
            {
                _Type = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitemlatestRun.CommitId property.
            /// </summary>
            /// <param name="value">CommitId</param>
            public PipelineBranchesitemlatestRunBuilder CommitId(string value)
            {
                _CommitId = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitemlatestRun.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineBranchesitemlatestRunBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineBranchesitemlatestRun.
            /// </summary>
            /// <returns>PipelineBranchesitemlatestRun</returns>
            public PipelineBranchesitemlatestRun Build()
            {
                Validate();
                return new PipelineBranchesitemlatestRun(
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