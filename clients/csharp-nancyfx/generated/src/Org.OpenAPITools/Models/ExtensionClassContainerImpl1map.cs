using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// ExtensionClassContainerImpl1map
    /// </summary>
    public sealed class ExtensionClassContainerImpl1map:  IEquatable<ExtensionClassContainerImpl1map>
    { 
        /// <summary>
        /// IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl
        /// </summary>
        public ExtensionClassImpl IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl { get; private set; }

        /// <summary>
        /// IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl
        /// </summary>
        public ExtensionClassImpl IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ExtensionClassContainerImpl1map.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ExtensionClassContainerImpl1map()
        {
        }

        private ExtensionClassContainerImpl1map(ExtensionClassImpl IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl, ExtensionClassImpl IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl, string Class)
        {
            
            this.IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
            
            this.IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of ExtensionClassContainerImpl1map.
        /// </summary>
        /// <returns>ExtensionClassContainerImpl1mapBuilder</returns>
        public static ExtensionClassContainerImpl1mapBuilder Builder()
        {
            return new ExtensionClassContainerImpl1mapBuilder();
        }

        /// <summary>
        /// Returns ExtensionClassContainerImpl1mapBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ExtensionClassContainerImpl1mapBuilder</returns>
        public ExtensionClassContainerImpl1mapBuilder With()
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

        public bool Equals(ExtensionClassContainerImpl1map other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ExtensionClassContainerImpl1map.
        /// </summary>
        /// <param name="left">Compared (ExtensionClassContainerImpl1map</param>
        /// <param name="right">Compared (ExtensionClassContainerImpl1map</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ExtensionClassContainerImpl1map left, ExtensionClassContainerImpl1map right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ExtensionClassContainerImpl1map.
        /// </summary>
        /// <param name="left">Compared (ExtensionClassContainerImpl1map</param>
        /// <param name="right">Compared (ExtensionClassContainerImpl1map</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ExtensionClassContainerImpl1map left, ExtensionClassContainerImpl1map right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ExtensionClassContainerImpl1map.
        /// </summary>
        public sealed class ExtensionClassContainerImpl1mapBuilder
        {
            private ExtensionClassImpl _IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
            private ExtensionClassImpl _IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
            private string _Class;

            internal ExtensionClassContainerImpl1mapBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ExtensionClassContainerImpl1map.IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl property.
            /// </summary>
            /// <param name="value">IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl</param>
            public ExtensionClassContainerImpl1mapBuilder IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(ExtensionClassImpl value)
            {
                _IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = value;
                return this;
            }

            /// <summary>
            /// Sets value for ExtensionClassContainerImpl1map.IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl property.
            /// </summary>
            /// <param name="value">IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl</param>
            public ExtensionClassContainerImpl1mapBuilder IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(ExtensionClassImpl value)
            {
                _IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = value;
                return this;
            }

            /// <summary>
            /// Sets value for ExtensionClassContainerImpl1map.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public ExtensionClassContainerImpl1mapBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ExtensionClassContainerImpl1map.
            /// </summary>
            /// <returns>ExtensionClassContainerImpl1map</returns>
            public ExtensionClassContainerImpl1map Build()
            {
                Validate();
                return new ExtensionClassContainerImpl1map(
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