using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// User
    /// </summary>
    public sealed class User:  IEquatable<User>
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
        /// Use User.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public User()
        {
        }

        private User(string Class, string Id, string FullName, string Email, string Name)
        {
            
            this.Class = Class;
            
            this.Id = Id;
            
            this.FullName = FullName;
            
            this.Email = Email;
            
            this.Name = Name;
            
        }

        /// <summary>
        /// Returns builder of User.
        /// </summary>
        /// <returns>UserBuilder</returns>
        public static UserBuilder Builder()
        {
            return new UserBuilder();
        }

        /// <summary>
        /// Returns UserBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>UserBuilder</returns>
        public UserBuilder With()
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

        public bool Equals(User other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (User.
        /// </summary>
        /// <param name="left">Compared (User</param>
        /// <param name="right">Compared (User</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (User left, User right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (User.
        /// </summary>
        /// <param name="left">Compared (User</param>
        /// <param name="right">Compared (User</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (User left, User right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of User.
        /// </summary>
        public sealed class UserBuilder
        {
            private string _Class;
            private string _Id;
            private string _FullName;
            private string _Email;
            private string _Name;

            internal UserBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for User.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public UserBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for User.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public UserBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for User.FullName property.
            /// </summary>
            /// <param name="value">FullName</param>
            public UserBuilder FullName(string value)
            {
                _FullName = value;
                return this;
            }

            /// <summary>
            /// Sets value for User.Email property.
            /// </summary>
            /// <param name="value">Email</param>
            public UserBuilder Email(string value)
            {
                _Email = value;
                return this;
            }

            /// <summary>
            /// Sets value for User.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public UserBuilder Name(string value)
            {
                _Name = value;
                return this;
            }


            /// <summary>
            /// Builds instance of User.
            /// </summary>
            /// <returns>User</returns>
            public User Build()
            {
                Validate();
                return new User(
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