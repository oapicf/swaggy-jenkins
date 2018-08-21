using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// PipelineRunartifacts
    /// </summary>
    public sealed class PipelineRunartifacts:  IEquatable<PipelineRunartifacts>
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
        /// Use PipelineRunartifacts.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineRunartifacts()
        {
        }

        private PipelineRunartifacts(string Name, int? Size, string Url, string Class)
        {
            
            this.Name = Name;
            
            this.Size = Size;
            
            this.Url = Url;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of PipelineRunartifacts.
        /// </summary>
        /// <returns>PipelineRunartifactsBuilder</returns>
        public static PipelineRunartifactsBuilder Builder()
        {
            return new PipelineRunartifactsBuilder();
        }

        /// <summary>
        /// Returns PipelineRunartifactsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineRunartifactsBuilder</returns>
        public PipelineRunartifactsBuilder With()
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

        public bool Equals(PipelineRunartifacts other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineRunartifacts.
        /// </summary>
        /// <param name="left">Compared (PipelineRunartifacts</param>
        /// <param name="right">Compared (PipelineRunartifacts</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineRunartifacts left, PipelineRunartifacts right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineRunartifacts.
        /// </summary>
        /// <param name="left">Compared (PipelineRunartifacts</param>
        /// <param name="right">Compared (PipelineRunartifacts</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineRunartifacts left, PipelineRunartifacts right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineRunartifacts.
        /// </summary>
        public sealed class PipelineRunartifactsBuilder
        {
            private string _Name;
            private int? _Size;
            private string _Url;
            private string _Class;

            internal PipelineRunartifactsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineRunartifacts.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public PipelineRunartifactsBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunartifacts.Size property.
            /// </summary>
            /// <param name="value">Size</param>
            public PipelineRunartifactsBuilder Size(int? value)
            {
                _Size = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunartifacts.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public PipelineRunartifactsBuilder Url(string value)
            {
                _Url = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineRunartifacts.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineRunartifactsBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineRunartifacts.
            /// </summary>
            /// <returns>PipelineRunartifacts</returns>
            public PipelineRunartifacts Build()
            {
                Validate();
                return new PipelineRunartifacts(
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