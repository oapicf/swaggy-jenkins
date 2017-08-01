using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// SwaggyjenkinsUser
    /// </summary>
    public sealed class SwaggyjenkinsUser:  IEquatable<SwaggyjenkinsUser>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// FullName
        /// </summary>
        public string FullName { get; private set; }

        /// <summary>
        /// Email
        /// </summary>
        public string Email { get; private set; }

        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use SwaggyjenkinsUser.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public SwaggyjenkinsUser()
        {
        }

        private SwaggyjenkinsUser(string Class, string Id, string FullName, string Email, string Name)
        {
            
            this.Class = Class;
            
            this.Id = Id;
            
            this.FullName = FullName;
            
            this.Email = Email;
            
            this.Name = Name;
            
        }

        /// <summary>
        /// Returns builder of SwaggyjenkinsUser.
        /// </summary>
        /// <returns>SwaggyjenkinsUserBuilder</returns>
        public static SwaggyjenkinsUserBuilder Builder()
        {
            return new SwaggyjenkinsUserBuilder();
        }

        /// <summary>
        /// Returns SwaggyjenkinsUserBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>SwaggyjenkinsUserBuilder</returns>
        public SwaggyjenkinsUserBuilder With()
        {
            return Builder()
                .Class(Class)
                .Id(Id)
                .FullName(FullName)
                .Email(Email)
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

        public bool Equals(SwaggyjenkinsUser other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (SwaggyjenkinsUser.
        /// </summary>
        /// <param name="left">Compared (SwaggyjenkinsUser</param>
        /// <param name="right">Compared (SwaggyjenkinsUser</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (SwaggyjenkinsUser left, SwaggyjenkinsUser right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (SwaggyjenkinsUser.
        /// </summary>
        /// <param name="left">Compared (SwaggyjenkinsUser</param>
        /// <param name="right">Compared (SwaggyjenkinsUser</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (SwaggyjenkinsUser left, SwaggyjenkinsUser right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of SwaggyjenkinsUser.
        /// </summary>
        public sealed class SwaggyjenkinsUserBuilder
        {
            private string _Class;
            private string _Id;
            private string _FullName;
            private string _Email;
            private string _Name;

            internal SwaggyjenkinsUserBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsUser.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public SwaggyjenkinsUserBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsUser.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public SwaggyjenkinsUserBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsUser.FullName property.
            /// </summary>
            /// <param name="value">FullName</param>
            public SwaggyjenkinsUserBuilder FullName(string value)
            {
                _FullName = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsUser.Email property.
            /// </summary>
            /// <param name="value">Email</param>
            public SwaggyjenkinsUserBuilder Email(string value)
            {
                _Email = value;
                return this;
            }

            /// <summary>
            /// Sets value for SwaggyjenkinsUser.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public SwaggyjenkinsUserBuilder Name(string value)
            {
                _Name = value;
                return this;
            }


            /// <summary>
            /// Builds instance of SwaggyjenkinsUser.
            /// </summary>
            /// <returns>SwaggyjenkinsUser</returns>
            public SwaggyjenkinsUser Build()
            {
                Validate();
                return new SwaggyjenkinsUser(
                    Class: _Class,
                    Id: _Id,
                    FullName: _FullName,
                    Email: _Email,
                    Name: _Name
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
