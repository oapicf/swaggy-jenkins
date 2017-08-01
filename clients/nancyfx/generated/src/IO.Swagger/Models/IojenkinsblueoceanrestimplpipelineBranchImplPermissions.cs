using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// IojenkinsblueoceanrestimplpipelineBranchImplPermissions
    /// </summary>
    public sealed class IojenkinsblueoceanrestimplpipelineBranchImplPermissions:  IEquatable<IojenkinsblueoceanrestimplpipelineBranchImplPermissions>
    { 
        /// <summary>
        /// Create
        /// </summary>
        public bool? Create { get; private set; }

        /// <summary>
        /// Read
        /// </summary>
        public bool? Read { get; private set; }

        /// <summary>
        /// Start
        /// </summary>
        public bool? Start { get; private set; }

        /// <summary>
        /// Stop
        /// </summary>
        public bool? Stop { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use IojenkinsblueoceanrestimplpipelineBranchImplPermissions.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public IojenkinsblueoceanrestimplpipelineBranchImplPermissions()
        {
        }

        private IojenkinsblueoceanrestimplpipelineBranchImplPermissions(bool? Create, bool? Read, bool? Start, bool? Stop, string Class)
        {
            
            this.Create = Create;
            
            this.Read = Read;
            
            this.Start = Start;
            
            this.Stop = Stop;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of IojenkinsblueoceanrestimplpipelineBranchImplPermissions.
        /// </summary>
        /// <returns>IojenkinsblueoceanrestimplpipelineBranchImplPermissionsBuilder</returns>
        public static IojenkinsblueoceanrestimplpipelineBranchImplPermissionsBuilder Builder()
        {
            return new IojenkinsblueoceanrestimplpipelineBranchImplPermissionsBuilder();
        }

        /// <summary>
        /// Returns IojenkinsblueoceanrestimplpipelineBranchImplPermissionsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>IojenkinsblueoceanrestimplpipelineBranchImplPermissionsBuilder</returns>
        public IojenkinsblueoceanrestimplpipelineBranchImplPermissionsBuilder With()
        {
            return Builder()
                .Create(Create)
                .Read(Read)
                .Start(Start)
                .Stop(Stop)
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

        public bool Equals(IojenkinsblueoceanrestimplpipelineBranchImplPermissions other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (IojenkinsblueoceanrestimplpipelineBranchImplPermissions.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanrestimplpipelineBranchImplPermissions</param>
        /// <param name="right">Compared (IojenkinsblueoceanrestimplpipelineBranchImplPermissions</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (IojenkinsblueoceanrestimplpipelineBranchImplPermissions left, IojenkinsblueoceanrestimplpipelineBranchImplPermissions right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (IojenkinsblueoceanrestimplpipelineBranchImplPermissions.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanrestimplpipelineBranchImplPermissions</param>
        /// <param name="right">Compared (IojenkinsblueoceanrestimplpipelineBranchImplPermissions</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (IojenkinsblueoceanrestimplpipelineBranchImplPermissions left, IojenkinsblueoceanrestimplpipelineBranchImplPermissions right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of IojenkinsblueoceanrestimplpipelineBranchImplPermissions.
        /// </summary>
        public sealed class IojenkinsblueoceanrestimplpipelineBranchImplPermissionsBuilder
        {
            private bool? _Create;
            private bool? _Read;
            private bool? _Start;
            private bool? _Stop;
            private string _Class;

            internal IojenkinsblueoceanrestimplpipelineBranchImplPermissionsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImplPermissions.Create property.
            /// </summary>
            /// <param name="value">Create</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplPermissionsBuilder Create(bool? value)
            {
                _Create = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImplPermissions.Read property.
            /// </summary>
            /// <param name="value">Read</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplPermissionsBuilder Read(bool? value)
            {
                _Read = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImplPermissions.Start property.
            /// </summary>
            /// <param name="value">Start</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplPermissionsBuilder Start(bool? value)
            {
                _Start = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImplPermissions.Stop property.
            /// </summary>
            /// <param name="value">Stop</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplPermissionsBuilder Stop(bool? value)
            {
                _Stop = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanrestimplpipelineBranchImplPermissions.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public IojenkinsblueoceanrestimplpipelineBranchImplPermissionsBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of IojenkinsblueoceanrestimplpipelineBranchImplPermissions.
            /// </summary>
            /// <returns>IojenkinsblueoceanrestimplpipelineBranchImplPermissions</returns>
            public IojenkinsblueoceanrestimplpipelineBranchImplPermissions Build()
            {
                Validate();
                return new IojenkinsblueoceanrestimplpipelineBranchImplPermissions(
                    Create: _Create,
                    Read: _Read,
                    Start: _Start,
                    Stop: _Stop,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
