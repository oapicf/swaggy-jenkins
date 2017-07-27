using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GetClassesByClass
    /// </summary>
    public sealed class GetClassesByClass:  IEquatable<GetClassesByClass>
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
        /// Use GetClassesByClass.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GetClassesByClass()
        {
        }

        private GetClassesByClass(List<string> Classes, string Class)
        {
            
            this.Classes = Classes;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of GetClassesByClass.
        /// </summary>
        /// <returns>GetClassesByClassBuilder</returns>
        public static GetClassesByClassBuilder Builder()
        {
            return new GetClassesByClassBuilder();
        }

        /// <summary>
        /// Returns GetClassesByClassBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GetClassesByClassBuilder</returns>
        public GetClassesByClassBuilder With()
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

        public bool Equals(GetClassesByClass other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GetClassesByClass.
        /// </summary>
        /// <param name="left">Compared (GetClassesByClass</param>
        /// <param name="right">Compared (GetClassesByClass</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GetClassesByClass left, GetClassesByClass right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GetClassesByClass.
        /// </summary>
        /// <param name="left">Compared (GetClassesByClass</param>
        /// <param name="right">Compared (GetClassesByClass</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GetClassesByClass left, GetClassesByClass right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GetClassesByClass.
        /// </summary>
        public sealed class GetClassesByClassBuilder
        {
            private List<string> _Classes;
            private string _Class;

            internal GetClassesByClassBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GetClassesByClass.Classes property.
            /// </summary>
            /// <param name="value">Classes</param>
            public GetClassesByClassBuilder Classes(List<string> value)
            {
                _Classes = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetClassesByClass.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GetClassesByClassBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GetClassesByClass.
            /// </summary>
            /// <returns>GetClassesByClass</returns>
            public GetClassesByClass Build()
            {
                Validate();
                return new GetClassesByClass(
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
