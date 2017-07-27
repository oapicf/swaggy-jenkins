using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// JenkinsmodelUnlabeledLoadStatistics
    /// </summary>
    public sealed class JenkinsmodelUnlabeledLoadStatistics:  IEquatable<JenkinsmodelUnlabeledLoadStatistics>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use JenkinsmodelUnlabeledLoadStatistics.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public JenkinsmodelUnlabeledLoadStatistics()
        {
        }

        private JenkinsmodelUnlabeledLoadStatistics(string Class)
        {
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of JenkinsmodelUnlabeledLoadStatistics.
        /// </summary>
        /// <returns>JenkinsmodelUnlabeledLoadStatisticsBuilder</returns>
        public static JenkinsmodelUnlabeledLoadStatisticsBuilder Builder()
        {
            return new JenkinsmodelUnlabeledLoadStatisticsBuilder();
        }

        /// <summary>
        /// Returns JenkinsmodelUnlabeledLoadStatisticsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>JenkinsmodelUnlabeledLoadStatisticsBuilder</returns>
        public JenkinsmodelUnlabeledLoadStatisticsBuilder With()
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

        public bool Equals(JenkinsmodelUnlabeledLoadStatistics other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (JenkinsmodelUnlabeledLoadStatistics.
        /// </summary>
        /// <param name="left">Compared (JenkinsmodelUnlabeledLoadStatistics</param>
        /// <param name="right">Compared (JenkinsmodelUnlabeledLoadStatistics</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (JenkinsmodelUnlabeledLoadStatistics left, JenkinsmodelUnlabeledLoadStatistics right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (JenkinsmodelUnlabeledLoadStatistics.
        /// </summary>
        /// <param name="left">Compared (JenkinsmodelUnlabeledLoadStatistics</param>
        /// <param name="right">Compared (JenkinsmodelUnlabeledLoadStatistics</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (JenkinsmodelUnlabeledLoadStatistics left, JenkinsmodelUnlabeledLoadStatistics right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of JenkinsmodelUnlabeledLoadStatistics.
        /// </summary>
        public sealed class JenkinsmodelUnlabeledLoadStatisticsBuilder
        {
            private string _Class;

            internal JenkinsmodelUnlabeledLoadStatisticsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for JenkinsmodelUnlabeledLoadStatistics.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public JenkinsmodelUnlabeledLoadStatisticsBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of JenkinsmodelUnlabeledLoadStatistics.
            /// </summary>
            /// <returns>JenkinsmodelUnlabeledLoadStatistics</returns>
            public JenkinsmodelUnlabeledLoadStatistics Build()
            {
                Validate();
                return new JenkinsmodelUnlabeledLoadStatistics(
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
