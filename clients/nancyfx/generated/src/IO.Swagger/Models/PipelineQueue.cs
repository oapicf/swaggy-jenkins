using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// PipelineQueue
    /// </summary>
    public sealed class PipelineQueue: List<QueueItemImpl>,  IEquatable<PipelineQueue>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineQueue.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineQueue() : base()
        {
        }

        private PipelineQueue() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of PipelineQueue.
        /// </summary>
        /// <returns>PipelineQueueBuilder</returns>
        public static new PipelineQueueBuilder Builder()
        {
            return new PipelineQueueBuilder();
        }

        /// <summary>
        /// Returns PipelineQueueBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineQueueBuilder</returns>
        public new PipelineQueueBuilder With()
        {
            return Builder()
;
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(PipelineQueue other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineQueue.
        /// </summary>
        /// <param name="left">Compared (PipelineQueue</param>
        /// <param name="right">Compared (PipelineQueue</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineQueue left, PipelineQueue right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineQueue.
        /// </summary>
        /// <param name="left">Compared (PipelineQueue</param>
        /// <param name="right">Compared (PipelineQueue</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineQueue left, PipelineQueue right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineQueue.
        /// </summary>
        public sealed class PipelineQueueBuilder
        {

            internal PipelineQueueBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of PipelineQueue.
            /// </summary>
            /// <returns>PipelineQueue</returns>
            public PipelineQueue Build()
            {
                Validate();
                return new PipelineQueue(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}