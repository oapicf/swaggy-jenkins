using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// StringParameterDefinition
    /// </summary>
    public sealed class StringParameterDefinition:  IEquatable<StringParameterDefinition>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// DefaultParameterValue
        /// </summary>
        public StringParameterValue DefaultParameterValue { get; private set; }

        /// <summary>
        /// Description
        /// </summary>
        public string Description { get; private set; }

        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }

        /// <summary>
        /// Type
        /// </summary>
        public string Type { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use StringParameterDefinition.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public StringParameterDefinition()
        {
        }

        private StringParameterDefinition(string Class, StringParameterValue DefaultParameterValue, string Description, string Name, string Type)
        {
            
            this.Class = Class;
            
            this.DefaultParameterValue = DefaultParameterValue;
            
            this.Description = Description;
            
            this.Name = Name;
            
            this.Type = Type;
            
        }

        /// <summary>
        /// Returns builder of StringParameterDefinition.
        /// </summary>
        /// <returns>StringParameterDefinitionBuilder</returns>
        public static StringParameterDefinitionBuilder Builder()
        {
            return new StringParameterDefinitionBuilder();
        }

        /// <summary>
        /// Returns StringParameterDefinitionBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>StringParameterDefinitionBuilder</returns>
        public StringParameterDefinitionBuilder With()
        {
            return Builder()
                .Class(Class)
                .DefaultParameterValue(DefaultParameterValue)
                .Description(Description)
                .Name(Name)
                .Type(Type);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(StringParameterDefinition other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (StringParameterDefinition.
        /// </summary>
        /// <param name="left">Compared (StringParameterDefinition</param>
        /// <param name="right">Compared (StringParameterDefinition</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (StringParameterDefinition left, StringParameterDefinition right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (StringParameterDefinition.
        /// </summary>
        /// <param name="left">Compared (StringParameterDefinition</param>
        /// <param name="right">Compared (StringParameterDefinition</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (StringParameterDefinition left, StringParameterDefinition right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of StringParameterDefinition.
        /// </summary>
        public sealed class StringParameterDefinitionBuilder
        {
            private string _Class;
            private StringParameterValue _DefaultParameterValue;
            private string _Description;
            private string _Name;
            private string _Type;

            internal StringParameterDefinitionBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for StringParameterDefinition.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public StringParameterDefinitionBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for StringParameterDefinition.DefaultParameterValue property.
            /// </summary>
            /// <param name="value">DefaultParameterValue</param>
            public StringParameterDefinitionBuilder DefaultParameterValue(StringParameterValue value)
            {
                _DefaultParameterValue = value;
                return this;
            }

            /// <summary>
            /// Sets value for StringParameterDefinition.Description property.
            /// </summary>
            /// <param name="value">Description</param>
            public StringParameterDefinitionBuilder Description(string value)
            {
                _Description = value;
                return this;
            }

            /// <summary>
            /// Sets value for StringParameterDefinition.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public StringParameterDefinitionBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for StringParameterDefinition.Type property.
            /// </summary>
            /// <param name="value">Type</param>
            public StringParameterDefinitionBuilder Type(string value)
            {
                _Type = value;
                return this;
            }


            /// <summary>
            /// Builds instance of StringParameterDefinition.
            /// </summary>
            /// <returns>StringParameterDefinition</returns>
            public StringParameterDefinition Build()
            {
                Validate();
                return new StringParameterDefinition(
                    Class: _Class,
                    DefaultParameterValue: _DefaultParameterValue,
                    Description: _Description,
                    Name: _Name,
                    Type: _Type
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}