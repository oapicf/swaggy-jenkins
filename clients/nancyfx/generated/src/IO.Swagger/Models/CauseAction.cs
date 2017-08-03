using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// CauseAction
    /// </summary>
    public sealed class CauseAction:  IEquatable<CauseAction>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Causes
        /// </summary>
        public List<CauseUserIdCause> Causes { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use CauseAction.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public CauseAction()
        {
        }

        private CauseAction(string Class, List<CauseUserIdCause> Causes)
        {
            
            this.Class = Class;
            
            this.Causes = Causes;
            
        }

        /// <summary>
        /// Returns builder of CauseAction.
        /// </summary>
        /// <returns>CauseActionBuilder</returns>
        public static CauseActionBuilder Builder()
        {
            return new CauseActionBuilder();
        }

        /// <summary>
        /// Returns CauseActionBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>CauseActionBuilder</returns>
        public CauseActionBuilder With()
        {
            return Builder()
                .Class(Class)
                .Causes(Causes);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(CauseAction other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (CauseAction.
        /// </summary>
        /// <param name="left">Compared (CauseAction</param>
        /// <param name="right">Compared (CauseAction</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (CauseAction left, CauseAction right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (CauseAction.
        /// </summary>
        /// <param name="left">Compared (CauseAction</param>
        /// <param name="right">Compared (CauseAction</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (CauseAction left, CauseAction right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of CauseAction.
        /// </summary>
        public sealed class CauseActionBuilder
        {
            private string _Class;
            private List<CauseUserIdCause> _Causes;

            internal CauseActionBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for CauseAction.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public CauseActionBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for CauseAction.Causes property.
            /// </summary>
            /// <param name="value">Causes</param>
            public CauseActionBuilder Causes(List<CauseUserIdCause> value)
            {
                _Causes = value;
                return this;
            }


            /// <summary>
            /// Builds instance of CauseAction.
            /// </summary>
            /// <returns>CauseAction</returns>
            public CauseAction Build()
            {
                Validate();
                return new CauseAction(
                    Class: _Class,
                    Causes: _Causes
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}