using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// ListView
    /// </summary>
    public sealed class ListView:  IEquatable<ListView>
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
        public List<FreeStyleProject> Jobs { get; private set; }

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
        /// Use ListView.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ListView()
        {
        }

        private ListView(string Class, string Description, List<FreeStyleProject> Jobs, string Name, string Url)
        {
            
            this.Class = Class;
            
            this.Description = Description;
            
            this.Jobs = Jobs;
            
            this.Name = Name;
            
            this.Url = Url;
            
        }

        /// <summary>
        /// Returns builder of ListView.
        /// </summary>
        /// <returns>ListViewBuilder</returns>
        public static ListViewBuilder Builder()
        {
            return new ListViewBuilder();
        }

        /// <summary>
        /// Returns ListViewBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ListViewBuilder</returns>
        public ListViewBuilder With()
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

        public bool Equals(ListView other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ListView.
        /// </summary>
        /// <param name="left">Compared (ListView</param>
        /// <param name="right">Compared (ListView</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ListView left, ListView right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ListView.
        /// </summary>
        /// <param name="left">Compared (ListView</param>
        /// <param name="right">Compared (ListView</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ListView left, ListView right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ListView.
        /// </summary>
        public sealed class ListViewBuilder
        {
            private string _Class;
            private string _Description;
            private List<FreeStyleProject> _Jobs;
            private string _Name;
            private string _Url;

            internal ListViewBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ListView.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public ListViewBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for ListView.Description property.
            /// </summary>
            /// <param name="value">Description</param>
            public ListViewBuilder Description(string value)
            {
                _Description = value;
                return this;
            }

            /// <summary>
            /// Sets value for ListView.Jobs property.
            /// </summary>
            /// <param name="value">Jobs</param>
            public ListViewBuilder Jobs(List<FreeStyleProject> value)
            {
                _Jobs = value;
                return this;
            }

            /// <summary>
            /// Sets value for ListView.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public ListViewBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for ListView.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public ListViewBuilder Url(string value)
            {
                _Url = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ListView.
            /// </summary>
            /// <returns>ListView</returns>
            public ListView Build()
            {
                Validate();
                return new ListView(
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