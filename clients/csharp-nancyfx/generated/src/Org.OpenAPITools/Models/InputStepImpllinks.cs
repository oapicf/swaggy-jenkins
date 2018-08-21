using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// InputStepImpllinks
    /// </summary>
    public sealed class InputStepImpllinks:  IEquatable<InputStepImpllinks>
    { 
        /// <summary>
        /// Self
        /// </summary>
        public Link Self { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use InputStepImpllinks.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public InputStepImpllinks()
        {
        }

        private InputStepImpllinks(Link Self, string Class)
        {
            
            this.Self = Self;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of InputStepImpllinks.
        /// </summary>
        /// <returns>InputStepImpllinksBuilder</returns>
        public static InputStepImpllinksBuilder Builder()
        {
            return new InputStepImpllinksBuilder();
        }

        /// <summary>
        /// Returns InputStepImpllinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>InputStepImpllinksBuilder</returns>
        public InputStepImpllinksBuilder With()
        {
            return Builder()
                .Self(Self)
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

        public bool Equals(InputStepImpllinks other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (InputStepImpllinks.
        /// </summary>
        /// <param name="left">Compared (InputStepImpllinks</param>
        /// <param name="right">Compared (InputStepImpllinks</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (InputStepImpllinks left, InputStepImpllinks right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (InputStepImpllinks.
        /// </summary>
        /// <param name="left">Compared (InputStepImpllinks</param>
        /// <param name="right">Compared (InputStepImpllinks</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (InputStepImpllinks left, InputStepImpllinks right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of InputStepImpllinks.
        /// </summary>
        public sealed class InputStepImpllinksBuilder
        {
            private Link _Self;
            private string _Class;

            internal InputStepImpllinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for InputStepImpllinks.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public InputStepImpllinksBuilder Self(Link value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for InputStepImpllinks.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public InputStepImpllinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of InputStepImpllinks.
            /// </summary>
            /// <returns>InputStepImpllinks</returns>
            public InputStepImpllinks Build()
            {
                Validate();
                return new InputStepImpllinks(
                    Self: _Self,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}