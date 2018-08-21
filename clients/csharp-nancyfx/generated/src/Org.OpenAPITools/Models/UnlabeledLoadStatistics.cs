using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// UnlabeledLoadStatistics
    /// </summary>
    public sealed class UnlabeledLoadStatistics:  IEquatable<UnlabeledLoadStatistics>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use UnlabeledLoadStatistics.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public UnlabeledLoadStatistics()
        {
        }

        private UnlabeledLoadStatistics(string Class)
        {
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of UnlabeledLoadStatistics.
        /// </summary>
        /// <returns>UnlabeledLoadStatisticsBuilder</returns>
        public static UnlabeledLoadStatisticsBuilder Builder()
        {
            return new UnlabeledLoadStatisticsBuilder();
        }

        /// <summary>
        /// Returns UnlabeledLoadStatisticsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>UnlabeledLoadStatisticsBuilder</returns>
        public UnlabeledLoadStatisticsBuilder With()
        {
            return Builder()
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

        public bool Equals(UnlabeledLoadStatistics other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (UnlabeledLoadStatistics.
        /// </summary>
        /// <param name="left">Compared (UnlabeledLoadStatistics</param>
        /// <param name="right">Compared (UnlabeledLoadStatistics</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (UnlabeledLoadStatistics left, UnlabeledLoadStatistics right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (UnlabeledLoadStatistics.
        /// </summary>
        /// <param name="left">Compared (UnlabeledLoadStatistics</param>
        /// <param name="right">Compared (UnlabeledLoadStatistics</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (UnlabeledLoadStatistics left, UnlabeledLoadStatistics right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of UnlabeledLoadStatistics.
        /// </summary>
        public sealed class UnlabeledLoadStatisticsBuilder
        {
            private string _Class;

            internal UnlabeledLoadStatisticsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for UnlabeledLoadStatistics.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public UnlabeledLoadStatisticsBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of UnlabeledLoadStatistics.
            /// </summary>
            /// <returns>UnlabeledLoadStatistics</returns>
            public UnlabeledLoadStatistics Build()
            {
                Validate();
                return new UnlabeledLoadStatistics(
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}