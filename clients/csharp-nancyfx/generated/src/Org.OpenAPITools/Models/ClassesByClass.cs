using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// ClassesByClass
    /// </summary>
    public sealed class ClassesByClass:  IEquatable<ClassesByClass>
    { 
        /// <summary>
        /// Classes
        /// </summary>
        public List<string> Classes { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ClassesByClass.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ClassesByClass()
        {
        }

        private ClassesByClass(List<string> Classes, string Class)
        {
            
            this.Classes = Classes;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of ClassesByClass.
        /// </summary>
        /// <returns>ClassesByClassBuilder</returns>
        public static ClassesByClassBuilder Builder()
        {
            return new ClassesByClassBuilder();
        }

        /// <summary>
        /// Returns ClassesByClassBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ClassesByClassBuilder</returns>
        public ClassesByClassBuilder With()
        {
            return Builder()
                .Classes(Classes)
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

        public bool Equals(ClassesByClass other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ClassesByClass.
        /// </summary>
        /// <param name="left">Compared (ClassesByClass</param>
        /// <param name="right">Compared (ClassesByClass</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ClassesByClass left, ClassesByClass right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ClassesByClass.
        /// </summary>
        /// <param name="left">Compared (ClassesByClass</param>
        /// <param name="right">Compared (ClassesByClass</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ClassesByClass left, ClassesByClass right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ClassesByClass.
        /// </summary>
        public sealed class ClassesByClassBuilder
        {
            private List<string> _Classes;
            private string _Class;

            internal ClassesByClassBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ClassesByClass.Classes property.
            /// </summary>
            /// <param name="value">Classes</param>
            public ClassesByClassBuilder Classes(List<string> value)
            {
                _Classes = value;
                return this;
            }

            /// <summary>
            /// Sets value for ClassesByClass.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public ClassesByClassBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ClassesByClass.
            /// </summary>
            /// <returns>ClassesByClass</returns>
            public ClassesByClass Build()
            {
                Validate();
                return new ClassesByClass(
                    Classes: _Classes,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}