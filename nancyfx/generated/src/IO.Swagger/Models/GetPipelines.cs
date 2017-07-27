using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GetPipelines
    /// </summary>
    public sealed class GetPipelines: List<SwaggyjenkinsPipeline>,  IEquatable<GetPipelines>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use GetPipelines.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GetPipelines() : base()
        {
        }

        private GetPipelines() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of GetPipelines.
        /// </summary>
        /// <returns>GetPipelinesBuilder</returns>
        public static new GetPipelinesBuilder Builder()
        {
            return new GetPipelinesBuilder();
        }

        /// <summary>
        /// Returns GetPipelinesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GetPipelinesBuilder</returns>
        public new GetPipelinesBuilder With()
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

        public bool Equals(GetPipelines other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GetPipelines.
        /// </summary>
        /// <param name="left">Compared (GetPipelines</param>
        /// <param name="right">Compared (GetPipelines</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GetPipelines left, GetPipelines right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GetPipelines.
        /// </summary>
        /// <param name="left">Compared (GetPipelines</param>
        /// <param name="right">Compared (GetPipelines</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GetPipelines left, GetPipelines right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GetPipelines.
        /// </summary>
        public sealed class GetPipelinesBuilder
        {

            internal GetPipelinesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of GetPipelines.
            /// </summary>
            /// <returns>GetPipelines</returns>
            public GetPipelines Build()
            {
                Validate();
                return new GetPipelines(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
