using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// GenericResource
    /// </summary>
    public sealed class GenericResource:  IEquatable<GenericResource>
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
        /// DurationInMillis
        /// </summary>
        public int? DurationInMillis { get; private set; }

        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// Result
        /// </summary>
        public string Result { get; private set; }

        /// <summary>
        /// StartTime
        /// </summary>
        public string StartTime { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use GenericResource.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GenericResource()
        {
        }

        private GenericResource(string Class, string DisplayName, int? DurationInMillis, string Id, string Result, string StartTime)
        {
            
            this.Class = Class;
            
            this.DisplayName = DisplayName;
            
            this.DurationInMillis = DurationInMillis;
            
            this.Id = Id;
            
            this.Result = Result;
            
            this.StartTime = StartTime;
            
        }

        /// <summary>
        /// Returns builder of GenericResource.
        /// </summary>
        /// <returns>GenericResourceBuilder</returns>
        public static GenericResourceBuilder Builder()
        {
            return new GenericResourceBuilder();
        }

        /// <summary>
        /// Returns GenericResourceBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GenericResourceBuilder</returns>
        public GenericResourceBuilder With()
        {
            return Builder()
                .Class(Class)
                .DisplayName(DisplayName)
                .DurationInMillis(DurationInMillis)
                .Id(Id)
                .Result(Result)
                .StartTime(StartTime);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(GenericResource other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GenericResource.
        /// </summary>
        /// <param name="left">Compared (GenericResource</param>
        /// <param name="right">Compared (GenericResource</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GenericResource left, GenericResource right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GenericResource.
        /// </summary>
        /// <param name="left">Compared (GenericResource</param>
        /// <param name="right">Compared (GenericResource</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GenericResource left, GenericResource right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GenericResource.
        /// </summary>
        public sealed class GenericResourceBuilder
        {
            private string _Class;
            private string _DisplayName;
            private int? _DurationInMillis;
            private string _Id;
            private string _Result;
            private string _StartTime;

            internal GenericResourceBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GenericResource.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GenericResourceBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for GenericResource.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public GenericResourceBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for GenericResource.DurationInMillis property.
            /// </summary>
            /// <param name="value">DurationInMillis</param>
            public GenericResourceBuilder DurationInMillis(int? value)
            {
                _DurationInMillis = value;
                return this;
            }

            /// <summary>
            /// Sets value for GenericResource.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public GenericResourceBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for GenericResource.Result property.
            /// </summary>
            /// <param name="value">Result</param>
            public GenericResourceBuilder Result(string value)
            {
                _Result = value;
                return this;
            }

            /// <summary>
            /// Sets value for GenericResource.StartTime property.
            /// </summary>
            /// <param name="value">StartTime</param>
            public GenericResourceBuilder StartTime(string value)
            {
                _StartTime = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GenericResource.
            /// </summary>
            /// <returns>GenericResource</returns>
            public GenericResource Build()
            {
                Validate();
                return new GenericResource(
                    Class: _Class,
                    DisplayName: _DisplayName,
                    DurationInMillis: _DurationInMillis,
                    Id: _Id,
                    Result: _Result,
                    StartTime: _StartTime
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}