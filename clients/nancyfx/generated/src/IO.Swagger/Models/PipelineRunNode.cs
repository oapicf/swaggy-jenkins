using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// PipelineRunNode
    /// </summary>
    public sealed class PipelineRunNode:  IEquatable<PipelineRunNode>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// DisplayName
        /// </summary>
        public string DisplayName { get; private set; }

        /// <summary>
        /// DurationInMillis
        /// </summary>
        public int? DurationInMillis { get; private set; }

        /// <summary>
        /// Edges
        /// </summary>
        public List<PipelineRunNodeedges> Edges { get; private set; }

        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

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
        /// Use PipelineRunNode.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineRunNode()
        {
        }

        private PipelineRunNode(string Class, string DisplayName, int? DurationInMillis, List<PipelineRunNodeedges> Edges, string Id, string Result, string StartTime, string State)
        {
            
            this.Class = Class;
            
            this.DisplayName = DisplayName;
            
            this.DurationInMillis = DurationInMillis;
            
            this.Edges = Edges;
            
            this.Id = Id;
            
            this.Result = Result;
            
            this.StartTime = StartTime;
            
            this.State = State;
            
        }

        /// <summary>
        /// Returns builder of PipelineRunNode.
        /// </summary>
        /// <returns>PipelineRunNodeBuilder</returns>
        public static PipelineRunNodeBuilder Builder()
        {
            return new PipelineRunNodeBuilder();
        }

        /// <summary>
        /// Returns PipelineRunNodeBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineRunNodeBuilder</returns>
        public PipelineRunNodeBuilder With()
        {
            return Builder()
                .Class(Class)
                .DisplayName(DisplayName)
                .DurationInMillis(DurationInMillis)
                .Edges(Edges)
                .Id(Id)
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

        public bool Equals(PipelineRunNode other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineRunNode.
        /// </summary>
        /// <param name="left">Compared (PipelineRunNode</param>
        /// <param name="right">Compared (PipelineRunNode</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineRunNode left, PipelineRunNode right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineRunNode.
        /// </summary>
        /// <param name="left">Compared (PipelineRunNode</param>
        /// <param name="right">Compared (PipelineRunNode</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineRunNode left, PipelineRunNode right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineRunNode.
        /// </summary>
        public sealed class PipelineRunNodeBuilder
        {
            private string _Class;
            private string _DisplayName;
            private int? _DurationInMillis;
            private List<PipelineRunNodeedges> _Edges;
            private string _Id;
            private string _Result;
            private string _StartTime;
            private string _State;

            internal PipelineRunNodeBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineRunNode.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineRunNodeBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunNode.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public PipelineRunNodeBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunNode.DurationInMillis property.
            /// </summary>
            /// <param name="value">DurationInMillis</param>
            public PipelineRunNodeBuilder DurationInMillis(int? value)
            {
                _DurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunNode.Edges property.
            /// </summary>
            /// <param name="value">Edges</param>
            public PipelineRunNodeBuilder Edges(List<PipelineRunNodeedges> value)
            {
                _Edges = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunNode.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public PipelineRunNodeBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunNode.Result property.
            /// </summary>
            /// <param name="value">Result</param>
            public PipelineRunNodeBuilder Result(string value)
            {
                _Result = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunNode.StartTime property.
            /// </summary>
            /// <param name="value">StartTime</param>
            public PipelineRunNodeBuilder StartTime(string value)
            {
                _StartTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunNode.State property.
            /// </summary>
            /// <param name="value">State</param>
            public PipelineRunNodeBuilder State(string value)
            {
                _State = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineRunNode.
            /// </summary>
            /// <returns>PipelineRunNode</returns>
            public PipelineRunNode Build()
            {
                Validate();
                return new PipelineRunNode(
                    Class: _Class,
                    DisplayName: _DisplayName,
                    DurationInMillis: _DurationInMillis,
                    Edges: _Edges,
                    Id: _Id,
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