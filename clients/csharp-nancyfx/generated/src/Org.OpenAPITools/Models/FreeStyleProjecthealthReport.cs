using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// FreeStyleProjecthealthReport
    /// </summary>
    public sealed class FreeStyleProjecthealthReport:  IEquatable<FreeStyleProjecthealthReport>
    { 
        /// <summary>
        /// Description
        /// </summary>
        public string Description { get; private set; }

        /// <summary>
        /// IconClassName
        /// </summary>
        public string IconClassName { get; private set; }

        /// <summary>
        /// IconUrl
        /// </summary>
        public string IconUrl { get; private set; }

        /// <summary>
        /// Score
        /// </summary>
        public int? Score { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use FreeStyleProjecthealthReport.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public FreeStyleProjecthealthReport()
        {
        }

        private FreeStyleProjecthealthReport(string Description, string IconClassName, string IconUrl, int? Score, string Class)
        {
            
            this.Description = Description;
            
            this.IconClassName = IconClassName;
            
            this.IconUrl = IconUrl;
            
            this.Score = Score;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of FreeStyleProjecthealthReport.
        /// </summary>
        /// <returns>FreeStyleProjecthealthReportBuilder</returns>
        public static FreeStyleProjecthealthReportBuilder Builder()
        {
            return new FreeStyleProjecthealthReportBuilder();
        }

        /// <summary>
        /// Returns FreeStyleProjecthealthReportBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>FreeStyleProjecthealthReportBuilder</returns>
        public FreeStyleProjecthealthReportBuilder With()
        {
            return Builder()
                .Description(Description)
                .IconClassName(IconClassName)
                .IconUrl(IconUrl)
                .Score(Score)
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

        public bool Equals(FreeStyleProjecthealthReport other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (FreeStyleProjecthealthReport.
        /// </summary>
        /// <param name="left">Compared (FreeStyleProjecthealthReport</param>
        /// <param name="right">Compared (FreeStyleProjecthealthReport</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (FreeStyleProjecthealthReport left, FreeStyleProjecthealthReport right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (FreeStyleProjecthealthReport.
        /// </summary>
        /// <param name="left">Compared (FreeStyleProjecthealthReport</param>
        /// <param name="right">Compared (FreeStyleProjecthealthReport</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (FreeStyleProjecthealthReport left, FreeStyleProjecthealthReport right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of FreeStyleProjecthealthReport.
        /// </summary>
        public sealed class FreeStyleProjecthealthReportBuilder
        {
            private string _Description;
            private string _IconClassName;
            private string _IconUrl;
            private int? _Score;
            private string _Class;

            internal FreeStyleProjecthealthReportBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for FreeStyleProjecthealthReport.Description property.
            /// </summary>
            /// <param name="value">Description</param>
            public FreeStyleProjecthealthReportBuilder Description(string value)
            {
                _Description = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProjecthealthReport.IconClassName property.
            /// </summary>
            /// <param name="value">IconClassName</param>
            public FreeStyleProjecthealthReportBuilder IconClassName(string value)
            {
                _IconClassName = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProjecthealthReport.IconUrl property.
            /// </summary>
            /// <param name="value">IconUrl</param>
            public FreeStyleProjecthealthReportBuilder IconUrl(string value)
            {
                _IconUrl = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProjecthealthReport.Score property.
            /// </summary>
            /// <param name="value">Score</param>
            public FreeStyleProjecthealthReportBuilder Score(int? value)
            {
                _Score = value;
                return this;
            }

            /// <summary>
            /// Sets value for FreeStyleProjecthealthReport.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public FreeStyleProjecthealthReportBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of FreeStyleProjecthealthReport.
            /// </summary>
            /// <returns>FreeStyleProjecthealthReport</returns>
            public FreeStyleProjecthealthReport Build()
            {
                Validate();
                return new FreeStyleProjecthealthReport(
                    Description: _Description,
                    IconClassName: _IconClassName,
                    IconUrl: _IconUrl,
                    Score: _Score,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}