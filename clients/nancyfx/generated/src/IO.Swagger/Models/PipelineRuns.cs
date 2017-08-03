using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// PipelineRuns
    /// </summary>
    public sealed class PipelineRuns: List<PipelineRun>,  IEquatable<PipelineRuns>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineRuns.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineRuns() : base()
        {
        }

        private PipelineRuns() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of PipelineRuns.
        /// </summary>
        /// <returns>PipelineRunsBuilder</returns>
        public static new PipelineRunsBuilder Builder()
        {
            return new PipelineRunsBuilder();
        }

        /// <summary>
        /// Returns PipelineRunsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineRunsBuilder</returns>
        public new PipelineRunsBuilder With()
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

        public bool Equals(PipelineRuns other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineRuns.
        /// </summary>
        /// <param name="left">Compared (PipelineRuns</param>
        /// <param name="right">Compared (PipelineRuns</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineRuns left, PipelineRuns right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineRuns.
        /// </summary>
        /// <param name="left">Compared (PipelineRuns</param>
        /// <param name="right">Compared (PipelineRuns</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineRuns left, PipelineRuns right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineRuns.
        /// </summary>
        public sealed class PipelineRunsBuilder
        {

            internal PipelineRunsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of PipelineRuns.
            /// </summary>
            /// <returns>PipelineRuns</returns>
            public PipelineRuns Build()
            {
                Validate();
                return new PipelineRuns(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}