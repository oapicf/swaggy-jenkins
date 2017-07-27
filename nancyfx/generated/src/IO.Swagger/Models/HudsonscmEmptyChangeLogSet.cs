using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonscmEmptyChangeLogSet
    /// </summary>
    public sealed class HudsonscmEmptyChangeLogSet:  IEquatable<HudsonscmEmptyChangeLogSet>
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
        /// Use HudsonscmEmptyChangeLogSet.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonscmEmptyChangeLogSet()
        {
        }

        private HudsonscmEmptyChangeLogSet(string Class, string Kind)
        {
            
            this.Class = Class;
            
            this.Kind = Kind;
            
        }

        /// <summary>
        /// Returns builder of HudsonscmEmptyChangeLogSet.
        /// </summary>
        /// <returns>HudsonscmEmptyChangeLogSetBuilder</returns>
        public static HudsonscmEmptyChangeLogSetBuilder Builder()
        {
            return new HudsonscmEmptyChangeLogSetBuilder();
        }

        /// <summary>
        /// Returns HudsonscmEmptyChangeLogSetBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonscmEmptyChangeLogSetBuilder</returns>
        public HudsonscmEmptyChangeLogSetBuilder With()
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

        public bool Equals(HudsonscmEmptyChangeLogSet other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonscmEmptyChangeLogSet.
        /// </summary>
        /// <param name="left">Compared (HudsonscmEmptyChangeLogSet</param>
        /// <param name="right">Compared (HudsonscmEmptyChangeLogSet</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonscmEmptyChangeLogSet left, HudsonscmEmptyChangeLogSet right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonscmEmptyChangeLogSet.
        /// </summary>
        /// <param name="left">Compared (HudsonscmEmptyChangeLogSet</param>
        /// <param name="right">Compared (HudsonscmEmptyChangeLogSet</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonscmEmptyChangeLogSet left, HudsonscmEmptyChangeLogSet right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonscmEmptyChangeLogSet.
        /// </summary>
        public sealed class HudsonscmEmptyChangeLogSetBuilder
        {
            private string _Class;
            private string _Kind;

            internal HudsonscmEmptyChangeLogSetBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonscmEmptyChangeLogSet.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonscmEmptyChangeLogSetBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonscmEmptyChangeLogSet.Kind property.
            /// </summary>
            /// <param name="value">Kind</param>
            public HudsonscmEmptyChangeLogSetBuilder Kind(string value)
            {
                _Kind = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonscmEmptyChangeLogSet.
            /// </summary>
            /// <returns>HudsonscmEmptyChangeLogSet</returns>
            public HudsonscmEmptyChangeLogSet Build()
            {
                Validate();
                return new HudsonscmEmptyChangeLogSet(
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
