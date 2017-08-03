using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// PipelineStepImpl
    /// </summary>
    public sealed class PipelineStepImpl:  IEquatable<PipelineStepImpl>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Links
        /// </summary>
        public PipelineStepImpllinks Links { get; private set; }

        /// <summary>
        /// DisplayName
        /// </summary>
        public string DisplayName { get; private set; }

        /// <summary>
        /// DurationInMillis
        /// </summary>
        public int? DurationInMillis { get; private set; }

        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// Input
        /// </summary>
        public InputStepImpl Input { get; private set; }

        /// <summary>
        /// Result
        /// </summary>
        public string Result { get; private set; }

        /// <summary>
        /// StartTime
        /// </summary>
        public string StartTime { get; private set; }

        /// <summary>
        /// State
        /// </summary>
        public string State { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineStepImpl.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineStepImpl()
        {
        }

        private PipelineStepImpl(string Class, PipelineStepImpllinks Links, string DisplayName, int? DurationInMillis, string Id, InputStepImpl Input, string Result, string StartTime, string State)
        {
            
            this.Class = Class;
            
            this.Links = Links;
            
            this.DisplayName = DisplayName;
            
            this.DurationInMillis = DurationInMillis;
            
            this.Id = Id;
            
            this.Input = Input;
            
            this.Result = Result;
            
            this.StartTime = StartTime;
            
            this.State = State;
            
        }

        /// <summary>
        /// Returns builder of PipelineStepImpl.
        /// </summary>
        /// <returns>PipelineStepImplBuilder</returns>
        public static PipelineStepImplBuilder Builder()
        {
            return new PipelineStepImplBuilder();
        }

        /// <summary>
        /// Returns PipelineStepImplBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineStepImplBuilder</returns>
        public PipelineStepImplBuilder With()
        {
            return Builder()
                .Class(Class)
                .Links(Links)
                .DisplayName(DisplayName)
                .DurationInMillis(DurationInMillis)
                .Id(Id)
                .Input(Input)
                .Result(Result)
                .StartTime(StartTime)
                .State(State);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(PipelineStepImpl other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineStepImpl.
        /// </summary>
        /// <param name="left">Compared (PipelineStepImpl</param>
        /// <param name="right">Compared (PipelineStepImpl</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineStepImpl left, PipelineStepImpl right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineStepImpl.
        /// </summary>
        /// <param name="left">Compared (PipelineStepImpl</param>
        /// <param name="right">Compared (PipelineStepImpl</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineStepImpl left, PipelineStepImpl right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineStepImpl.
        /// </summary>
        public sealed class PipelineStepImplBuilder
        {
            private string _Class;
            private PipelineStepImpllinks _Links;
            private string _DisplayName;
            private int? _DurationInMillis;
            private string _Id;
            private InputStepImpl _Input;
            private string _Result;
            private string _StartTime;
            private string _State;

            internal PipelineStepImplBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineStepImpl.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineStepImplBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineStepImpl.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public PipelineStepImplBuilder Links(PipelineStepImpllinks value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineStepImpl.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public PipelineStepImplBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineStepImpl.DurationInMillis property.
            /// </summary>
            /// <param name="value">DurationInMillis</param>
            public PipelineStepImplBuilder DurationInMillis(int? value)
            {
                _DurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineStepImpl.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public PipelineStepImplBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineStepImpl.Input property.
            /// </summary>
            /// <param name="value">Input</param>
            public PipelineStepImplBuilder Input(InputStepImpl value)
            {
                _Input = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineStepImpl.Result property.
            /// </summary>
            /// <param name="value">Result</param>
            public PipelineStepImplBuilder Result(string value)
            {
                _Result = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineStepImpl.StartTime property.
            /// </summary>
            /// <param name="value">StartTime</param>
            public PipelineStepImplBuilder StartTime(string value)
            {
                _StartTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineStepImpl.State property.
            /// </summary>
            /// <param name="value">State</param>
            public PipelineStepImplBuilder State(string value)
            {
                _State = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineStepImpl.
            /// </summary>
            /// <returns>PipelineStepImpl</returns>
            public PipelineStepImpl Build()
            {
                Validate();
                return new PipelineStepImpl(
                    Class: _Class,
                    Links: _Links,
                    DisplayName: _DisplayName,
                    DurationInMillis: _DurationInMillis,
                    Id: _Id,
                    Input: _Input,
                    Result: _Result,
                    StartTime: _StartTime,
                    State: _State
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}