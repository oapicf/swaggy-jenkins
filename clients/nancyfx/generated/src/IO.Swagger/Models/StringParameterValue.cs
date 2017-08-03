using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// StringParameterValue
    /// </summary>
    public sealed class StringParameterValue:  IEquatable<StringParameterValue>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }

        /// <summary>
        /// Value
        /// </summary>
        public string Value { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use StringParameterValue.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public StringParameterValue()
        {
        }

        private StringParameterValue(string Class, string Name, string Value)
        {
            
            this.Class = Class;
            
            this.Name = Name;
            
            this.Value = Value;
            
        }

        /// <summary>
        /// Returns builder of StringParameterValue.
        /// </summary>
        /// <returns>StringParameterValueBuilder</returns>
        public static StringParameterValueBuilder Builder()
        {
            return new StringParameterValueBuilder();
        }

        /// <summary>
        /// Returns StringParameterValueBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>StringParameterValueBuilder</returns>
        public StringParameterValueBuilder With()
        {
            return Builder()
                .Class(Class)
                .Name(Name)
                .Value(Value);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(StringParameterValue other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (StringParameterValue.
        /// </summary>
        /// <param name="left">Compared (StringParameterValue</param>
        /// <param name="right">Compared (StringParameterValue</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (StringParameterValue left, StringParameterValue right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (StringParameterValue.
        /// </summary>
        /// <param name="left">Compared (StringParameterValue</param>
        /// <param name="right">Compared (StringParameterValue</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (StringParameterValue left, StringParameterValue right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of StringParameterValue.
        /// </summary>
        public sealed class StringParameterValueBuilder
        {
            private string _Class;
            private string _Name;
            private string _Value;

            internal StringParameterValueBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for StringParameterValue.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public StringParameterValueBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for StringParameterValue.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public StringParameterValueBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for StringParameterValue.Value property.
            /// </summary>
            /// <param name="value">Value</param>
            public StringParameterValueBuilder Value(string value)
            {
                _Value = value;
                return this;
            }


            /// <summary>
            /// Builds instance of StringParameterValue.
            /// </summary>
            /// <returns>StringParameterValue</returns>
            public StringParameterValue Build()
            {
                Validate();
                return new StringParameterValue(
                    Class: _Class,
                    Name: _Name,
                    Value: _Value
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}