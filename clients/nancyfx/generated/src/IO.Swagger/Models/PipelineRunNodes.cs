using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// PipelineRunNodes
    /// </summary>
    public sealed class PipelineRunNodes: List<PipelineRunNode>,  IEquatable<PipelineRunNodes>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineRunNodes.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineRunNodes() : base()
        {
        }

        private PipelineRunNodes() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of PipelineRunNodes.
        /// </summary>
        /// <returns>PipelineRunNodesBuilder</returns>
        public static new PipelineRunNodesBuilder Builder()
        {
            return new PipelineRunNodesBuilder();
        }

        /// <summary>
        /// Returns PipelineRunNodesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineRunNodesBuilder</returns>
        public new PipelineRunNodesBuilder With()
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

        public bool Equals(PipelineRunNodes other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineRunNodes.
        /// </summary>
        /// <param name="left">Compared (PipelineRunNodes</param>
        /// <param name="right">Compared (PipelineRunNodes</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineRunNodes left, PipelineRunNodes right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineRunNodes.
        /// </summary>
        /// <param name="left">Compared (PipelineRunNodes</param>
        /// <param name="right">Compared (PipelineRunNodes</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineRunNodes left, PipelineRunNodes right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineRunNodes.
        /// </summary>
        public sealed class PipelineRunNodesBuilder
        {

            internal PipelineRunNodesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of PipelineRunNodes.
            /// </summary>
            /// <returns>PipelineRunNodes</returns>
            public PipelineRunNodes Build()
            {
                Validate();
                return new PipelineRunNodes(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}