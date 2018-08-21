using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// FreeStyleProjectactions
    /// </summary>
    public sealed class FreeStyleProjectactions:  IEquatable<FreeStyleProjectactions>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use FreeStyleProjectactions.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public FreeStyleProjectactions()
        {
        }

        private FreeStyleProjectactions(string Class)
        {
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of FreeStyleProjectactions.
        /// </summary>
        /// <returns>FreeStyleProjectactionsBuilder</returns>
        public static FreeStyleProjectactionsBuilder Builder()
        {
            return new FreeStyleProjectactionsBuilder();
        }

        /// <summary>
        /// Returns FreeStyleProjectactionsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>FreeStyleProjectactionsBuilder</returns>
        public FreeStyleProjectactionsBuilder With()
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

        public bool Equals(FreeStyleProjectactions other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (FreeStyleProjectactions.
        /// </summary>
        /// <param name="left">Compared (FreeStyleProjectactions</param>
        /// <param name="right">Compared (FreeStyleProjectactions</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (FreeStyleProjectactions left, FreeStyleProjectactions right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (FreeStyleProjectactions.
        /// </summary>
        /// <param name="left">Compared (FreeStyleProjectactions</param>
        /// <param name="right">Compared (FreeStyleProjectactions</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (FreeStyleProjectactions left, FreeStyleProjectactions right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of FreeStyleProjectactions.
        /// </summary>
        public sealed class FreeStyleProjectactionsBuilder
        {
            private string _Class;

            internal FreeStyleProjectactionsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for FreeStyleProjectactions.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public FreeStyleProjectactionsBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of FreeStyleProjectactions.
            /// </summary>
            /// <returns>FreeStyleProjectactions</returns>
            public FreeStyleProjectactions Build()
            {
                Validate();
                return new FreeStyleProjectactions(
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}