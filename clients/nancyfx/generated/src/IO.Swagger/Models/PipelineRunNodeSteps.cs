using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// PipelineRunNodeSteps
    /// </summary>
    public sealed class PipelineRunNodeSteps: List<PipelineStepImpl>,  IEquatable<PipelineRunNodeSteps>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineRunNodeSteps.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineRunNodeSteps() : base()
        {
        }

        private PipelineRunNodeSteps() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of PipelineRunNodeSteps.
        /// </summary>
        /// <returns>PipelineRunNodeStepsBuilder</returns>
        public static new PipelineRunNodeStepsBuilder Builder()
        {
            return new PipelineRunNodeStepsBuilder();
        }

        /// <summary>
        /// Returns PipelineRunNodeStepsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineRunNodeStepsBuilder</returns>
        public new PipelineRunNodeStepsBuilder With()
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

        public bool Equals(PipelineRunNodeSteps other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineRunNodeSteps.
        /// </summary>
        /// <param name="left">Compared (PipelineRunNodeSteps</param>
        /// <param name="right">Compared (PipelineRunNodeSteps</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineRunNodeSteps left, PipelineRunNodeSteps right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineRunNodeSteps.
        /// </summary>
        /// <param name="left">Compared (PipelineRunNodeSteps</param>
        /// <param name="right">Compared (PipelineRunNodeSteps</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineRunNodeSteps left, PipelineRunNodeSteps right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineRunNodeSteps.
        /// </summary>
        public sealed class PipelineRunNodeStepsBuilder
        {

            internal PipelineRunNodeStepsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of PipelineRunNodeSteps.
            /// </summary>
            /// <returns>PipelineRunNodeSteps</returns>
            public PipelineRunNodeSteps Build()
            {
                Validate();
                return new PipelineRunNodeSteps(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}