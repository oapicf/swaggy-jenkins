using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelAllView
    /// </summary>
    public sealed class HudsonmodelAllView:  IEquatable<HudsonmodelAllView>
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
        /// Use HudsonmodelAllView.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelAllView()
        {
        }

        private HudsonmodelAllView(string Class, string Name, string Url)
        {
            
            this.Class = Class;
            
            this.Name = Name;
            
            this.Url = Url;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelAllView.
        /// </summary>
        /// <returns>HudsonmodelAllViewBuilder</returns>
        public static HudsonmodelAllViewBuilder Builder()
        {
            return new HudsonmodelAllViewBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelAllViewBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelAllViewBuilder</returns>
        public HudsonmodelAllViewBuilder With()
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

        public bool Equals(HudsonmodelAllView other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelAllView.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelAllView</param>
        /// <param name="right">Compared (HudsonmodelAllView</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelAllView left, HudsonmodelAllView right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelAllView.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelAllView</param>
        /// <param name="right">Compared (HudsonmodelAllView</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelAllView left, HudsonmodelAllView right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelAllView.
        /// </summary>
        public sealed class HudsonmodelAllViewBuilder
        {
            private string _Class;
            private string _Name;
            private string _Url;

            internal HudsonmodelAllViewBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelAllView.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelAllViewBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelAllView.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public HudsonmodelAllViewBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelAllView.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public HudsonmodelAllViewBuilder Url(string value)
            {
                _Url = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelAllView.
            /// </summary>
            /// <returns>HudsonmodelAllView</returns>
            public HudsonmodelAllView Build()
            {
                Validate();
                return new HudsonmodelAllView(
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
