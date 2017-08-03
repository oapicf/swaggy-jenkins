using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// Pipelines
    /// </summary>
    public sealed class Pipelines: List<Pipeline>,  IEquatable<Pipelines>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use Pipelines.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public Pipelines() : base()
        {
        }

        private Pipelines() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of Pipelines.
        /// </summary>
        /// <returns>PipelinesBuilder</returns>
        public static new PipelinesBuilder Builder()
        {
            return new PipelinesBuilder();
        }

        /// <summary>
        /// Returns PipelinesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelinesBuilder</returns>
        public new PipelinesBuilder With()
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

        public bool Equals(Pipelines other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (Pipelines.
        /// </summary>
        /// <param name="left">Compared (Pipelines</param>
        /// <param name="right">Compared (Pipelines</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (Pipelines left, Pipelines right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (Pipelines.
        /// </summary>
        /// <param name="left">Compared (Pipelines</param>
        /// <param name="right">Compared (Pipelines</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (Pipelines left, Pipelines right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of Pipelines.
        /// </summary>
        public sealed class PipelinesBuilder
        {

            internal PipelinesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of Pipelines.
            /// </summary>
            /// <returns>Pipelines</returns>
            public Pipelines Build()
            {
                Validate();
                return new Pipelines(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}