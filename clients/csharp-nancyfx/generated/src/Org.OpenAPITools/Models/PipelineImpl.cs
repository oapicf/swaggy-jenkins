using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// PipelineImpl
    /// </summary>
    public sealed class PipelineImpl:  IEquatable<PipelineImpl>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// DisplayName
        /// </summary>
        public string DisplayName { get; private set; }

        /// <summary>
        /// EstimatedDurationInMillis
        /// </summary>
        public int? EstimatedDurationInMillis { get; private set; }

        /// <summary>
        /// FullName
        /// </summary>
        public string FullName { get; private set; }

        /// <summary>
        /// LatestRun
        /// </summary>
        public string LatestRun { get; private set; }

        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }

        /// <summary>
        /// Organization
        /// </summary>
        public string Organization { get; private set; }

        /// <summary>
        /// WeatherScore
        /// </summary>
        public int? WeatherScore { get; private set; }

        /// <summary>
        /// Links
        /// </summary>
        public PipelineImpllinks Links { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineImpl.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineImpl()
        {
        }

        private PipelineImpl(string Class, string DisplayName, int? EstimatedDurationInMillis, string FullName, string LatestRun, string Name, string Organization, int? WeatherScore, PipelineImpllinks Links)
        {
            
            this.Class = Class;
            
            this.DisplayName = DisplayName;
            
            this.EstimatedDurationInMillis = EstimatedDurationInMillis;
            
            this.FullName = FullName;
            
            this.LatestRun = LatestRun;
            
            this.Name = Name;
            
            this.Organization = Organization;
            
            this.WeatherScore = WeatherScore;
            
            this.Links = Links;
            
        }

        /// <summary>
        /// Returns builder of PipelineImpl.
        /// </summary>
        /// <returns>PipelineImplBuilder</returns>
        public static PipelineImplBuilder Builder()
        {
            return new PipelineImplBuilder();
        }

        /// <summary>
        /// Returns PipelineImplBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineImplBuilder</returns>
        public PipelineImplBuilder With()
        {
            return Builder()
                .Class(Class)
                .DisplayName(DisplayName)
                .EstimatedDurationInMillis(EstimatedDurationInMillis)
                .FullName(FullName)
                .LatestRun(LatestRun)
                .Name(Name)
                .Organization(Organization)
                .WeatherScore(WeatherScore)
                .Links(Links);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(PipelineImpl other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineImpl.
        /// </summary>
        /// <param name="left">Compared (PipelineImpl</param>
        /// <param name="right">Compared (PipelineImpl</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineImpl left, PipelineImpl right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineImpl.
        /// </summary>
        /// <param name="left">Compared (PipelineImpl</param>
        /// <param name="right">Compared (PipelineImpl</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineImpl left, PipelineImpl right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineImpl.
        /// </summary>
        public sealed class PipelineImplBuilder
        {
            private string _Class;
            private string _DisplayName;
            private int? _EstimatedDurationInMillis;
            private string _FullName;
            private string _LatestRun;
            private string _Name;
            private string _Organization;
            private int? _WeatherScore;
            private PipelineImpllinks _Links;

            internal PipelineImplBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineImpl.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineImplBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineImpl.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public PipelineImplBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineImpl.EstimatedDurationInMillis property.
            /// </summary>
            /// <param name="value">EstimatedDurationInMillis</param>
            public PipelineImplBuilder EstimatedDurationInMillis(int? value)
            {
                _EstimatedDurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineImpl.FullName property.
            /// </summary>
            /// <param name="value">FullName</param>
            public PipelineImplBuilder FullName(string value)
            {
                _FullName = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineImpl.LatestRun property.
            /// </summary>
            /// <param name="value">LatestRun</param>
            public PipelineImplBuilder LatestRun(string value)
            {
                _LatestRun = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineImpl.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public PipelineImplBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineImpl.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public PipelineImplBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineImpl.WeatherScore property.
            /// </summary>
            /// <param name="value">WeatherScore</param>
            public PipelineImplBuilder WeatherScore(int? value)
            {
                _WeatherScore = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineImpl.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public PipelineImplBuilder Links(PipelineImpllinks value)
            {
                _Links = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineImpl.
            /// </summary>
            /// <returns>PipelineImpl</returns>
            public PipelineImpl Build()
            {
                Validate();
                return new PipelineImpl(
                    Class: _Class,
                    DisplayName: _DisplayName,
                    EstimatedDurationInMillis: _EstimatedDurationInMillis,
                    FullName: _FullName,
                    LatestRun: _LatestRun,
                    Name: _Name,
                    Organization: _Organization,
                    WeatherScore: _WeatherScore,
                    Links: _Links
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}