using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// PipelineRunImpl
    /// </summary>
    public sealed class PipelineRunImpl:  IEquatable<PipelineRunImpl>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Links
        /// </summary>
        public PipelineRunImpllinks Links { get; private set; }

        /// <summary>
        /// DurationInMillis
        /// </summary>
        public int? DurationInMillis { get; private set; }

        /// <summary>
        /// EnQueueTime
        /// </summary>
        public string EnQueueTime { get; private set; }

        /// <summary>
        /// EndTime
        /// </summary>
        public string EndTime { get; private set; }

        /// <summary>
        /// EstimatedDurationInMillis
        /// </summary>
        public int? EstimatedDurationInMillis { get; private set; }

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
        /// Use PipelineRunImpl.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineRunImpl()
        {
        }

        private PipelineRunImpl(string Class, PipelineRunImpllinks Links, int? DurationInMillis, string EnQueueTime, string EndTime, int? EstimatedDurationInMillis, string Id, string Organization, string Pipeline, string Result, string RunSummary, string StartTime, string State, string Type, string CommitId)
        {
            
            this.Class = Class;
            
            this.Links = Links;
            
            this.DurationInMillis = DurationInMillis;
            
            this.EnQueueTime = EnQueueTime;
            
            this.EndTime = EndTime;
            
            this.EstimatedDurationInMillis = EstimatedDurationInMillis;
            
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
        /// Returns builder of PipelineRunImpl.
        /// </summary>
        /// <returns>PipelineRunImplBuilder</returns>
        public static PipelineRunImplBuilder Builder()
        {
            return new PipelineRunImplBuilder();
        }

        /// <summary>
        /// Returns PipelineRunImplBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineRunImplBuilder</returns>
        public PipelineRunImplBuilder With()
        {
            return Builder()
                .Class(Class)
                .Links(Links)
                .DurationInMillis(DurationInMillis)
                .EnQueueTime(EnQueueTime)
                .EndTime(EndTime)
                .EstimatedDurationInMillis(EstimatedDurationInMillis)
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

        public bool Equals(PipelineRunImpl other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineRunImpl.
        /// </summary>
        /// <param name="left">Compared (PipelineRunImpl</param>
        /// <param name="right">Compared (PipelineRunImpl</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineRunImpl left, PipelineRunImpl right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineRunImpl.
        /// </summary>
        /// <param name="left">Compared (PipelineRunImpl</param>
        /// <param name="right">Compared (PipelineRunImpl</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineRunImpl left, PipelineRunImpl right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineRunImpl.
        /// </summary>
        public sealed class PipelineRunImplBuilder
        {
            private string _Class;
            private PipelineRunImpllinks _Links;
            private int? _DurationInMillis;
            private string _EnQueueTime;
            private string _EndTime;
            private int? _EstimatedDurationInMillis;
            private string _Id;
            private string _Organization;
            private string _Pipeline;
            private string _Result;
            private string _RunSummary;
            private string _StartTime;
            private string _State;
            private string _Type;
            private string _CommitId;

            internal PipelineRunImplBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineRunImpl.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineRunImplBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpl.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public PipelineRunImplBuilder Links(PipelineRunImpllinks value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpl.DurationInMillis property.
            /// </summary>
            /// <param name="value">DurationInMillis</param>
            public PipelineRunImplBuilder DurationInMillis(int? value)
            {
                _DurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpl.EnQueueTime property.
            /// </summary>
            /// <param name="value">EnQueueTime</param>
            public PipelineRunImplBuilder EnQueueTime(string value)
            {
                _EnQueueTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpl.EndTime property.
            /// </summary>
            /// <param name="value">EndTime</param>
            public PipelineRunImplBuilder EndTime(string value)
            {
                _EndTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpl.EstimatedDurationInMillis property.
            /// </summary>
            /// <param name="value">EstimatedDurationInMillis</param>
            public PipelineRunImplBuilder EstimatedDurationInMillis(int? value)
            {
                _EstimatedDurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpl.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public PipelineRunImplBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpl.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public PipelineRunImplBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpl.Pipeline property.
            /// </summary>
            /// <param name="value">Pipeline</param>
            public PipelineRunImplBuilder Pipeline(string value)
            {
                _Pipeline = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpl.Result property.
            /// </summary>
            /// <param name="value">Result</param>
            public PipelineRunImplBuilder Result(string value)
            {
                _Result = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpl.RunSummary property.
            /// </summary>
            /// <param name="value">RunSummary</param>
            public PipelineRunImplBuilder RunSummary(string value)
            {
                _RunSummary = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpl.StartTime property.
            /// </summary>
            /// <param name="value">StartTime</param>
            public PipelineRunImplBuilder StartTime(string value)
            {
                _StartTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpl.State property.
            /// </summary>
            /// <param name="value">State</param>
            public PipelineRunImplBuilder State(string value)
            {
                _State = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpl.Type property.
            /// </summary>
            /// <param name="value">Type</param>
            public PipelineRunImplBuilder Type(string value)
            {
                _Type = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpl.CommitId property.
            /// </summary>
            /// <param name="value">CommitId</param>
            public PipelineRunImplBuilder CommitId(string value)
            {
                _CommitId = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineRunImpl.
            /// </summary>
            /// <returns>PipelineRunImpl</returns>
            public PipelineRunImpl Build()
            {
                Validate();
                return new PipelineRunImpl(
                    Class: _Class,
                    Links: _Links,
                    DurationInMillis: _DurationInMillis,
                    EnQueueTime: _EnQueueTime,
                    EndTime: _EndTime,
                    EstimatedDurationInMillis: _EstimatedDurationInMillis,
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