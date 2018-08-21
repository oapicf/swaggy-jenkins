using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// PipelineActivityartifacts
    /// </summary>
    public sealed class PipelineActivityartifacts:  IEquatable<PipelineActivityartifacts>
    { 
        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }

        /// <summary>
        /// Size
        /// </summary>
        public int? Size { get; private set; }

        /// <summary>
        /// Url
        /// </summary>
        public string Url { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineActivityartifacts.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineActivityartifacts()
        {
        }

        private PipelineActivityartifacts(string Name, int? Size, string Url, string Class)
        {
            
            this.Name = Name;
            
            this.Size = Size;
            
            this.Url = Url;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of PipelineActivityartifacts.
        /// </summary>
        /// <returns>PipelineActivityartifactsBuilder</returns>
        public static PipelineActivityartifactsBuilder Builder()
        {
            return new PipelineActivityartifactsBuilder();
        }

        /// <summary>
        /// Returns PipelineActivityartifactsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineActivityartifactsBuilder</returns>
        public PipelineActivityartifactsBuilder With()
        {
            return Builder()
                .Name(Name)
                .Size(Size)
                .Url(Url)
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

        public bool Equals(PipelineActivityartifacts other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineActivityartifacts.
        /// </summary>
        /// <param name="left">Compared (PipelineActivityartifacts</param>
        /// <param name="right">Compared (PipelineActivityartifacts</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineActivityartifacts left, PipelineActivityartifacts right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineActivityartifacts.
        /// </summary>
        /// <param name="left">Compared (PipelineActivityartifacts</param>
        /// <param name="right">Compared (PipelineActivityartifacts</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineActivityartifacts left, PipelineActivityartifacts right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineActivityartifacts.
        /// </summary>
        public sealed class PipelineActivityartifactsBuilder
        {
            private string _Name;
            private int? _Size;
            private string _Url;
            private string _Class;

            internal PipelineActivityartifactsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineActivityartifacts.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public PipelineActivityartifactsBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivityartifacts.Size property.
            /// </summary>
            /// <param name="value">Size</param>
            public PipelineActivityartifactsBuilder Size(int? value)
            {
                _Size = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivityartifacts.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public PipelineActivityartifactsBuilder Url(string value)
            {
                _Url = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineActivityartifacts.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineActivityartifactsBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineActivityartifacts.
            /// </summary>
            /// <returns>PipelineActivityartifacts</returns>
            public PipelineActivityartifacts Build()
            {
                Validate();
                return new PipelineActivityartifacts(
                    Name: _Name,
                    Size: _Size,
                    Url: _Url,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}