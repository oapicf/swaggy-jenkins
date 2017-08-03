using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// ExtensionClassImpl
    /// </summary>
    public sealed class ExtensionClassImpl:  IEquatable<ExtensionClassImpl>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Links
        /// </summary>
        public ExtensionClassImpllinks Links { get; private set; }

        /// <summary>
        /// Classes
        /// </summary>
        public List<string> Classes { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ExtensionClassImpl.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ExtensionClassImpl()
        {
        }

        private ExtensionClassImpl(string Class, ExtensionClassImpllinks Links, List<string> Classes)
        {
            
            this.Class = Class;
            
            this.Links = Links;
            
            this.Classes = Classes;
            
        }

        /// <summary>
        /// Returns builder of ExtensionClassImpl.
        /// </summary>
        /// <returns>ExtensionClassImplBuilder</returns>
        public static ExtensionClassImplBuilder Builder()
        {
            return new ExtensionClassImplBuilder();
        }

        /// <summary>
        /// Returns ExtensionClassImplBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ExtensionClassImplBuilder</returns>
        public ExtensionClassImplBuilder With()
        {
            return Builder()
                .Class(Class)
                .Links(Links)
                .Classes(Classes);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ExtensionClassImpl other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ExtensionClassImpl.
        /// </summary>
        /// <param name="left">Compared (ExtensionClassImpl</param>
        /// <param name="right">Compared (ExtensionClassImpl</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ExtensionClassImpl left, ExtensionClassImpl right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ExtensionClassImpl.
        /// </summary>
        /// <param name="left">Compared (ExtensionClassImpl</param>
        /// <param name="right">Compared (ExtensionClassImpl</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ExtensionClassImpl left, ExtensionClassImpl right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ExtensionClassImpl.
        /// </summary>
        public sealed class ExtensionClassImplBuilder
        {
            private string _Class;
            private ExtensionClassImpllinks _Links;
            private List<string> _Classes;

            internal ExtensionClassImplBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ExtensionClassImpl.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public ExtensionClassImplBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for ExtensionClassImpl.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public ExtensionClassImplBuilder Links(ExtensionClassImpllinks value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for ExtensionClassImpl.Classes property.
            /// </summary>
            /// <param name="value">Classes</param>
            public ExtensionClassImplBuilder Classes(List<string> value)
            {
                _Classes = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ExtensionClassImpl.
            /// </summary>
            /// <returns>ExtensionClassImpl</returns>
            public ExtensionClassImpl Build()
            {
                Validate();
                return new ExtensionClassImpl(
                    Class: _Class,
                    Links: _Links,
                    Classes: _Classes
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}