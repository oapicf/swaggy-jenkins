using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// ExtensionClassContainerImpl1
    /// </summary>
    public sealed class ExtensionClassContainerImpl1:  IEquatable<ExtensionClassContainerImpl1>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Links
        /// </summary>
        public ExtensionClassContainerImpl1links Links { get; private set; }

        /// <summary>
        /// Map
        /// </summary>
        public ExtensionClassContainerImpl1map Map { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ExtensionClassContainerImpl1.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ExtensionClassContainerImpl1()
        {
        }

        private ExtensionClassContainerImpl1(string Class, ExtensionClassContainerImpl1links Links, ExtensionClassContainerImpl1map Map)
        {
            
            this.Class = Class;
            
            this.Links = Links;
            
            this.Map = Map;
            
        }

        /// <summary>
        /// Returns builder of ExtensionClassContainerImpl1.
        /// </summary>
        /// <returns>ExtensionClassContainerImpl1Builder</returns>
        public static ExtensionClassContainerImpl1Builder Builder()
        {
            return new ExtensionClassContainerImpl1Builder();
        }

        /// <summary>
        /// Returns ExtensionClassContainerImpl1Builder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ExtensionClassContainerImpl1Builder</returns>
        public ExtensionClassContainerImpl1Builder With()
        {
            return Builder()
                .Class(Class)
                .Links(Links)
                .Map(Map);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ExtensionClassContainerImpl1 other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ExtensionClassContainerImpl1.
        /// </summary>
        /// <param name="left">Compared (ExtensionClassContainerImpl1</param>
        /// <param name="right">Compared (ExtensionClassContainerImpl1</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ExtensionClassContainerImpl1 left, ExtensionClassContainerImpl1 right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ExtensionClassContainerImpl1.
        /// </summary>
        /// <param name="left">Compared (ExtensionClassContainerImpl1</param>
        /// <param name="right">Compared (ExtensionClassContainerImpl1</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ExtensionClassContainerImpl1 left, ExtensionClassContainerImpl1 right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ExtensionClassContainerImpl1.
        /// </summary>
        public sealed class ExtensionClassContainerImpl1Builder
        {
            private string _Class;
            private ExtensionClassContainerImpl1links _Links;
            private ExtensionClassContainerImpl1map _Map;

            internal ExtensionClassContainerImpl1Builder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ExtensionClassContainerImpl1.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public ExtensionClassContainerImpl1Builder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for ExtensionClassContainerImpl1.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public ExtensionClassContainerImpl1Builder Links(ExtensionClassContainerImpl1links value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for ExtensionClassContainerImpl1.Map property.
            /// </summary>
            /// <param name="value">Map</param>
            public ExtensionClassContainerImpl1Builder Map(ExtensionClassContainerImpl1map value)
            {
                _Map = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ExtensionClassContainerImpl1.
            /// </summary>
            /// <returns>ExtensionClassContainerImpl1</returns>
            public ExtensionClassContainerImpl1 Build()
            {
                Validate();
                return new ExtensionClassContainerImpl1(
                    Class: _Class,
                    Links: _Links,
                    Map: _Map
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}