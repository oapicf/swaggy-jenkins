using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// UserFavorites
    /// </summary>
    public sealed class UserFavorites: List<FavoriteImpl>,  IEquatable<UserFavorites>
    { 

        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use UserFavorites.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public UserFavorites() : base()
        {
        }

        private UserFavorites() : base()
        {
            
        }

        /// <summary>
        /// Returns builder of UserFavorites.
        /// </summary>
        /// <returns>UserFavoritesBuilder</returns>
        public static new UserFavoritesBuilder Builder()
        {
            return new UserFavoritesBuilder();
        }

        /// <summary>
        /// Returns UserFavoritesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>UserFavoritesBuilder</returns>
        public new UserFavoritesBuilder With()
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

        public bool Equals(UserFavorites other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (UserFavorites.
        /// </summary>
        /// <param name="left">Compared (UserFavorites</param>
        /// <param name="right">Compared (UserFavorites</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (UserFavorites left, UserFavorites right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (UserFavorites.
        /// </summary>
        /// <param name="left">Compared (UserFavorites</param>
        /// <param name="right">Compared (UserFavorites</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (UserFavorites left, UserFavorites right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of UserFavorites.
        /// </summary>
        public sealed class UserFavoritesBuilder
        {

            internal UserFavoritesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }


            /// <summary>
            /// Builds instance of UserFavorites.
            /// </summary>
            /// <returns>UserFavorites</returns>
            public UserFavorites Build()
            {
                Validate();
                return new UserFavorites(
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}