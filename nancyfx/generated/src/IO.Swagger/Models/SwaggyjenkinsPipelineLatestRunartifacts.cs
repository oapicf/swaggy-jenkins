using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// SwaggyjenkinsPipelineLatestRunartifacts
    /// </summary>
    public sealed class SwaggyjenkinsPipelineLatestRunartifacts:  IEquatable<SwaggyjenkinsPipelineLatestRunartifacts>
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
        /// Use SwaggyjenkinsPipelineLatestRunartifacts.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public SwaggyjenkinsPipelineLatestRunartifacts()
        {
        }

        private SwaggyjenkinsPipelineLatestRunartifacts(string Name, int? Size, string Url, string Class)
        {
            
            this.Name = Name;
            
            this.Size = Size;
            
            this.Url = Url;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of SwaggyjenkinsPipelineLatestRunartifacts.
        /// </summary>
        /// <returns>SwaggyjenkinsPipelineLatestRunartifactsBuilder</returns>
        public static SwaggyjenkinsPipelineLatestRunartifactsBuilder Builder()
        {
            return new SwaggyjenkinsPipelineLatestRunartifactsBuilder();
        }

        /// <summary>
        /// Returns SwaggyjenkinsPipelineLatestRunartifactsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>SwaggyjenkinsPipelineLatestRunartifactsBuilder</returns>
        public SwaggyjenkinsPipelineLatestRunartifactsBuilder With()
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

        public bool Equals(SwaggyjenkinsPipelineLatestRunartifacts other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (SwaggyjenkinsPipelineLatestRunartifacts.
        /// </summary>
        /// <param name="left">Compared (SwaggyjenkinsPipelineLatestRunartifacts</param>
        /// <param name="right">Compared (SwaggyjenkinsPipelineLatestRunartifacts</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (SwaggyjenkinsPipelineLatestRunartifacts left, SwaggyjenkinsPipelineLatestRunartifacts right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (SwaggyjenkinsPipelineLatestRunartifacts.
        /// </summary>
        /// <param name="left">Compared (SwaggyjenkinsPipelineLatestRunartifacts</param>
        /// <param name="right">Compared (SwaggyjenkinsPipelineLatestRunartifacts</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (SwaggyjenkinsPipelineLatestRunartifacts left, SwaggyjenkinsPipelineLatestRunartifacts right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of SwaggyjenkinsPipelineLatestRunartifacts.
        /// </summary>
        public sealed class SwaggyjenkinsPipelineLatestRunartifactsBuilder
        {
            private string _Name;
            private int? _Size;
            private string _Url;
            private string _Class;

            internal SwaggyjenkinsPipelineLatestRunartifactsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRunartifacts.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public SwaggyjenkinsPipelineLatestRunartifactsBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRunartifacts.Size property.
            /// </summary>
            /// <param name="value">Size</param>
            public SwaggyjenkinsPipelineLatestRunartifactsBuilder Size(int? value)
            {
                _Size = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRunartifacts.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public SwaggyjenkinsPipelineLatestRunartifactsBuilder Url(string value)
            {
                _Url = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipelineLatestRunartifacts.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public SwaggyjenkinsPipelineLatestRunartifactsBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of SwaggyjenkinsPipelineLatestRunartifacts.
            /// </summary>
            /// <returns>SwaggyjenkinsPipelineLatestRunartifacts</returns>
            public SwaggyjenkinsPipelineLatestRunartifacts Build()
            {
                Validate();
                return new SwaggyjenkinsPipelineLatestRunartifacts(
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
