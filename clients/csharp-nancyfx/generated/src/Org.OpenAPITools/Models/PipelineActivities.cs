using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// PipelineActivities
    /// </summary>
    public sealed class PipelineActivities: List<PipelineActivity>,  IEquatable<PipelineActivities>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineActivities.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineActivities() : base()
        {
        }

        private PipelineActivities() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of PipelineActivities.
        /// </summary>
        /// <returns>PipelineActivitiesBuilder</returns>
        public static new PipelineActivitiesBuilder Builder()
        {
            return new PipelineActivitiesBuilder();
        }

        /// <summary>
        /// Returns PipelineActivitiesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineActivitiesBuilder</returns>
        public new PipelineActivitiesBuilder With()
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

        public bool Equals(PipelineActivities other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineActivities.
        /// </summary>
        /// <param name="left">Compared (PipelineActivities</param>
        /// <param name="right">Compared (PipelineActivities</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineActivities left, PipelineActivities right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineActivities.
        /// </summary>
        /// <param name="left">Compared (PipelineActivities</param>
        /// <param name="right">Compared (PipelineActivities</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineActivities left, PipelineActivities right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineActivities.
        /// </summary>
        public sealed class PipelineActivitiesBuilder
        {

            internal PipelineActivitiesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of PipelineActivities.
            /// </summary>
            /// <returns>PipelineActivities</returns>
            public PipelineActivities Build()
            {
                Validate();
                return new PipelineActivities(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}