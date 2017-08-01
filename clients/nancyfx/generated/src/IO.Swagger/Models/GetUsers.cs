using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GetUsers
    /// </summary>
    public sealed class GetUsers: List<SwaggyjenkinsUser>,  IEquatable<GetUsers>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use GetUsers.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GetUsers() : base()
        {
        }

        private GetUsers() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of GetUsers.
        /// </summary>
        /// <returns>GetUsersBuilder</returns>
        public static new GetUsersBuilder Builder()
        {
            return new GetUsersBuilder();
        }

        /// <summary>
        /// Returns GetUsersBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GetUsersBuilder</returns>
        public new GetUsersBuilder With()
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

        public bool Equals(GetUsers other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GetUsers.
        /// </summary>
        /// <param name="left">Compared (GetUsers</param>
        /// <param name="right">Compared (GetUsers</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GetUsers left, GetUsers right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GetUsers.
        /// </summary>
        /// <param name="left">Compared (GetUsers</param>
        /// <param name="right">Compared (GetUsers</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GetUsers left, GetUsers right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GetUsers.
        /// </summary>
        public sealed class GetUsersBuilder
        {

            internal GetUsersBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of GetUsers.
            /// </summary>
            /// <returns>GetUsers</returns>
            public GetUsers Build()
            {
                Validate();
                return new GetUsers(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
