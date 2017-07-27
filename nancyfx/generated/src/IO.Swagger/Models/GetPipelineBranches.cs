using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GetPipelineBranches
    /// </summary>
    public sealed class GetPipelineBranches: List<GetPipelineBranchesitem>,  IEquatable<GetPipelineBranches>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use GetPipelineBranches.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GetPipelineBranches() : base()
        {
        }

        private GetPipelineBranches() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of GetPipelineBranches.
        /// </summary>
        /// <returns>GetPipelineBranchesBuilder</returns>
        public static new GetPipelineBranchesBuilder Builder()
        {
            return new GetPipelineBranchesBuilder();
        }

        /// <summary>
        /// Returns GetPipelineBranchesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GetPipelineBranchesBuilder</returns>
        public new GetPipelineBranchesBuilder With()
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

        public bool Equals(GetPipelineBranches other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GetPipelineBranches.
        /// </summary>
        /// <param name="left">Compared (GetPipelineBranches</param>
        /// <param name="right">Compared (GetPipelineBranches</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GetPipelineBranches left, GetPipelineBranches right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GetPipelineBranches.
        /// </summary>
        /// <param name="left">Compared (GetPipelineBranches</param>
        /// <param name="right">Compared (GetPipelineBranches</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GetPipelineBranches left, GetPipelineBranches right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GetPipelineBranches.
        /// </summary>
        public sealed class GetPipelineBranchesBuilder
        {

            internal GetPipelineBranchesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of GetPipelineBranches.
            /// </summary>
            /// <returns>GetPipelineBranches</returns>
            public GetPipelineBranches Build()
            {
                Validate();
                return new GetPipelineBranches(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
