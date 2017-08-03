using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// PipelineImpllinks
    /// </summary>
    public sealed class PipelineImpllinks:  IEquatable<PipelineImpllinks>
    { 
        /// <summary>
        /// Runs
        /// </summary>
        public Link Runs { get; private set; }

        /// <summary>
        /// Self
        /// </summary>
        public Link Self { get; private set; }

        /// <summary>
        /// Queue
        /// </summary>
        public Link Queue { get; private set; }

        /// <summary>
        /// Actions
        /// </summary>
        public Link Actions { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineImpllinks.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineImpllinks()
        {
        }

        private PipelineImpllinks(Link Runs, Link Self, Link Queue, Link Actions, string Class)
        {
            
            this.Runs = Runs;
            
            this.Self = Self;
            
            this.Queue = Queue;
            
            this.Actions = Actions;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of PipelineImpllinks.
        /// </summary>
        /// <returns>PipelineImpllinksBuilder</returns>
        public static PipelineImpllinksBuilder Builder()
        {
            return new PipelineImpllinksBuilder();
        }

        /// <summary>
        /// Returns PipelineImpllinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineImpllinksBuilder</returns>
        public PipelineImpllinksBuilder With()
        {
            return Builder()
                .Runs(Runs)
                .Self(Self)
                .Queue(Queue)
                .Actions(Actions)
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

        public bool Equals(PipelineImpllinks other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineImpllinks.
        /// </summary>
        /// <param name="left">Compared (PipelineImpllinks</param>
        /// <param name="right">Compared (PipelineImpllinks</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineImpllinks left, PipelineImpllinks right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineImpllinks.
        /// </summary>
        /// <param name="left">Compared (PipelineImpllinks</param>
        /// <param name="right">Compared (PipelineImpllinks</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineImpllinks left, PipelineImpllinks right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineImpllinks.
        /// </summary>
        public sealed class PipelineImpllinksBuilder
        {
            private Link _Runs;
            private Link _Self;
            private Link _Queue;
            private Link _Actions;
            private string _Class;

            internal PipelineImpllinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineImpllinks.Runs property.
            /// </summary>
            /// <param name="value">Runs</param>
            public PipelineImpllinksBuilder Runs(Link value)
            {
                _Runs = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineImpllinks.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public PipelineImpllinksBuilder Self(Link value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineImpllinks.Queue property.
            /// </summary>
            /// <param name="value">Queue</param>
            public PipelineImpllinksBuilder Queue(Link value)
            {
                _Queue = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineImpllinks.Actions property.
            /// </summary>
            /// <param name="value">Actions</param>
            public PipelineImpllinksBuilder Actions(Link value)
            {
                _Actions = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineImpllinks.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineImpllinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineImpllinks.
            /// </summary>
            /// <returns>PipelineImpllinks</returns>
            public PipelineImpllinks Build()
            {
                Validate();
                return new PipelineImpllinks(
                    Runs: _Runs,
                    Self: _Self,
                    Queue: _Queue,
                    Actions: _Actions,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}