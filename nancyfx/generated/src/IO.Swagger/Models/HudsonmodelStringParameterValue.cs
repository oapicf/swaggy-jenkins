using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelStringParameterValue
    /// </summary>
    public sealed class HudsonmodelStringParameterValue:  IEquatable<HudsonmodelStringParameterValue>
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
        /// Use HudsonmodelStringParameterValue.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelStringParameterValue()
        {
        }

        private HudsonmodelStringParameterValue(string Class, string Name, string Value)
        {
            
            this.Class = Class;
            
            this.Name = Name;
            
            this.Value = Value;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelStringParameterValue.
        /// </summary>
        /// <returns>HudsonmodelStringParameterValueBuilder</returns>
        public static HudsonmodelStringParameterValueBuilder Builder()
        {
            return new HudsonmodelStringParameterValueBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelStringParameterValueBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelStringParameterValueBuilder</returns>
        public HudsonmodelStringParameterValueBuilder With()
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

        public bool Equals(HudsonmodelStringParameterValue other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelStringParameterValue.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelStringParameterValue</param>
        /// <param name="right">Compared (HudsonmodelStringParameterValue</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelStringParameterValue left, HudsonmodelStringParameterValue right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelStringParameterValue.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelStringParameterValue</param>
        /// <param name="right">Compared (HudsonmodelStringParameterValue</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelStringParameterValue left, HudsonmodelStringParameterValue right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelStringParameterValue.
        /// </summary>
        public sealed class HudsonmodelStringParameterValueBuilder
        {
            private string _Class;
            private string _Name;
            private string _Value;

            internal HudsonmodelStringParameterValueBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelStringParameterValue.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelStringParameterValueBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelStringParameterValue.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public HudsonmodelStringParameterValueBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelStringParameterValue.Value property.
            /// </summary>
            /// <param name="value">Value</param>
            public HudsonmodelStringParameterValueBuilder Value(string value)
            {
                _Value = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelStringParameterValue.
            /// </summary>
            /// <returns>HudsonmodelStringParameterValue</returns>
            public HudsonmodelStringParameterValue Build()
            {
                Validate();
                return new HudsonmodelStringParameterValue(
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
