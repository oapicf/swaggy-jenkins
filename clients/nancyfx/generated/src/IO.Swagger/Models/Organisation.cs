using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// Organisation
    /// </summary>
    public sealed class Organisation:  IEquatable<Organisation>
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
        /// Empty constructor required by some serializers.
        /// Use Organisation.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public Organisation()
        {
        }

        private Organisation(string Class, string Name)
        {
            
            this.Class = Class;
            
            this.Name = Name;
            
        }

        /// <summary>
        /// Returns builder of Organisation.
        /// </summary>
        /// <returns>OrganisationBuilder</returns>
        public static OrganisationBuilder Builder()
        {
            return new OrganisationBuilder();
        }

        /// <summary>
        /// Returns OrganisationBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>OrganisationBuilder</returns>
        public OrganisationBuilder With()
        {
            return Builder()
                .Class(Class)
                .Name(Name);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(Organisation other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (Organisation.
        /// </summary>
        /// <param name="left">Compared (Organisation</param>
        /// <param name="right">Compared (Organisation</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (Organisation left, Organisation right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (Organisation.
        /// </summary>
        /// <param name="left">Compared (Organisation</param>
        /// <param name="right">Compared (Organisation</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (Organisation left, Organisation right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of Organisation.
        /// </summary>
        public sealed class OrganisationBuilder
        {
            private string _Class;
            private string _Name;

            internal OrganisationBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for Organisation.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public OrganisationBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for Organisation.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public OrganisationBuilder Name(string value)
            {
                _Name = value;
                return this;
            }


            /// <summary>
            /// Builds instance of Organisation.
            /// </summary>
            /// <returns>Organisation</returns>
            public Organisation Build()
            {
                Validate();
                return new Organisation(
                    Class: _Class,
                    Name: _Name
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}