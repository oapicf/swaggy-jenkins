using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// Organisations
    /// </summary>
    public sealed class Organisations: List<Organisation>,  IEquatable<Organisations>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use Organisations.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public Organisations() : base()
        {
        }

        private Organisations() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of Organisations.
        /// </summary>
        /// <returns>OrganisationsBuilder</returns>
        public static new OrganisationsBuilder Builder()
        {
            return new OrganisationsBuilder();
        }

        /// <summary>
        /// Returns OrganisationsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>OrganisationsBuilder</returns>
        public new OrganisationsBuilder With()
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

        public bool Equals(Organisations other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (Organisations.
        /// </summary>
        /// <param name="left">Compared (Organisations</param>
        /// <param name="right">Compared (Organisations</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (Organisations left, Organisations right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (Organisations.
        /// </summary>
        /// <param name="left">Compared (Organisations</param>
        /// <param name="right">Compared (Organisations</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (Organisations left, Organisations right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of Organisations.
        /// </summary>
        public sealed class OrganisationsBuilder
        {

            internal OrganisationsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of Organisations.
            /// </summary>
            /// <returns>Organisations</returns>
            public Organisations Build()
            {
                Validate();
                return new Organisations(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}