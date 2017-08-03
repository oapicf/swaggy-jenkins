using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// CauseUserIdCause
    /// </summary>
    public sealed class CauseUserIdCause:  IEquatable<CauseUserIdCause>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// ShortDescription
        /// </summary>
        public string ShortDescription { get; private set; }

        /// <summary>
        /// UserId
        /// </summary>
        public string UserId { get; private set; }

        /// <summary>
        /// UserName
        /// </summary>
        public string UserName { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use CauseUserIdCause.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public CauseUserIdCause()
        {
        }

        private CauseUserIdCause(string Class, string ShortDescription, string UserId, string UserName)
        {
            
            this.Class = Class;
            
            this.ShortDescription = ShortDescription;
            
            this.UserId = UserId;
            
            this.UserName = UserName;
            
        }

        /// <summary>
        /// Returns builder of CauseUserIdCause.
        /// </summary>
        /// <returns>CauseUserIdCauseBuilder</returns>
        public static CauseUserIdCauseBuilder Builder()
        {
            return new CauseUserIdCauseBuilder();
        }

        /// <summary>
        /// Returns CauseUserIdCauseBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>CauseUserIdCauseBuilder</returns>
        public CauseUserIdCauseBuilder With()
        {
            return Builder()
                .Class(Class)
                .ShortDescription(ShortDescription)
                .UserId(UserId)
                .UserName(UserName);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(CauseUserIdCause other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (CauseUserIdCause.
        /// </summary>
        /// <param name="left">Compared (CauseUserIdCause</param>
        /// <param name="right">Compared (CauseUserIdCause</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (CauseUserIdCause left, CauseUserIdCause right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (CauseUserIdCause.
        /// </summary>
        /// <param name="left">Compared (CauseUserIdCause</param>
        /// <param name="right">Compared (CauseUserIdCause</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (CauseUserIdCause left, CauseUserIdCause right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of CauseUserIdCause.
        /// </summary>
        public sealed class CauseUserIdCauseBuilder
        {
            private string _Class;
            private string _ShortDescription;
            private string _UserId;
            private string _UserName;

            internal CauseUserIdCauseBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for CauseUserIdCause.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public CauseUserIdCauseBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for CauseUserIdCause.ShortDescription property.
            /// </summary>
            /// <param name="value">ShortDescription</param>
            public CauseUserIdCauseBuilder ShortDescription(string value)
            {
                _ShortDescription = value;
                return this;
            }

            /// <summary>
            /// Sets value for CauseUserIdCause.UserId property.
            /// </summary>
            /// <param name="value">UserId</param>
            public CauseUserIdCauseBuilder UserId(string value)
            {
                _UserId = value;
                return this;
            }

            /// <summary>
            /// Sets value for CauseUserIdCause.UserName property.
            /// </summary>
            /// <param name="value">UserName</param>
            public CauseUserIdCauseBuilder UserName(string value)
            {
                _UserName = value;
                return this;
            }


            /// <summary>
            /// Builds instance of CauseUserIdCause.
            /// </summary>
            /// <returns>CauseUserIdCause</returns>
            public CauseUserIdCause Build()
            {
                Validate();
                return new CauseUserIdCause(
                    Class: _Class,
                    ShortDescription: _ShortDescription,
                    UserId: _UserId,
                    UserName: _UserName
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}