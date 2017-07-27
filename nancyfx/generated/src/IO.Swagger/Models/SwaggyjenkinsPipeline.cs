using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// SwaggyjenkinsPipeline
    /// </summary>
    public sealed class SwaggyjenkinsPipeline:  IEquatable<SwaggyjenkinsPipeline>
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
        public SwaggyjenkinsPipelineLatestRun LatestRun { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use SwaggyjenkinsPipeline.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public SwaggyjenkinsPipeline()
        {
        }

        private SwaggyjenkinsPipeline(string Class, string Organization, string Name, string DisplayName, string FullName, int? WeatherScore, int? EstimatedDurationInMillis, SwaggyjenkinsPipelineLatestRun LatestRun)
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
        /// Returns builder of SwaggyjenkinsPipeline.
        /// </summary>
        /// <returns>SwaggyjenkinsPipelineBuilder</returns>
        public static SwaggyjenkinsPipelineBuilder Builder()
        {
            return new SwaggyjenkinsPipelineBuilder();
        }

        /// <summary>
        /// Returns SwaggyjenkinsPipelineBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>SwaggyjenkinsPipelineBuilder</returns>
        public SwaggyjenkinsPipelineBuilder With()
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

        public bool Equals(SwaggyjenkinsPipeline other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (SwaggyjenkinsPipeline.
        /// </summary>
        /// <param name="left">Compared (SwaggyjenkinsPipeline</param>
        /// <param name="right">Compared (SwaggyjenkinsPipeline</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (SwaggyjenkinsPipeline left, SwaggyjenkinsPipeline right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (SwaggyjenkinsPipeline.
        /// </summary>
        /// <param name="left">Compared (SwaggyjenkinsPipeline</param>
        /// <param name="right">Compared (SwaggyjenkinsPipeline</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (SwaggyjenkinsPipeline left, SwaggyjenkinsPipeline right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of SwaggyjenkinsPipeline.
        /// </summary>
        public sealed class SwaggyjenkinsPipelineBuilder
        {
            private string _Class;
            private string _Organization;
            private string _Name;
            private string _DisplayName;
            private string _FullName;
            private int? _WeatherScore;
            private int? _EstimatedDurationInMillis;
            private SwaggyjenkinsPipelineLatestRun _LatestRun;

            internal SwaggyjenkinsPipelineBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipeline.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public SwaggyjenkinsPipelineBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipeline.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public SwaggyjenkinsPipelineBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipeline.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public SwaggyjenkinsPipelineBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipeline.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public SwaggyjenkinsPipelineBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipeline.FullName property.
            /// </summary>
            /// <param name="value">FullName</param>
            public SwaggyjenkinsPipelineBuilder FullName(string value)
            {
                _FullName = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipeline.WeatherScore property.
            /// </summary>
            /// <param name="value">WeatherScore</param>
            public SwaggyjenkinsPipelineBuilder WeatherScore(int? value)
            {
                _WeatherScore = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipeline.EstimatedDurationInMillis property.
            /// </summary>
            /// <param name="value">EstimatedDurationInMillis</param>
            public SwaggyjenkinsPipelineBuilder EstimatedDurationInMillis(int? value)
            {
                _EstimatedDurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsPipeline.LatestRun property.
            /// </summary>
            /// <param name="value">LatestRun</param>
            public SwaggyjenkinsPipelineBuilder LatestRun(SwaggyjenkinsPipelineLatestRun value)
            {
                _LatestRun = value;
                return this;
            }


            /// <summary>
            /// Builds instance of SwaggyjenkinsPipeline.
            /// </summary>
            /// <returns>SwaggyjenkinsPipeline</returns>
            public SwaggyjenkinsPipeline Build()
            {
                Validate();
                return new SwaggyjenkinsPipeline(
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
