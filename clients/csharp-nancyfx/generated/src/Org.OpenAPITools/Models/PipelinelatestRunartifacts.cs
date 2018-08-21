using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// PipelinelatestRunartifacts
    /// </summary>
    public sealed class PipelinelatestRunartifacts:  IEquatable<PipelinelatestRunartifacts>
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
        /// Use PipelinelatestRunartifacts.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelinelatestRunartifacts()
        {
        }

        private PipelinelatestRunartifacts(string Name, int? Size, string Url, string Class)
        {
            
            this.Name = Name;
            
            this.Size = Size;
            
            this.Url = Url;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of PipelinelatestRunartifacts.
        /// </summary>
        /// <returns>PipelinelatestRunartifactsBuilder</returns>
        public static PipelinelatestRunartifactsBuilder Builder()
        {
            return new PipelinelatestRunartifactsBuilder();
        }

        /// <summary>
        /// Returns PipelinelatestRunartifactsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelinelatestRunartifactsBuilder</returns>
        public PipelinelatestRunartifactsBuilder With()
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

        public bool Equals(PipelinelatestRunartifacts other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelinelatestRunartifacts.
        /// </summary>
        /// <param name="left">Compared (PipelinelatestRunartifacts</param>
        /// <param name="right">Compared (PipelinelatestRunartifacts</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelinelatestRunartifacts left, PipelinelatestRunartifacts right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelinelatestRunartifacts.
        /// </summary>
        /// <param name="left">Compared (PipelinelatestRunartifacts</param>
        /// <param name="right">Compared (PipelinelatestRunartifacts</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelinelatestRunartifacts left, PipelinelatestRunartifacts right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelinelatestRunartifacts.
        /// </summary>
        public sealed class PipelinelatestRunartifactsBuilder
        {
            private string _Name;
            private int? _Size;
            private string _Url;
            private string _Class;

            internal PipelinelatestRunartifactsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelinelatestRunartifacts.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public PipelinelatestRunartifactsBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelinelatestRunartifacts.Size property.
            /// </summary>
            /// <param name="value">Size</param>
            public PipelinelatestRunartifactsBuilder Size(int? value)
            {
                _Size = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelinelatestRunartifacts.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public PipelinelatestRunartifactsBuilder Url(string value)
            {
                _Url = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelinelatestRunartifacts.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelinelatestRunartifactsBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelinelatestRunartifacts.
            /// </summary>
            /// <returns>PipelinelatestRunartifacts</returns>
            public PipelinelatestRunartifacts Build()
            {
                Validate();
                return new PipelinelatestRunartifacts(
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