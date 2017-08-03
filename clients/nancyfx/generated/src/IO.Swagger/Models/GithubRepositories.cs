using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GithubRepositories
    /// </summary>
    public sealed class GithubRepositories:  IEquatable<GithubRepositories>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Links
        /// </summary>
        public GithubRepositorieslinks Links { get; private set; }

        /// <summary>
        /// Items
        /// </summary>
        public List<GithubRepository> Items { get; private set; }

        /// <summary>
        /// LastPage
        /// </summary>
        public int? LastPage { get; private set; }

        /// <summary>
        /// NextPage
        /// </summary>
        public int? NextPage { get; private set; }

        /// <summary>
        /// PageSize
        /// </summary>
        public int? PageSize { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use GithubRepositories.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GithubRepositories()
        {
        }

        private GithubRepositories(string Class, GithubRepositorieslinks Links, List<GithubRepository> Items, int? LastPage, int? NextPage, int? PageSize)
        {
            
            this.Class = Class;
            
            this.Links = Links;
            
            this.Items = Items;
            
            this.LastPage = LastPage;
            
            this.NextPage = NextPage;
            
            this.PageSize = PageSize;
            
        }

        /// <summary>
        /// Returns builder of GithubRepositories.
        /// </summary>
        /// <returns>GithubRepositoriesBuilder</returns>
        public static GithubRepositoriesBuilder Builder()
        {
            return new GithubRepositoriesBuilder();
        }

        /// <summary>
        /// Returns GithubRepositoriesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GithubRepositoriesBuilder</returns>
        public GithubRepositoriesBuilder With()
        {
            return Builder()
                .Class(Class)
                .Links(Links)
                .Items(Items)
                .LastPage(LastPage)
                .NextPage(NextPage)
                .PageSize(PageSize);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(GithubRepositories other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GithubRepositories.
        /// </summary>
        /// <param name="left">Compared (GithubRepositories</param>
        /// <param name="right">Compared (GithubRepositories</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GithubRepositories left, GithubRepositories right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GithubRepositories.
        /// </summary>
        /// <param name="left">Compared (GithubRepositories</param>
        /// <param name="right">Compared (GithubRepositories</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GithubRepositories left, GithubRepositories right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GithubRepositories.
        /// </summary>
        public sealed class GithubRepositoriesBuilder
        {
            private string _Class;
            private GithubRepositorieslinks _Links;
            private List<GithubRepository> _Items;
            private int? _LastPage;
            private int? _NextPage;
            private int? _PageSize;

            internal GithubRepositoriesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GithubRepositories.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GithubRepositoriesBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepositories.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public GithubRepositoriesBuilder Links(GithubRepositorieslinks value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepositories.Items property.
            /// </summary>
            /// <param name="value">Items</param>
            public GithubRepositoriesBuilder Items(List<GithubRepository> value)
            {
                _Items = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepositories.LastPage property.
            /// </summary>
            /// <param name="value">LastPage</param>
            public GithubRepositoriesBuilder LastPage(int? value)
            {
                _LastPage = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepositories.NextPage property.
            /// </summary>
            /// <param name="value">NextPage</param>
            public GithubRepositoriesBuilder NextPage(int? value)
            {
                _NextPage = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubRepositories.PageSize property.
            /// </summary>
            /// <param name="value">PageSize</param>
            public GithubRepositoriesBuilder PageSize(int? value)
            {
                _PageSize = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GithubRepositories.
            /// </summary>
            /// <returns>GithubRepositories</returns>
            public GithubRepositories Build()
            {
                Validate();
                return new GithubRepositories(
                    Class: _Class,
                    Links: _Links,
                    Items: _Items,
                    LastPage: _LastPage,
                    NextPage: _NextPage,
                    PageSize: _PageSize
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}