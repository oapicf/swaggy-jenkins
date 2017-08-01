using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelCauseAction
    /// </summary>
    public sealed class HudsonmodelCauseAction:  IEquatable<HudsonmodelCauseAction>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Causes
        /// </summary>
        public List<HudsonmodelCauseUserIdCause> Causes { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonmodelCauseAction.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelCauseAction()
        {
        }

        private HudsonmodelCauseAction(string Class, List<HudsonmodelCauseUserIdCause> Causes)
        {
            
            this.Class = Class;
            
            this.Causes = Causes;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelCauseAction.
        /// </summary>
        /// <returns>HudsonmodelCauseActionBuilder</returns>
        public static HudsonmodelCauseActionBuilder Builder()
        {
            return new HudsonmodelCauseActionBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelCauseActionBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelCauseActionBuilder</returns>
        public HudsonmodelCauseActionBuilder With()
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

        public bool Equals(HudsonmodelCauseAction other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelCauseAction.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelCauseAction</param>
        /// <param name="right">Compared (HudsonmodelCauseAction</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelCauseAction left, HudsonmodelCauseAction right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelCauseAction.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelCauseAction</param>
        /// <param name="right">Compared (HudsonmodelCauseAction</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelCauseAction left, HudsonmodelCauseAction right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelCauseAction.
        /// </summary>
        public sealed class HudsonmodelCauseActionBuilder
        {
            private string _Class;
            private List<HudsonmodelCauseUserIdCause> _Causes;

            internal HudsonmodelCauseActionBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelCauseAction.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelCauseActionBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelCauseAction.Causes property.
            /// </summary>
            /// <param name="value">Causes</param>
            public HudsonmodelCauseActionBuilder Causes(List<HudsonmodelCauseUserIdCause> value)
            {
                _Causes = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelCauseAction.
            /// </summary>
            /// <returns>HudsonmodelCauseAction</returns>
            public HudsonmodelCauseAction Build()
            {
                Validate();
                return new HudsonmodelCauseAction(
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
