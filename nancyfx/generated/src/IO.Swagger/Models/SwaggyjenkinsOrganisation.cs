using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// SwaggyjenkinsOrganisation
    /// </summary>
    public sealed class SwaggyjenkinsOrganisation:  IEquatable<SwaggyjenkinsOrganisation>
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
        /// Use SwaggyjenkinsOrganisation.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public SwaggyjenkinsOrganisation()
        {
        }

        private SwaggyjenkinsOrganisation(string Class, string Name)
        {
            
            this.Class = Class;
            
            this.Name = Name;
            
        }

        /// <summary>
        /// Returns builder of SwaggyjenkinsOrganisation.
        /// </summary>
        /// <returns>SwaggyjenkinsOrganisationBuilder</returns>
        public static SwaggyjenkinsOrganisationBuilder Builder()
        {
            return new SwaggyjenkinsOrganisationBuilder();
        }

        /// <summary>
        /// Returns SwaggyjenkinsOrganisationBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>SwaggyjenkinsOrganisationBuilder</returns>
        public SwaggyjenkinsOrganisationBuilder With()
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

        public bool Equals(SwaggyjenkinsOrganisation other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (SwaggyjenkinsOrganisation.
        /// </summary>
        /// <param name="left">Compared (SwaggyjenkinsOrganisation</param>
        /// <param name="right">Compared (SwaggyjenkinsOrganisation</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (SwaggyjenkinsOrganisation left, SwaggyjenkinsOrganisation right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (SwaggyjenkinsOrganisation.
        /// </summary>
        /// <param name="left">Compared (SwaggyjenkinsOrganisation</param>
        /// <param name="right">Compared (SwaggyjenkinsOrganisation</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (SwaggyjenkinsOrganisation left, SwaggyjenkinsOrganisation right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of SwaggyjenkinsOrganisation.
        /// </summary>
        public sealed class SwaggyjenkinsOrganisationBuilder
        {
            private string _Class;
            private string _Name;

            internal SwaggyjenkinsOrganisationBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsOrganisation.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public SwaggyjenkinsOrganisationBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsOrganisation.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public SwaggyjenkinsOrganisationBuilder Name(string value)
            {
                _Name = value;
                return this;
            }


            /// <summary>
            /// Builds instance of SwaggyjenkinsOrganisation.
            /// </summary>
            /// <returns>SwaggyjenkinsOrganisation</returns>
            public SwaggyjenkinsOrganisation Build()
            {
                Validate();
                return new SwaggyjenkinsOrganisation(
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
