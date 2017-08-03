using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// Body
    /// </summary>
    public sealed class Body:  IEquatable<Body>
    { 
        /// <summary>
        /// Favorite
        /// </summary>
        public bool? Favorite { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use Body.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public Body()
        {
        }

        private Body(bool? Favorite)
        {
            
            this.Favorite = Favorite;
            
        }

        /// <summary>
        /// Returns builder of Body.
        /// </summary>
        /// <returns>BodyBuilder</returns>
        public static BodyBuilder Builder()
        {
            return new BodyBuilder();
        }

        /// <summary>
        /// Returns BodyBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>BodyBuilder</returns>
        public BodyBuilder With()
        {
            return Builder()
                .Favorite(Favorite);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(Body other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (Body.
        /// </summary>
        /// <param name="left">Compared (Body</param>
        /// <param name="right">Compared (Body</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (Body left, Body right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (Body.
        /// </summary>
        /// <param name="left">Compared (Body</param>
        /// <param name="right">Compared (Body</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (Body left, Body right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of Body.
        /// </summary>
        public sealed class BodyBuilder
        {
            private bool? _Favorite;

            internal BodyBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for Body.Favorite property.
            /// </summary>
            /// <param name="value">Favorite</param>
            public BodyBuilder Favorite(bool? value)
            {
                _Favorite = value;
                return this;
            }


            /// <summary>
            /// Builds instance of Body.
            /// </summary>
            /// <returns>Body</returns>
            public Body Build()
            {
                Validate();
                return new Body(
                    Favorite: _Favorite
                );
            }

            private void Validate()
            { 
                if (_Favorite == null)
                {
                    throw new ArgumentException("Favorite is a required property for Body and cannot be null");
                } 
            }
        }

        
    }
}