using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// IojenkinsblueoceanserviceembeddedrestExtensionClassImpl
    /// </summary>
    public sealed class IojenkinsblueoceanserviceembeddedrestExtensionClassImpl:  IEquatable<IojenkinsblueoceanserviceembeddedrestExtensionClassImpl>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Links
        /// </summary>
        public IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks Links { get; private set; }

        /// <summary>
        /// Classes
        /// </summary>
        public List<string> Classes { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use IojenkinsblueoceanserviceembeddedrestExtensionClassImpl.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public IojenkinsblueoceanserviceembeddedrestExtensionClassImpl()
        {
        }

        private IojenkinsblueoceanserviceembeddedrestExtensionClassImpl(string Class, IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks Links, List<string> Classes)
        {
            
            this.Class = Class;
            
            this.Links = Links;
            
            this.Classes = Classes;
            
        }

        /// <summary>
        /// Returns builder of IojenkinsblueoceanserviceembeddedrestExtensionClassImpl.
        /// </summary>
        /// <returns>IojenkinsblueoceanserviceembeddedrestExtensionClassImplBuilder</returns>
        public static IojenkinsblueoceanserviceembeddedrestExtensionClassImplBuilder Builder()
        {
            return new IojenkinsblueoceanserviceembeddedrestExtensionClassImplBuilder();
        }

        /// <summary>
        /// Returns IojenkinsblueoceanserviceembeddedrestExtensionClassImplBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>IojenkinsblueoceanserviceembeddedrestExtensionClassImplBuilder</returns>
        public IojenkinsblueoceanserviceembeddedrestExtensionClassImplBuilder With()
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

        public bool Equals(IojenkinsblueoceanserviceembeddedrestExtensionClassImpl other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (IojenkinsblueoceanserviceembeddedrestExtensionClassImpl.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassImpl</param>
        /// <param name="right">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassImpl</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (IojenkinsblueoceanserviceembeddedrestExtensionClassImpl left, IojenkinsblueoceanserviceembeddedrestExtensionClassImpl right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (IojenkinsblueoceanserviceembeddedrestExtensionClassImpl.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassImpl</param>
        /// <param name="right">Compared (IojenkinsblueoceanserviceembeddedrestExtensionClassImpl</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (IojenkinsblueoceanserviceembeddedrestExtensionClassImpl left, IojenkinsblueoceanserviceembeddedrestExtensionClassImpl right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of IojenkinsblueoceanserviceembeddedrestExtensionClassImpl.
        /// </summary>
        public sealed class IojenkinsblueoceanserviceembeddedrestExtensionClassImplBuilder
        {
            private string _Class;
            private IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks _Links;
            private List<string> _Classes;

            internal IojenkinsblueoceanserviceembeddedrestExtensionClassImplBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestExtensionClassImpl.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassImplBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestExtensionClassImpl.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassImplBuilder Links(IojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestExtensionClassImpl.Classes property.
            /// </summary>
            /// <param name="value">Classes</param>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassImplBuilder Classes(List<string> value)
            {
                _Classes = value;
                return this;
            }


            /// <summary>
            /// Builds instance of IojenkinsblueoceanserviceembeddedrestExtensionClassImpl.
            /// </summary>
            /// <returns>IojenkinsblueoceanserviceembeddedrestExtensionClassImpl</returns>
            public IojenkinsblueoceanserviceembeddedrestExtensionClassImpl Build()
            {
                Validate();
                return new IojenkinsblueoceanserviceembeddedrestExtensionClassImpl(
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
