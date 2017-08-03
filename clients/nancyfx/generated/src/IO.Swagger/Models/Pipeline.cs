using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// Pipeline
    /// </summary>
    public sealed class Pipeline:  IEquatable<Pipeline>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Organization
        /// </summary>
        public string Organization { get; private set; }

        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }

        /// <summary>
        /// DisplayName
        /// </summary>
        public string DisplayName { get; private set; }

        /// <summary>
        /// FullName
        /// </summary>
        public string FullName { get; private set; }

        /// <summary>
        /// WeatherScore
        /// </summary>
        public int? WeatherScore { get; private set; }

        /// <summary>
        /// EstimatedDurationInMillis
        /// </summary>
        public int? EstimatedDurationInMillis { get; private set; }

        /// <summary>
        /// LatestRun
        /// </summary>
        public PipelinelatestRun LatestRun { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use Pipeline.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public Pipeline()
        {
        }

        private Pipeline(string Class, string Organization, string Name, string DisplayName, string FullName, int? WeatherScore, int? EstimatedDurationInMillis, PipelinelatestRun LatestRun)
        {
            
            this.Class = Class;
            
            this.Organization = Organization;
            
            this.Name = Name;
            
            this.DisplayName = DisplayName;
            
            this.FullName = FullName;
            
            this.WeatherScore = WeatherScore;
            
            this.EstimatedDurationInMillis = EstimatedDurationInMillis;
            
            this.LatestRun = LatestRun;
            
        }

        /// <summary>
        /// Returns builder of Pipeline.
        /// </summary>
        /// <returns>PipelineBuilder</returns>
        public static PipelineBuilder Builder()
        {
            return new PipelineBuilder();
        }

        /// <summary>
        /// Returns PipelineBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineBuilder</returns>
        public PipelineBuilder With()
        {
            return Builder()
                .Class(Class)
                .Organization(Organization)
                .Name(Name)
                .DisplayName(DisplayName)
                .FullName(FullName)
                .WeatherScore(WeatherScore)
                .EstimatedDurationInMillis(EstimatedDurationInMillis)
                .LatestRun(LatestRun);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(Pipeline other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (Pipeline.
        /// </summary>
        /// <param name="left">Compared (Pipeline</param>
        /// <param name="right">Compared (Pipeline</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (Pipeline left, Pipeline right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (Pipeline.
        /// </summary>
        /// <param name="left">Compared (Pipeline</param>
        /// <param name="right">Compared (Pipeline</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (Pipeline left, Pipeline right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of Pipeline.
        /// </summary>
        public sealed class PipelineBuilder
        {
            private string _Class;
            private string _Organization;
            private string _Name;
            private string _DisplayName;
            private string _FullName;
            private int? _WeatherScore;
            private int? _EstimatedDurationInMillis;
            private PipelinelatestRun _LatestRun;

            internal PipelineBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for Pipeline.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for Pipeline.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public PipelineBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for Pipeline.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public PipelineBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for Pipeline.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public PipelineBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for Pipeline.FullName property.
            /// </summary>
            /// <param name="value">FullName</param>
            public PipelineBuilder FullName(string value)
            {
                _FullName = value;
                return this;
            }

            /// <summary>
            /// Sets value for Pipeline.WeatherScore property.
            /// </summary>
            /// <param name="value">WeatherScore</param>
            public PipelineBuilder WeatherScore(int? value)
            {
                _WeatherScore = value;
                return this;
            }

            /// <summary>
            /// Sets value for Pipeline.EstimatedDurationInMillis property.
            /// </summary>
            /// <param name="value">EstimatedDurationInMillis</param>
            public PipelineBuilder EstimatedDurationInMillis(int? value)
            {
                _EstimatedDurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for Pipeline.LatestRun property.
            /// </summary>
            /// <param name="value">LatestRun</param>
            public PipelineBuilder LatestRun(PipelinelatestRun value)
            {
                _LatestRun = value;
                return this;
            }


            /// <summary>
            /// Builds instance of Pipeline.
            /// </summary>
            /// <returns>Pipeline</returns>
            public Pipeline Build()
            {
                Validate();
                return new Pipeline(
                    Class: _Class,
                    Organization: _Organization,
                    Name: _Name,
                    DisplayName: _DisplayName,
                    FullName: _FullName,
                    WeatherScore: _WeatherScore,
                    EstimatedDurationInMillis: _EstimatedDurationInMillis,
                    LatestRun: _LatestRun
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}