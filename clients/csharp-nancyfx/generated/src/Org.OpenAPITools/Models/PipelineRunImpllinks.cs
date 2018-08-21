using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// PipelineRunImpllinks
    /// </summary>
    public sealed class PipelineRunImpllinks:  IEquatable<PipelineRunImpllinks>
    { 
        /// <summary>
        /// Nodes
        /// </summary>
        public Link Nodes { get; private set; }

        /// <summary>
        /// Log
        /// </summary>
        public Link Log { get; private set; }

        /// <summary>
        /// Self
        /// </summary>
        public Link Self { get; private set; }

        /// <summary>
        /// Actions
        /// </summary>
        public Link Actions { get; private set; }

        /// <summary>
        /// Steps
        /// </summary>
        public Link Steps { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineRunImpllinks.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineRunImpllinks()
        {
        }

        private PipelineRunImpllinks(Link Nodes, Link Log, Link Self, Link Actions, Link Steps, string Class)
        {
            
            this.Nodes = Nodes;
            
            this.Log = Log;
            
            this.Self = Self;
            
            this.Actions = Actions;
            
            this.Steps = Steps;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of PipelineRunImpllinks.
        /// </summary>
        /// <returns>PipelineRunImpllinksBuilder</returns>
        public static PipelineRunImpllinksBuilder Builder()
        {
            return new PipelineRunImpllinksBuilder();
        }

        /// <summary>
        /// Returns PipelineRunImpllinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineRunImpllinksBuilder</returns>
        public PipelineRunImpllinksBuilder With()
        {
            return Builder()
                .Nodes(Nodes)
                .Log(Log)
                .Self(Self)
                .Actions(Actions)
                .Steps(Steps)
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

        public bool Equals(PipelineRunImpllinks other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineRunImpllinks.
        /// </summary>
        /// <param name="left">Compared (PipelineRunImpllinks</param>
        /// <param name="right">Compared (PipelineRunImpllinks</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineRunImpllinks left, PipelineRunImpllinks right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineRunImpllinks.
        /// </summary>
        /// <param name="left">Compared (PipelineRunImpllinks</param>
        /// <param name="right">Compared (PipelineRunImpllinks</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineRunImpllinks left, PipelineRunImpllinks right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineRunImpllinks.
        /// </summary>
        public sealed class PipelineRunImpllinksBuilder
        {
            private Link _Nodes;
            private Link _Log;
            private Link _Self;
            private Link _Actions;
            private Link _Steps;
            private string _Class;

            internal PipelineRunImpllinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineRunImpllinks.Nodes property.
            /// </summary>
            /// <param name="value">Nodes</param>
            public PipelineRunImpllinksBuilder Nodes(Link value)
            {
                _Nodes = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpllinks.Log property.
            /// </summary>
            /// <param name="value">Log</param>
            public PipelineRunImpllinksBuilder Log(Link value)
            {
                _Log = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpllinks.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public PipelineRunImpllinksBuilder Self(Link value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpllinks.Actions property.
            /// </summary>
            /// <param name="value">Actions</param>
            public PipelineRunImpllinksBuilder Actions(Link value)
            {
                _Actions = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpllinks.Steps property.
            /// </summary>
            /// <param name="value">Steps</param>
            public PipelineRunImpllinksBuilder Steps(Link value)
            {
                _Steps = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunImpllinks.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineRunImpllinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineRunImpllinks.
            /// </summary>
            /// <returns>PipelineRunImpllinks</returns>
            public PipelineRunImpllinks Build()
            {
                Validate();
                return new PipelineRunImpllinks(
                    Nodes: _Nodes,
                    Log: _Log,
                    Self: _Self,
                    Actions: _Actions,
                    Steps: _Steps,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}