using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map
    /// </summary>
    public sealed class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map:  IEquatable<IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map>
    { 
        /// <summary>
        /// IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl
        /// </summary>
        public IojenkinsblueoceanserviceembeddedrestExtensionClassImpl IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl { get; private set; }

        /// <summary>
        /// IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl
        /// </summary>
        public IojenkinsblueoceanserviceembeddedrestExtensionClassImpl IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map()
        {
        }

        private IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map(IojenkinsblueoceanserviceembeddedrestExtensionClassImpl IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl, IojenkinsblueoceanserviceembeddedrestExtensionClassImpl IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl, string Class)
        {
            
            this.IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
            
            this.IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map.
        /// </summary>
        /// <returns>IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1MapBuilder</returns>
        public static IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1MapBuilder Builder()
        {
            return new IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1MapBuilder();
        }

        /// <summary>
        /// Returns IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1MapBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1MapBuilder</returns>
        public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1MapBuilder With()
        {
            return Builder()
                .IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl)
                .IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl)
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

        public bool Equals(IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map</param>
        /// <param name="right">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map left, IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map</param>
        /// <param name="right">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map left, IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map.
        /// </summary>
        public sealed class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1MapBuilder
        {
            private IojenkinsblueoceanserviceembeddedrestExtensionClassImpl _IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
            private IojenkinsblueoceanserviceembeddedrestExtensionClassImpl _IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
            private string _Class;

            internal IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1MapBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map.IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl property.
            /// </summary>
            /// <param name="value">IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl</param>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1MapBuilder IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(IojenkinsblueoceanserviceembeddedrestExtensionClassImpl value)
            {
                _IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map.IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl property.
            /// </summary>
            /// <param name="value">IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl</param>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1MapBuilder IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(IojenkinsblueoceanserviceembeddedrestExtensionClassImpl value)
            {
                _IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1MapBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map.
            /// </summary>
            /// <returns>IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map</returns>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map Build()
            {
                Validate();
                return new IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map(
                    IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: _IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl,
                    IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: _IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
