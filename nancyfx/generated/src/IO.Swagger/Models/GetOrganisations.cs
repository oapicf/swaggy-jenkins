using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GetOrganisations
    /// </summary>
    public sealed class GetOrganisations: List<SwaggyjenkinsOrganisation>,  IEquatable<GetOrganisations>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use GetOrganisations.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GetOrganisations() : base()
        {
        }

        private GetOrganisations() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of GetOrganisations.
        /// </summary>
        /// <returns>GetOrganisationsBuilder</returns>
        public static new GetOrganisationsBuilder Builder()
        {
            return new GetOrganisationsBuilder();
        }

        /// <summary>
        /// Returns GetOrganisationsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GetOrganisationsBuilder</returns>
        public new GetOrganisationsBuilder With()
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

        public bool Equals(GetOrganisations other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GetOrganisations.
        /// </summary>
        /// <param name="left">Compared (GetOrganisations</param>
        /// <param name="right">Compared (GetOrganisations</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GetOrganisations left, GetOrganisations right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GetOrganisations.
        /// </summary>
        /// <param name="left">Compared (GetOrganisations</param>
        /// <param name="right">Compared (GetOrganisations</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GetOrganisations left, GetOrganisations right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GetOrganisations.
        /// </summary>
        public sealed class GetOrganisationsBuilder
        {

            internal GetOrganisationsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of GetOrganisations.
            /// </summary>
            /// <returns>GetOrganisations</returns>
            public GetOrganisations Build()
            {
                Validate();
                return new GetOrganisations(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
