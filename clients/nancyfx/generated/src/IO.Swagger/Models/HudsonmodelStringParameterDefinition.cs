using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelStringParameterDefinition
    /// </summary>
    public sealed class HudsonmodelStringParameterDefinition:  IEquatable<HudsonmodelStringParameterDefinition>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// DefaultParameterValue
        /// </summary>
        public HudsonmodelStringParameterValue DefaultParameterValue { get; private set; }

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
        /// Use HudsonmodelStringParameterDefinition.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelStringParameterDefinition()
        {
        }

        private HudsonmodelStringParameterDefinition(string Class, HudsonmodelStringParameterValue DefaultParameterValue, string Description, string Name, string Type)
        {
            
            this.Class = Class;
            
            this.DefaultParameterValue = DefaultParameterValue;
            
            this.Description = Description;
            
            this.Name = Name;
            
            this.Type = Type;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelStringParameterDefinition.
        /// </summary>
        /// <returns>HudsonmodelStringParameterDefinitionBuilder</returns>
        public static HudsonmodelStringParameterDefinitionBuilder Builder()
        {
            return new HudsonmodelStringParameterDefinitionBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelStringParameterDefinitionBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelStringParameterDefinitionBuilder</returns>
        public HudsonmodelStringParameterDefinitionBuilder With()
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

        public bool Equals(HudsonmodelStringParameterDefinition other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelStringParameterDefinition.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelStringParameterDefinition</param>
        /// <param name="right">Compared (HudsonmodelStringParameterDefinition</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelStringParameterDefinition left, HudsonmodelStringParameterDefinition right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelStringParameterDefinition.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelStringParameterDefinition</param>
        /// <param name="right">Compared (HudsonmodelStringParameterDefinition</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelStringParameterDefinition left, HudsonmodelStringParameterDefinition right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelStringParameterDefinition.
        /// </summary>
        public sealed class HudsonmodelStringParameterDefinitionBuilder
        {
            private string _Class;
            private HudsonmodelStringParameterValue _DefaultParameterValue;
            private string _Description;
            private string _Name;
            private string _Type;

            internal HudsonmodelStringParameterDefinitionBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelStringParameterDefinition.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelStringParameterDefinitionBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelStringParameterDefinition.DefaultParameterValue property.
            /// </summary>
            /// <param name="value">DefaultParameterValue</param>
            public HudsonmodelStringParameterDefinitionBuilder DefaultParameterValue(HudsonmodelStringParameterValue value)
            {
                _DefaultParameterValue = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelStringParameterDefinition.Description property.
            /// </summary>
            /// <param name="value">Description</param>
            public HudsonmodelStringParameterDefinitionBuilder Description(string value)
            {
                _Description = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelStringParameterDefinition.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public HudsonmodelStringParameterDefinitionBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelStringParameterDefinition.Type property.
            /// </summary>
            /// <param name="value">Type</param>
            public HudsonmodelStringParameterDefinitionBuilder Type(string value)
            {
                _Type = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelStringParameterDefinition.
            /// </summary>
            /// <returns>HudsonmodelStringParameterDefinition</returns>
            public HudsonmodelStringParameterDefinition Build()
            {
                Validate();
                return new HudsonmodelStringParameterDefinition(
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
