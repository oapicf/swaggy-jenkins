using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelCauseUserIdCause
    /// </summary>
    public sealed class HudsonmodelCauseUserIdCause:  IEquatable<HudsonmodelCauseUserIdCause>
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
        /// Use HudsonmodelCauseUserIdCause.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelCauseUserIdCause()
        {
        }

        private HudsonmodelCauseUserIdCause(string Class, string ShortDescription, string UserId, string UserName)
        {
            
            this.Class = Class;
            
            this.ShortDescription = ShortDescription;
            
            this.UserId = UserId;
            
            this.UserName = UserName;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelCauseUserIdCause.
        /// </summary>
        /// <returns>HudsonmodelCauseUserIdCauseBuilder</returns>
        public static HudsonmodelCauseUserIdCauseBuilder Builder()
        {
            return new HudsonmodelCauseUserIdCauseBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelCauseUserIdCauseBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelCauseUserIdCauseBuilder</returns>
        public HudsonmodelCauseUserIdCauseBuilder With()
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

        public bool Equals(HudsonmodelCauseUserIdCause other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelCauseUserIdCause.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelCauseUserIdCause</param>
        /// <param name="right">Compared (HudsonmodelCauseUserIdCause</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelCauseUserIdCause left, HudsonmodelCauseUserIdCause right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelCauseUserIdCause.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelCauseUserIdCause</param>
        /// <param name="right">Compared (HudsonmodelCauseUserIdCause</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelCauseUserIdCause left, HudsonmodelCauseUserIdCause right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelCauseUserIdCause.
        /// </summary>
        public sealed class HudsonmodelCauseUserIdCauseBuilder
        {
            private string _Class;
            private string _ShortDescription;
            private string _UserId;
            private string _UserName;

            internal HudsonmodelCauseUserIdCauseBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelCauseUserIdCause.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelCauseUserIdCauseBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelCauseUserIdCause.ShortDescription property.
            /// </summary>
            /// <param name="value">ShortDescription</param>
            public HudsonmodelCauseUserIdCauseBuilder ShortDescription(string value)
            {
                _ShortDescription = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelCauseUserIdCause.UserId property.
            /// </summary>
            /// <param name="value">UserId</param>
            public HudsonmodelCauseUserIdCauseBuilder UserId(string value)
            {
                _UserId = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelCauseUserIdCause.UserName property.
            /// </summary>
            /// <param name="value">UserName</param>
            public HudsonmodelCauseUserIdCauseBuilder UserName(string value)
            {
                _UserName = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelCauseUserIdCause.
            /// </summary>
            /// <returns>HudsonmodelCauseUserIdCause</returns>
            public HudsonmodelCauseUserIdCause Build()
            {
                Validate();
                return new HudsonmodelCauseUserIdCause(
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
