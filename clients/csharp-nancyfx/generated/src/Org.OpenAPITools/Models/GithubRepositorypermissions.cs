using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// GithubRepositorypermissions
    /// </summary>
    public sealed class GithubRepositorypermissions:  IEquatable<GithubRepositorypermissions>
    { 
        /// <summary>
        /// Admin
        /// </summary>
        public bool? Admin { get; private set; }

        /// <summary>
        /// Push
        /// </summary>
        public bool? Push { get; private set; }

        /// <summary>
        /// Pull
        /// </summary>
        public bool? Pull { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use GithubRepositorypermissions.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GithubRepositorypermissions()
        {
        }

        private GithubRepositorypermissions(bool? Admin, bool? Push, bool? Pull, string Class)
        {
            
            this.Admin = Admin;
            
            this.Push = Push;
            
            this.Pull = Pull;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of GithubRepositorypermissions.
        /// </summary>
        /// <returns>GithubRepositorypermissionsBuilder</returns>
        public static GithubRepositorypermissionsBuilder Builder()
        {
            return new GithubRepositorypermissionsBuilder();
        }

        /// <summary>
        /// Returns GithubRepositorypermissionsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GithubRepositorypermissionsBuilder</returns>
        public GithubRepositorypermissionsBuilder With()
        {
            return Builder()
                .Admin(Admin)
                .Push(Push)
                .Pull(Pull)
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

        public bool Equals(GithubRepositorypermissions other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GithubRepositorypermissions.
        /// </summary>
        /// <param name="left">Compared (GithubRepositorypermissions</param>
        /// <param name="right">Compared (GithubRepositorypermissions</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GithubRepositorypermissions left, GithubRepositorypermissions right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GithubRepositorypermissions.
        /// </summary>
        /// <param name="left">Compared (GithubRepositorypermissions</param>
        /// <param name="right">Compared (GithubRepositorypermissions</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GithubRepositorypermissions left, GithubRepositorypermissions right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GithubRepositorypermissions.
        /// </summary>
        public sealed class GithubRepositorypermissionsBuilder
        {
            private bool? _Admin;
            private bool? _Push;
            private bool? _Pull;
            private string _Class;

            internal GithubRepositorypermissionsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GithubRepositorypermissions.Admin property.
            /// </summary>
            /// <param name="value">Admin</param>
            public GithubRepositorypermissionsBuilder Admin(bool? value)
            {
                _Admin = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepositorypermissions.Push property.
            /// </summary>
            /// <param name="value">Push</param>
            public GithubRepositorypermissionsBuilder Push(bool? value)
            {
                _Push = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepositorypermissions.Pull property.
            /// </summary>
            /// <param name="value">Pull</param>
            public GithubRepositorypermissionsBuilder Pull(bool? value)
            {
                _Pull = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepositorypermissions.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GithubRepositorypermissionsBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GithubRepositorypermissions.
            /// </summary>
            /// <returns>GithubRepositorypermissions</returns>
            public GithubRepositorypermissions Build()
            {
                Validate();
                return new GithubRepositorypermissions(
                    Admin: _Admin,
                    Push: _Push,
                    Pull: _Pull,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}