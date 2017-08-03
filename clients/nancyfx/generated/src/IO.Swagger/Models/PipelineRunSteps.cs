using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// PipelineRunSteps
    /// </summary>
    public sealed class PipelineRunSteps: List<GenericResource>,  IEquatable<PipelineRunSteps>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineRunSteps.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineRunSteps() : base()
        {
        }

        private PipelineRunSteps() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of PipelineRunSteps.
        /// </summary>
        /// <returns>PipelineRunStepsBuilder</returns>
        public static new PipelineRunStepsBuilder Builder()
        {
            return new PipelineRunStepsBuilder();
        }

        /// <summary>
        /// Returns PipelineRunStepsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineRunStepsBuilder</returns>
        public new PipelineRunStepsBuilder With()
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

        public bool Equals(PipelineRunSteps other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineRunSteps.
        /// </summary>
        /// <param name="left">Compared (PipelineRunSteps</param>
        /// <param name="right">Compared (PipelineRunSteps</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineRunSteps left, PipelineRunSteps right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineRunSteps.
        /// </summary>
        /// <param name="left">Compared (PipelineRunSteps</param>
        /// <param name="right">Compared (PipelineRunSteps</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineRunSteps left, PipelineRunSteps right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineRunSteps.
        /// </summary>
        public sealed class PipelineRunStepsBuilder
        {

            internal PipelineRunStepsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of PipelineRunSteps.
            /// </summary>
            /// <returns>PipelineRunSteps</returns>
            public PipelineRunSteps Build()
            {
                Validate();
                return new PipelineRunSteps(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}