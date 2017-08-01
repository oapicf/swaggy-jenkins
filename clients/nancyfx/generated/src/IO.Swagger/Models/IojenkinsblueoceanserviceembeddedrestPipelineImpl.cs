using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// IojenkinsblueoceanserviceembeddedrestPipelineImpl
    /// </summary>
    public sealed class IojenkinsblueoceanserviceembeddedrestPipelineImpl:  IEquatable<IojenkinsblueoceanserviceembeddedrestPipelineImpl>
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
        /// Empty constructor required by some serializers.
        /// Use IojenkinsblueoceanserviceembeddedrestPipelineImpl.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public IojenkinsblueoceanserviceembeddedrestPipelineImpl()
        {
        }

        private IojenkinsblueoceanserviceembeddedrestPipelineImpl(string Class, string DisplayName, int? EstimatedDurationInMillis, string FullName, string LatestRun, string Name, string Organization, int? WeatherScore)
        {
            
            this.Class = Class;
            
            this.DisplayName = DisplayName;
            
            this.EstimatedDurationInMillis = EstimatedDurationInMillis;
            
            this.FullName = FullName;
            
            this.LatestRun = LatestRun;
            
            this.Name = Name;
            
            this.Organization = Organization;
            
            this.WeatherScore = WeatherScore;
            
        }

        /// <summary>
        /// Returns builder of IojenkinsblueoceanserviceembeddedrestPipelineImpl.
        /// </summary>
        /// <returns>IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder</returns>
        public static IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder Builder()
        {
            return new IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder();
        }

        /// <summary>
        /// Returns IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder</returns>
        public IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder With()
        {
            return Builder()
                .Class(Class)
                .DisplayName(DisplayName)
                .EstimatedDurationInMillis(EstimatedDurationInMillis)
                .FullName(FullName)
                .LatestRun(LatestRun)
                .Name(Name)
                .Organization(Organization)
                .WeatherScore(WeatherScore);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(IojenkinsblueoceanserviceembeddedrestPipelineImpl other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (IojenkinsblueoceanserviceembeddedrestPipelineImpl.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanserviceembeddedrestPipelineImpl</param>
        /// <param name="right">Compared (IojenkinsblueoceanserviceembeddedrestPipelineImpl</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (IojenkinsblueoceanserviceembeddedrestPipelineImpl left, IojenkinsblueoceanserviceembeddedrestPipelineImpl right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (IojenkinsblueoceanserviceembeddedrestPipelineImpl.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanserviceembeddedrestPipelineImpl</param>
        /// <param name="right">Compared (IojenkinsblueoceanserviceembeddedrestPipelineImpl</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (IojenkinsblueoceanserviceembeddedrestPipelineImpl left, IojenkinsblueoceanserviceembeddedrestPipelineImpl right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of IojenkinsblueoceanserviceembeddedrestPipelineImpl.
        /// </summary>
        public sealed class IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder
        {
            private string _Class;
            private string _DisplayName;
            private int? _EstimatedDurationInMillis;
            private string _FullName;
            private string _LatestRun;
            private string _Name;
            private string _Organization;
            private int? _WeatherScore;

            internal IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestPipelineImpl.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestPipelineImpl.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestPipelineImpl.EstimatedDurationInMillis property.
            /// </summary>
            /// <param name="value">EstimatedDurationInMillis</param>
            public IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder EstimatedDurationInMillis(int? value)
            {
                _EstimatedDurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestPipelineImpl.FullName property.
            /// </summary>
            /// <param name="value">FullName</param>
            public IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder FullName(string value)
            {
                _FullName = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestPipelineImpl.LatestRun property.
            /// </summary>
            /// <param name="value">LatestRun</param>
            public IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder LatestRun(string value)
            {
                _LatestRun = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestPipelineImpl.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestPipelineImpl.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestPipelineImpl.WeatherScore property.
            /// </summary>
            /// <param name="value">WeatherScore</param>
            public IojenkinsblueoceanserviceembeddedrestPipelineImplBuilder WeatherScore(int? value)
            {
                _WeatherScore = value;
                return this;
            }


            /// <summary>
            /// Builds instance of IojenkinsblueoceanserviceembeddedrestPipelineImpl.
            /// </summary>
            /// <returns>IojenkinsblueoceanserviceembeddedrestPipelineImpl</returns>
            public IojenkinsblueoceanserviceembeddedrestPipelineImpl Build()
            {
                Validate();
                return new IojenkinsblueoceanserviceembeddedrestPipelineImpl(
                    Class: _Class,
                    DisplayName: _DisplayName,
                    EstimatedDurationInMillis: _EstimatedDurationInMillis,
                    FullName: _FullName,
                    LatestRun: _LatestRun,
                    Name: _Name,
                    Organization: _Organization,
                    WeatherScore: _WeatherScore
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
