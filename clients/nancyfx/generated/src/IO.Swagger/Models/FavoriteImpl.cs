using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// FavoriteImpl
    /// </summary>
    public sealed class FavoriteImpl:  IEquatable<FavoriteImpl>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Links
        /// </summary>
        public FavoriteImpllinks Links { get; private set; }

        /// <summary>
        /// Item
        /// </summary>
        public PipelineImpl Item { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use FavoriteImpl.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public FavoriteImpl()
        {
        }

        private FavoriteImpl(string Class, FavoriteImpllinks Links, PipelineImpl Item)
        {
            
            this.Class = Class;
            
            this.Links = Links;
            
            this.Item = Item;
            
        }

        /// <summary>
        /// Returns builder of FavoriteImpl.
        /// </summary>
        /// <returns>FavoriteImplBuilder</returns>
        public static FavoriteImplBuilder Builder()
        {
            return new FavoriteImplBuilder();
        }

        /// <summary>
        /// Returns FavoriteImplBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>FavoriteImplBuilder</returns>
        public FavoriteImplBuilder With()
        {
            return Builder()
                .Class(Class)
                .Links(Links)
                .Item(Item);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(FavoriteImpl other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (FavoriteImpl.
        /// </summary>
        /// <param name="left">Compared (FavoriteImpl</param>
        /// <param name="right">Compared (FavoriteImpl</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (FavoriteImpl left, FavoriteImpl right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (FavoriteImpl.
        /// </summary>
        /// <param name="left">Compared (FavoriteImpl</param>
        /// <param name="right">Compared (FavoriteImpl</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (FavoriteImpl left, FavoriteImpl right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of FavoriteImpl.
        /// </summary>
        public sealed class FavoriteImplBuilder
        {
            private string _Class;
            private FavoriteImpllinks _Links;
            private PipelineImpl _Item;

            internal FavoriteImplBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for FavoriteImpl.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public FavoriteImplBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for FavoriteImpl.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public FavoriteImplBuilder Links(FavoriteImpllinks value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for FavoriteImpl.Item property.
            /// </summary>
            /// <param name="value">Item</param>
            public FavoriteImplBuilder Item(PipelineImpl value)
            {
                _Item = value;
                return this;
            }


            /// <summary>
            /// Builds instance of FavoriteImpl.
            /// </summary>
            /// <returns>FavoriteImpl</returns>
            public FavoriteImpl Build()
            {
                Validate();
                return new FavoriteImpl(
                    Class: _Class,
                    Links: _Links,
                    Item: _Item
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}