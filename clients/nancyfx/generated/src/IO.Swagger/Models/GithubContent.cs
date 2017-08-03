using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GithubContent
    /// </summary>
    public sealed class GithubContent:  IEquatable<GithubContent>
    { 
        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }

        /// <summary>
        /// Sha
        /// </summary>
        public string Sha { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Repo
        /// </summary>
        public string Repo { get; private set; }

        /// <summary>
        /// Size
        /// </summary>
        public int? Size { get; private set; }

        /// <summary>
        /// Owner
        /// </summary>
        public string Owner { get; private set; }

        /// <summary>
        /// Path
        /// </summary>
        public string Path { get; private set; }

        /// <summary>
        /// Base64Data
        /// </summary>
        public string Base64Data { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use GithubContent.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GithubContent()
        {
        }

        private GithubContent(string Name, string Sha, string Class, string Repo, int? Size, string Owner, string Path, string Base64Data)
        {
            
            this.Name = Name;
            
            this.Sha = Sha;
            
            this.Class = Class;
            
            this.Repo = Repo;
            
            this.Size = Size;
            
            this.Owner = Owner;
            
            this.Path = Path;
            
            this.Base64Data = Base64Data;
            
        }

        /// <summary>
        /// Returns builder of GithubContent.
        /// </summary>
        /// <returns>GithubContentBuilder</returns>
        public static GithubContentBuilder Builder()
        {
            return new GithubContentBuilder();
        }

        /// <summary>
        /// Returns GithubContentBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GithubContentBuilder</returns>
        public GithubContentBuilder With()
        {
            return Builder()
                .Name(Name)
                .Sha(Sha)
                .Class(Class)
                .Repo(Repo)
                .Size(Size)
                .Owner(Owner)
                .Path(Path)
                .Base64Data(Base64Data);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(GithubContent other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GithubContent.
        /// </summary>
        /// <param name="left">Compared (GithubContent</param>
        /// <param name="right">Compared (GithubContent</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GithubContent left, GithubContent right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GithubContent.
        /// </summary>
        /// <param name="left">Compared (GithubContent</param>
        /// <param name="right">Compared (GithubContent</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GithubContent left, GithubContent right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GithubContent.
        /// </summary>
        public sealed class GithubContentBuilder
        {
            private string _Name;
            private string _Sha;
            private string _Class;
            private string _Repo;
            private int? _Size;
            private string _Owner;
            private string _Path;
            private string _Base64Data;

            internal GithubContentBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GithubContent.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public GithubContentBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubContent.Sha property.
            /// </summary>
            /// <param name="value">Sha</param>
            public GithubContentBuilder Sha(string value)
            {
                _Sha = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubContent.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GithubContentBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubContent.Repo property.
            /// </summary>
            /// <param name="value">Repo</param>
            public GithubContentBuilder Repo(string value)
            {
                _Repo = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubContent.Size property.
            /// </summary>
            /// <param name="value">Size</param>
            public GithubContentBuilder Size(int? value)
            {
                _Size = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubContent.Owner property.
            /// </summary>
            /// <param name="value">Owner</param>
            public GithubContentBuilder Owner(string value)
            {
                _Owner = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubContent.Path property.
            /// </summary>
            /// <param name="value">Path</param>
            public GithubContentBuilder Path(string value)
            {
                _Path = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubContent.Base64Data property.
            /// </summary>
            /// <param name="value">Base64Data</param>
            public GithubContentBuilder Base64Data(string value)
            {
                _Base64Data = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GithubContent.
            /// </summary>
            /// <returns>GithubContent</returns>
            public GithubContent Build()
            {
                Validate();
                return new GithubContent(
                    Name: _Name,
                    Sha: _Sha,
                    Class: _Class,
                    Repo: _Repo,
                    Size: _Size,
                    Owner: _Owner,
                    Path: _Path,
                    Base64Data: _Base64Data
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}