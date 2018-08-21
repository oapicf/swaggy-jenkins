using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// GithubFile
    /// </summary>
    public sealed class GithubFile:  IEquatable<GithubFile>
    { 
        /// <summary>
        /// Content
        /// </summary>
        public GithubContent Content { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use GithubFile.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GithubFile()
        {
        }

        private GithubFile(GithubContent Content, string Class)
        {
            
            this.Content = Content;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of GithubFile.
        /// </summary>
        /// <returns>GithubFileBuilder</returns>
        public static GithubFileBuilder Builder()
        {
            return new GithubFileBuilder();
        }

        /// <summary>
        /// Returns GithubFileBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GithubFileBuilder</returns>
        public GithubFileBuilder With()
        {
            return Builder()
                .Content(Content)
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

        public bool Equals(GithubFile other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GithubFile.
        /// </summary>
        /// <param name="left">Compared (GithubFile</param>
        /// <param name="right">Compared (GithubFile</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GithubFile left, GithubFile right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GithubFile.
        /// </summary>
        /// <param name="left">Compared (GithubFile</param>
        /// <param name="right">Compared (GithubFile</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GithubFile left, GithubFile right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GithubFile.
        /// </summary>
        public sealed class GithubFileBuilder
        {
            private GithubContent _Content;
            private string _Class;

            internal GithubFileBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GithubFile.Content property.
            /// </summary>
            /// <param name="value">Content</param>
            public GithubFileBuilder Content(GithubContent value)
            {
                _Content = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubFile.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GithubFileBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GithubFile.
            /// </summary>
            /// <returns>GithubFile</returns>
            public GithubFile Build()
            {
                Validate();
                return new GithubFile(
                    Content: _Content,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}