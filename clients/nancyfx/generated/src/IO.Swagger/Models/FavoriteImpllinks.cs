using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// FavoriteImpllinks
    /// </summary>
    public sealed class FavoriteImpllinks:  IEquatable<FavoriteImpllinks>
    { 
        /// <summary>
        /// Self
        /// </summary>
        public Link Self { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use FavoriteImpllinks.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public FavoriteImpllinks()
        {
        }

        private FavoriteImpllinks(Link Self, string Class)
        {
            
            this.Self = Self;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of FavoriteImpllinks.
        /// </summary>
        /// <returns>FavoriteImpllinksBuilder</returns>
        public static FavoriteImpllinksBuilder Builder()
        {
            return new FavoriteImpllinksBuilder();
        }

        /// <summary>
        /// Returns FavoriteImpllinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>FavoriteImpllinksBuilder</returns>
        public FavoriteImpllinksBuilder With()
        {
            return Builder()
                .Self(Self)
                .Class(Class);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(FavoriteImpllinks other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (FavoriteImpllinks.
        /// </summary>
        /// <param name="left">Compared (FavoriteImpllinks</param>
        /// <param name="right">Compared (FavoriteImpllinks</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (FavoriteImpllinks left, FavoriteImpllinks right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (FavoriteImpllinks.
        /// </summary>
        /// <param name="left">Compared (FavoriteImpllinks</param>
        /// <param name="right">Compared (FavoriteImpllinks</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (FavoriteImpllinks left, FavoriteImpllinks right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of FavoriteImpllinks.
        /// </summary>
        public sealed class FavoriteImpllinksBuilder
        {
            private Link _Self;
            private string _Class;

            internal FavoriteImpllinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for FavoriteImpllinks.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public FavoriteImpllinksBuilder Self(Link value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for FavoriteImpllinks.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public FavoriteImpllinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of FavoriteImpllinks.
            /// </summary>
            /// <returns>FavoriteImpllinks</returns>
            public FavoriteImpllinks Build()
            {
                Validate();
                return new FavoriteImpllinks(
                    Self: _Self,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}