using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// AllView
    /// </summary>
    public sealed class AllView:  IEquatable<AllView>
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
        /// Url
        /// </summary>
        public string Url { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use AllView.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public AllView()
        {
        }

        private AllView(string Class, string Name, string Url)
        {
            
            this.Class = Class;
            
            this.Name = Name;
            
            this.Url = Url;
            
        }

        /// <summary>
        /// Returns builder of AllView.
        /// </summary>
        /// <returns>AllViewBuilder</returns>
        public static AllViewBuilder Builder()
        {
            return new AllViewBuilder();
        }

        /// <summary>
        /// Returns AllViewBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>AllViewBuilder</returns>
        public AllViewBuilder With()
        {
            return Builder()
                .Class(Class)
                .Name(Name)
                .Url(Url);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(AllView other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (AllView.
        /// </summary>
        /// <param name="left">Compared (AllView</param>
        /// <param name="right">Compared (AllView</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (AllView left, AllView right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (AllView.
        /// </summary>
        /// <param name="left">Compared (AllView</param>
        /// <param name="right">Compared (AllView</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (AllView left, AllView right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of AllView.
        /// </summary>
        public sealed class AllViewBuilder
        {
            private string _Class;
            private string _Name;
            private string _Url;

            internal AllViewBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for AllView.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public AllViewBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for AllView.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public AllViewBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for AllView.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public AllViewBuilder Url(string value)
            {
                _Url = value;
                return this;
            }


            /// <summary>
            /// Builds instance of AllView.
            /// </summary>
            /// <returns>AllView</returns>
            public AllView Build()
            {
                Validate();
                return new AllView(
                    Class: _Class,
                    Name: _Name,
                    Url: _Url
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}