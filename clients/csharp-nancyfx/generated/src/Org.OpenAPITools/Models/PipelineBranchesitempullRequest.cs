using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// PipelineBranchesitempullRequest
    /// </summary>
    public sealed class PipelineBranchesitempullRequest:  IEquatable<PipelineBranchesitempullRequest>
    { 
        /// <summary>
        /// Links
        /// </summary>
        public PipelineBranchesitempullRequestlinks Links { get; private set; }

        /// <summary>
        /// Author
        /// </summary>
        public string Author { get; private set; }

        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// Title
        /// </summary>
        public string Title { get; private set; }

        /// <summary>
        /// Url
        /// </summary>
        public string Url { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineBranchesitempullRequest.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineBranchesitempullRequest()
        {
        }

        private PipelineBranchesitempullRequest(PipelineBranchesitempullRequestlinks Links, string Author, string Id, string Title, string Url, string Class)
        {
            
            this.Links = Links;
            
            this.Author = Author;
            
            this.Id = Id;
            
            this.Title = Title;
            
            this.Url = Url;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of PipelineBranchesitempullRequest.
        /// </summary>
        /// <returns>PipelineBranchesitempullRequestBuilder</returns>
        public static PipelineBranchesitempullRequestBuilder Builder()
        {
            return new PipelineBranchesitempullRequestBuilder();
        }

        /// <summary>
        /// Returns PipelineBranchesitempullRequestBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineBranchesitempullRequestBuilder</returns>
        public PipelineBranchesitempullRequestBuilder With()
        {
            return Builder()
                .Links(Links)
                .Author(Author)
                .Id(Id)
                .Title(Title)
                .Url(Url)
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

        public bool Equals(PipelineBranchesitempullRequest other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineBranchesitempullRequest.
        /// </summary>
        /// <param name="left">Compared (PipelineBranchesitempullRequest</param>
        /// <param name="right">Compared (PipelineBranchesitempullRequest</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineBranchesitempullRequest left, PipelineBranchesitempullRequest right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineBranchesitempullRequest.
        /// </summary>
        /// <param name="left">Compared (PipelineBranchesitempullRequest</param>
        /// <param name="right">Compared (PipelineBranchesitempullRequest</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineBranchesitempullRequest left, PipelineBranchesitempullRequest right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineBranchesitempullRequest.
        /// </summary>
        public sealed class PipelineBranchesitempullRequestBuilder
        {
            private PipelineBranchesitempullRequestlinks _Links;
            private string _Author;
            private string _Id;
            private string _Title;
            private string _Url;
            private string _Class;

            internal PipelineBranchesitempullRequestBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineBranchesitempullRequest.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public PipelineBranchesitempullRequestBuilder Links(PipelineBranchesitempullRequestlinks value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitempullRequest.Author property.
            /// </summary>
            /// <param name="value">Author</param>
            public PipelineBranchesitempullRequestBuilder Author(string value)
            {
                _Author = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitempullRequest.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public PipelineBranchesitempullRequestBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitempullRequest.Title property.
            /// </summary>
            /// <param name="value">Title</param>
            public PipelineBranchesitempullRequestBuilder Title(string value)
            {
                _Title = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitempullRequest.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public PipelineBranchesitempullRequestBuilder Url(string value)
            {
                _Url = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitempullRequest.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineBranchesitempullRequestBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineBranchesitempullRequest.
            /// </summary>
            /// <returns>PipelineBranchesitempullRequest</returns>
            public PipelineBranchesitempullRequest Build()
            {
                Validate();
                return new PipelineBranchesitempullRequest(
                    Links: _Links,
                    Author: _Author,
                    Id: _Id,
                    Title: _Title,
                    Url: _Url,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}