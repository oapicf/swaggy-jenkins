using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// PipelineBranches
    /// </summary>
    public sealed class PipelineBranches: List<PipelineBranchesitem>,  IEquatable<PipelineBranches>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineBranches.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineBranches() : base()
        {
        }

        private PipelineBranches() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of PipelineBranches.
        /// </summary>
        /// <returns>PipelineBranchesBuilder</returns>
        public static new PipelineBranchesBuilder Builder()
        {
            return new PipelineBranchesBuilder();
        }

        /// <summary>
        /// Returns PipelineBranchesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineBranchesBuilder</returns>
        public new PipelineBranchesBuilder With()
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

        public bool Equals(PipelineBranches other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineBranches.
        /// </summary>
        /// <param name="left">Compared (PipelineBranches</param>
        /// <param name="right">Compared (PipelineBranches</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineBranches left, PipelineBranches right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineBranches.
        /// </summary>
        /// <param name="left">Compared (PipelineBranches</param>
        /// <param name="right">Compared (PipelineBranches</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineBranches left, PipelineBranches right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineBranches.
        /// </summary>
        public sealed class PipelineBranchesBuilder
        {

            internal PipelineBranchesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of PipelineBranches.
            /// </summary>
            /// <returns>PipelineBranches</returns>
            public PipelineBranches Build()
            {
                Validate();
                return new PipelineBranches(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}