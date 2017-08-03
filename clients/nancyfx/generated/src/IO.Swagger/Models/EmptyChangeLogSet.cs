using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// EmptyChangeLogSet
    /// </summary>
    public sealed class EmptyChangeLogSet:  IEquatable<EmptyChangeLogSet>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Kind
        /// </summary>
        public string Kind { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use EmptyChangeLogSet.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public EmptyChangeLogSet()
        {
        }

        private EmptyChangeLogSet(string Class, string Kind)
        {
            
            this.Class = Class;
            
            this.Kind = Kind;
            
        }

        /// <summary>
        /// Returns builder of EmptyChangeLogSet.
        /// </summary>
        /// <returns>EmptyChangeLogSetBuilder</returns>
        public static EmptyChangeLogSetBuilder Builder()
        {
            return new EmptyChangeLogSetBuilder();
        }

        /// <summary>
        /// Returns EmptyChangeLogSetBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>EmptyChangeLogSetBuilder</returns>
        public EmptyChangeLogSetBuilder With()
        {
            return Builder()
                .Class(Class)
                .Kind(Kind);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(EmptyChangeLogSet other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (EmptyChangeLogSet.
        /// </summary>
        /// <param name="left">Compared (EmptyChangeLogSet</param>
        /// <param name="right">Compared (EmptyChangeLogSet</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (EmptyChangeLogSet left, EmptyChangeLogSet right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (EmptyChangeLogSet.
        /// </summary>
        /// <param name="left">Compared (EmptyChangeLogSet</param>
        /// <param name="right">Compared (EmptyChangeLogSet</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (EmptyChangeLogSet left, EmptyChangeLogSet right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of EmptyChangeLogSet.
        /// </summary>
        public sealed class EmptyChangeLogSetBuilder
        {
            private string _Class;
            private string _Kind;

            internal EmptyChangeLogSetBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for EmptyChangeLogSet.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public EmptyChangeLogSetBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for EmptyChangeLogSet.Kind property.
            /// </summary>
            /// <param name="value">Kind</param>
            public EmptyChangeLogSetBuilder Kind(string value)
            {
                _Kind = value;
                return this;
            }


            /// <summary>
            /// Builds instance of EmptyChangeLogSet.
            /// </summary>
            /// <returns>EmptyChangeLogSet</returns>
            public EmptyChangeLogSet Build()
            {
                Validate();
                return new EmptyChangeLogSet(
                    Class: _Class,
                    Kind: _Kind
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}