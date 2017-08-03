using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// Label1
    /// </summary>
    public sealed class Label1:  IEquatable<Label1>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use Label1.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public Label1()
        {
        }

        private Label1(string Class)
        {
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of Label1.
        /// </summary>
        /// <returns>Label1Builder</returns>
        public static Label1Builder Builder()
        {
            return new Label1Builder();
        }

        /// <summary>
        /// Returns Label1Builder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>Label1Builder</returns>
        public Label1Builder With()
        {
            return Builder()
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

        public bool Equals(Label1 other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (Label1.
        /// </summary>
        /// <param name="left">Compared (Label1</param>
        /// <param name="right">Compared (Label1</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (Label1 left, Label1 right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (Label1.
        /// </summary>
        /// <param name="left">Compared (Label1</param>
        /// <param name="right">Compared (Label1</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (Label1 left, Label1 right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of Label1.
        /// </summary>
        public sealed class Label1Builder
        {
            private string _Class;

            internal Label1Builder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for Label1.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public Label1Builder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of Label1.
            /// </summary>
            /// <returns>Label1</returns>
            public Label1 Build()
            {
                Validate();
                return new Label1(
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}