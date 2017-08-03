using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// ScmOrganisations
    /// </summary>
    public sealed class ScmOrganisations: List<GithubOrganization>,  IEquatable<ScmOrganisations>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ScmOrganisations.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ScmOrganisations() : base()
        {
        }

        private ScmOrganisations() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of ScmOrganisations.
        /// </summary>
        /// <returns>ScmOrganisationsBuilder</returns>
        public static new ScmOrganisationsBuilder Builder()
        {
            return new ScmOrganisationsBuilder();
        }

        /// <summary>
        /// Returns ScmOrganisationsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ScmOrganisationsBuilder</returns>
        public new ScmOrganisationsBuilder With()
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

        public bool Equals(ScmOrganisations other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ScmOrganisations.
        /// </summary>
        /// <param name="left">Compared (ScmOrganisations</param>
        /// <param name="right">Compared (ScmOrganisations</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ScmOrganisations left, ScmOrganisations right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ScmOrganisations.
        /// </summary>
        /// <param name="left">Compared (ScmOrganisations</param>
        /// <param name="right">Compared (ScmOrganisations</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ScmOrganisations left, ScmOrganisations right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ScmOrganisations.
        /// </summary>
        public sealed class ScmOrganisationsBuilder
        {

            internal ScmOrganisationsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of ScmOrganisations.
            /// </summary>
            /// <returns>ScmOrganisations</returns>
            public ScmOrganisations Build()
            {
                Validate();
                return new ScmOrganisations(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}