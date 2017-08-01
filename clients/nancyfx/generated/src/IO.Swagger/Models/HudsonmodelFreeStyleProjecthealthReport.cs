using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelFreeStyleProjecthealthReport
    /// </summary>
    public sealed class HudsonmodelFreeStyleProjecthealthReport:  IEquatable<HudsonmodelFreeStyleProjecthealthReport>
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
        /// Use HudsonmodelFreeStyleProjecthealthReport.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelFreeStyleProjecthealthReport()
        {
        }

        private HudsonmodelFreeStyleProjecthealthReport(string Description, string IconClassName, string IconUrl, int? Score, string Class)
        {
            
            this.Description = Description;
            
            this.IconClassName = IconClassName;
            
            this.IconUrl = IconUrl;
            
            this.Score = Score;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelFreeStyleProjecthealthReport.
        /// </summary>
        /// <returns>HudsonmodelFreeStyleProjecthealthReportBuilder</returns>
        public static HudsonmodelFreeStyleProjecthealthReportBuilder Builder()
        {
            return new HudsonmodelFreeStyleProjecthealthReportBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelFreeStyleProjecthealthReportBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelFreeStyleProjecthealthReportBuilder</returns>
        public HudsonmodelFreeStyleProjecthealthReportBuilder With()
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

        public bool Equals(HudsonmodelFreeStyleProjecthealthReport other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelFreeStyleProjecthealthReport.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelFreeStyleProjecthealthReport</param>
        /// <param name="right">Compared (HudsonmodelFreeStyleProjecthealthReport</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelFreeStyleProjecthealthReport left, HudsonmodelFreeStyleProjecthealthReport right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelFreeStyleProjecthealthReport.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelFreeStyleProjecthealthReport</param>
        /// <param name="right">Compared (HudsonmodelFreeStyleProjecthealthReport</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelFreeStyleProjecthealthReport left, HudsonmodelFreeStyleProjecthealthReport right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelFreeStyleProjecthealthReport.
        /// </summary>
        public sealed class HudsonmodelFreeStyleProjecthealthReportBuilder
        {
            private string _Description;
            private string _IconClassName;
            private string _IconUrl;
            private int? _Score;
            private string _Class;

            internal HudsonmodelFreeStyleProjecthealthReportBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProjecthealthReport.Description property.
            /// </summary>
            /// <param name="value">Description</param>
            public HudsonmodelFreeStyleProjecthealthReportBuilder Description(string value)
            {
                _Description = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProjecthealthReport.IconClassName property.
            /// </summary>
            /// <param name="value">IconClassName</param>
            public HudsonmodelFreeStyleProjecthealthReportBuilder IconClassName(string value)
            {
                _IconClassName = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProjecthealthReport.IconUrl property.
            /// </summary>
            /// <param name="value">IconUrl</param>
            public HudsonmodelFreeStyleProjecthealthReportBuilder IconUrl(string value)
            {
                _IconUrl = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProjecthealthReport.Score property.
            /// </summary>
            /// <param name="value">Score</param>
            public HudsonmodelFreeStyleProjecthealthReportBuilder Score(int? value)
            {
                _Score = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelFreeStyleProjecthealthReport.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelFreeStyleProjecthealthReportBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelFreeStyleProjecthealthReport.
            /// </summary>
            /// <returns>HudsonmodelFreeStyleProjecthealthReport</returns>
            public HudsonmodelFreeStyleProjecthealthReport Build()
            {
                Validate();
                return new HudsonmodelFreeStyleProjecthealthReport(
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
