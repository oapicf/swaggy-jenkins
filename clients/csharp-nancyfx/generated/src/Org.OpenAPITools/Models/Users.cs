using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// Users
    /// </summary>
    public sealed class Users: List<User>,  IEquatable<Users>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use Users.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public Users() : base()
        {
        }

        private Users() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of Users.
        /// </summary>
        /// <returns>UsersBuilder</returns>
        public static new UsersBuilder Builder()
        {
            return new UsersBuilder();
        }

        /// <summary>
        /// Returns UsersBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>UsersBuilder</returns>
        public new UsersBuilder With()
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

        public bool Equals(Users other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (Users.
        /// </summary>
        /// <param name="left">Compared (Users</param>
        /// <param name="right">Compared (Users</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (Users left, Users right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (Users.
        /// </summary>
        /// <param name="left">Compared (Users</param>
        /// <param name="right">Compared (Users</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (Users left, Users right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of Users.
        /// </summary>
        public sealed class UsersBuilder
        {

            internal UsersBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of Users.
            /// </summary>
            /// <returns>Users</returns>
            public Users Build()
            {
                Validate();
                return new Users(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}