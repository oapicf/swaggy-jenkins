using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1
    /// </summary>
    public sealed class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1:  IEquatable<IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Links
        /// </summary>
        public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links Links { get; private set; }

        /// <summary>
        /// Map
        /// </summary>
        public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map Map { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1()
        {
        }

        private IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1(string Class, IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links Links, IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map Map)
        {
            
            this.Class = Class;
            
            this.Links = Links;
            
            this.Map = Map;
            
        }

        /// <summary>
        /// Returns builder of IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.
        /// </summary>
        /// <returns>IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Builder</returns>
        public static IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Builder Builder()
        {
            return new IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Builder();
        }

        /// <summary>
        /// Returns IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Builder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Builder</returns>
        public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Builder With()
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

        public bool Equals(IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1</param>
        /// <param name="right">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 left, IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1</param>
        /// <param name="right">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 left, IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.
        /// </summary>
        public sealed class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Builder
        {
            private string _Class;
            private IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links _Links;
            private IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map _Map;

            internal IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Builder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Builder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Builder Links(IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.Map property.
            /// </summary>
            /// <param name="value">Map</param>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Builder Map(IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map value)
            {
                _Map = value;
                return this;
            }


            /// <summary>
            /// Builds instance of IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.
            /// </summary>
            /// <returns>IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1</returns>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 Build()
            {
                Validate();
                return new IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1(
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
