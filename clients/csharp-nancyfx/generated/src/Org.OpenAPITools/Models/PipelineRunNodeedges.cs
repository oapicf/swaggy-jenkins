using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// PipelineRunNodeedges
    /// </summary>
    public sealed class PipelineRunNodeedges:  IEquatable<PipelineRunNodeedges>
    { 
        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineRunNodeedges.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineRunNodeedges()
        {
        }

        private PipelineRunNodeedges(string Id, string Class)
        {
            
            this.Id = Id;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of PipelineRunNodeedges.
        /// </summary>
        /// <returns>PipelineRunNodeedgesBuilder</returns>
        public static PipelineRunNodeedgesBuilder Builder()
        {
            return new PipelineRunNodeedgesBuilder();
        }

        /// <summary>
        /// Returns PipelineRunNodeedgesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineRunNodeedgesBuilder</returns>
        public PipelineRunNodeedgesBuilder With()
        {
            return Builder()
                .Id(Id)
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

        public bool Equals(PipelineRunNodeedges other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineRunNodeedges.
        /// </summary>
        /// <param name="left">Compared (PipelineRunNodeedges</param>
        /// <param name="right">Compared (PipelineRunNodeedges</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineRunNodeedges left, PipelineRunNodeedges right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineRunNodeedges.
        /// </summary>
        /// <param name="left">Compared (PipelineRunNodeedges</param>
        /// <param name="right">Compared (PipelineRunNodeedges</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineRunNodeedges left, PipelineRunNodeedges right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineRunNodeedges.
        /// </summary>
        public sealed class PipelineRunNodeedgesBuilder
        {
            private string _Id;
            private string _Class;

            internal PipelineRunNodeedgesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineRunNodeedges.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public PipelineRunNodeedgesBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunNodeedges.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineRunNodeedgesBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineRunNodeedges.
            /// </summary>
            /// <returns>PipelineRunNodeedges</returns>
            public PipelineRunNodeedges Build()
            {
                Validate();
                return new PipelineRunNodeedges(
                    Id: _Id,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}