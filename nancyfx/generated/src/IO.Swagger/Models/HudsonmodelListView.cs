using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// HudsonmodelListView
    /// </summary>
    public sealed class HudsonmodelListView:  IEquatable<HudsonmodelListView>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Description
        /// </summary>
        public string Description { get; private set; }

        /// <summary>
        /// Jobs
        /// </summary>
        public List<HudsonmodelFreeStyleProject> Jobs { get; private set; }

        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }

        /// <summary>
        /// Url
        /// </summary>
        public string Url { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use HudsonmodelListView.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public HudsonmodelListView()
        {
        }

        private HudsonmodelListView(string Class, string Description, List<HudsonmodelFreeStyleProject> Jobs, string Name, string Url)
        {
            
            this.Class = Class;
            
            this.Description = Description;
            
            this.Jobs = Jobs;
            
            this.Name = Name;
            
            this.Url = Url;
            
        }

        /// <summary>
        /// Returns builder of HudsonmodelListView.
        /// </summary>
        /// <returns>HudsonmodelListViewBuilder</returns>
        public static HudsonmodelListViewBuilder Builder()
        {
            return new HudsonmodelListViewBuilder();
        }

        /// <summary>
        /// Returns HudsonmodelListViewBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>HudsonmodelListViewBuilder</returns>
        public HudsonmodelListViewBuilder With()
        {
            return Builder()
                .Class(Class)
                .Description(Description)
                .Jobs(Jobs)
                .Name(Name)
                .Url(Url);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(HudsonmodelListView other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (HudsonmodelListView.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelListView</param>
        /// <param name="right">Compared (HudsonmodelListView</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (HudsonmodelListView left, HudsonmodelListView right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (HudsonmodelListView.
        /// </summary>
        /// <param name="left">Compared (HudsonmodelListView</param>
        /// <param name="right">Compared (HudsonmodelListView</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (HudsonmodelListView left, HudsonmodelListView right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of HudsonmodelListView.
        /// </summary>
        public sealed class HudsonmodelListViewBuilder
        {
            private string _Class;
            private string _Description;
            private List<HudsonmodelFreeStyleProject> _Jobs;
            private string _Name;
            private string _Url;

            internal HudsonmodelListViewBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for HudsonmodelListView.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public HudsonmodelListViewBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelListView.Description property.
            /// </summary>
            /// <param name="value">Description</param>
            public HudsonmodelListViewBuilder Description(string value)
            {
                _Description = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelListView.Jobs property.
            /// </summary>
            /// <param name="value">Jobs</param>
            public HudsonmodelListViewBuilder Jobs(List<HudsonmodelFreeStyleProject> value)
            {
                _Jobs = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelListView.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public HudsonmodelListViewBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for HudsonmodelListView.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public HudsonmodelListViewBuilder Url(string value)
            {
                _Url = value;
                return this;
            }


            /// <summary>
            /// Builds instance of HudsonmodelListView.
            /// </summary>
            /// <returns>HudsonmodelListView</returns>
            public HudsonmodelListView Build()
            {
                Validate();
                return new HudsonmodelListView(
                    Class: _Class,
                    Description: _Description,
                    Jobs: _Jobs,
                    Name: _Name,
                    Url: _Url
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
