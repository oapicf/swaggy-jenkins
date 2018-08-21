using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// BranchImplpermissions
    /// </summary>
    public sealed class BranchImplpermissions:  IEquatable<BranchImplpermissions>
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
        /// Use BranchImplpermissions.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public BranchImplpermissions()
        {
        }

        private BranchImplpermissions(bool? Create, bool? Read, bool? Start, bool? Stop, string Class)
        {
            
            this.Create = Create;
            
            this.Read = Read;
            
            this.Start = Start;
            
            this.Stop = Stop;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of BranchImplpermissions.
        /// </summary>
        /// <returns>BranchImplpermissionsBuilder</returns>
        public static BranchImplpermissionsBuilder Builder()
        {
            return new BranchImplpermissionsBuilder();
        }

        /// <summary>
        /// Returns BranchImplpermissionsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>BranchImplpermissionsBuilder</returns>
        public BranchImplpermissionsBuilder With()
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

        public bool Equals(BranchImplpermissions other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (BranchImplpermissions.
        /// </summary>
        /// <param name="left">Compared (BranchImplpermissions</param>
        /// <param name="right">Compared (BranchImplpermissions</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (BranchImplpermissions left, BranchImplpermissions right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (BranchImplpermissions.
        /// </summary>
        /// <param name="left">Compared (BranchImplpermissions</param>
        /// <param name="right">Compared (BranchImplpermissions</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (BranchImplpermissions left, BranchImplpermissions right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of BranchImplpermissions.
        /// </summary>
        public sealed class BranchImplpermissionsBuilder
        {
            private bool? _Create;
            private bool? _Read;
            private bool? _Start;
            private bool? _Stop;
            private string _Class;

            internal BranchImplpermissionsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for BranchImplpermissions.Create property.
            /// </summary>
            /// <param name="value">Create</param>
            public BranchImplpermissionsBuilder Create(bool? value)
            {
                _Create = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImplpermissions.Read property.
            /// </summary>
            /// <param name="value">Read</param>
            public BranchImplpermissionsBuilder Read(bool? value)
            {
                _Read = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImplpermissions.Start property.
            /// </summary>
            /// <param name="value">Start</param>
            public BranchImplpermissionsBuilder Start(bool? value)
            {
                _Start = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImplpermissions.Stop property.
            /// </summary>
            /// <param name="value">Stop</param>
            public BranchImplpermissionsBuilder Stop(bool? value)
            {
                _Stop = value;
                return this;
            }

            /// <summary>
            /// Sets value for BranchImplpermissions.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public BranchImplpermissionsBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of BranchImplpermissions.
            /// </summary>
            /// <returns>BranchImplpermissions</returns>
            public BranchImplpermissions Build()
            {
                Validate();
                return new BranchImplpermissions(
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