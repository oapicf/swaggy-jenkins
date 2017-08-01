using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GetPipelineBranchesitemPullRequest
    /// </summary>
    public sealed class GetPipelineBranchesitemPullRequest:  IEquatable<GetPipelineBranchesitemPullRequest>
    { 
        /// <summary>
        /// Links
        /// </summary>
        public GetPipelineBranchesitemPullRequestLinks Links { get; private set; }

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
        /// Use GetPipelineBranchesitemPullRequest.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GetPipelineBranchesitemPullRequest()
        {
        }

        private GetPipelineBranchesitemPullRequest(GetPipelineBranchesitemPullRequestLinks Links, string Author, string Id, string Title, string Url, string Class)
        {
            
            this.Links = Links;
            
            this.Author = Author;
            
            this.Id = Id;
            
            this.Title = Title;
            
            this.Url = Url;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of GetPipelineBranchesitemPullRequest.
        /// </summary>
        /// <returns>GetPipelineBranchesitemPullRequestBuilder</returns>
        public static GetPipelineBranchesitemPullRequestBuilder Builder()
        {
            return new GetPipelineBranchesitemPullRequestBuilder();
        }

        /// <summary>
        /// Returns GetPipelineBranchesitemPullRequestBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GetPipelineBranchesitemPullRequestBuilder</returns>
        public GetPipelineBranchesitemPullRequestBuilder With()
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

        public bool Equals(GetPipelineBranchesitemPullRequest other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GetPipelineBranchesitemPullRequest.
        /// </summary>
        /// <param name="left">Compared (GetPipelineBranchesitemPullRequest</param>
        /// <param name="right">Compared (GetPipelineBranchesitemPullRequest</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GetPipelineBranchesitemPullRequest left, GetPipelineBranchesitemPullRequest right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GetPipelineBranchesitemPullRequest.
        /// </summary>
        /// <param name="left">Compared (GetPipelineBranchesitemPullRequest</param>
        /// <param name="right">Compared (GetPipelineBranchesitemPullRequest</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GetPipelineBranchesitemPullRequest left, GetPipelineBranchesitemPullRequest right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GetPipelineBranchesitemPullRequest.
        /// </summary>
        public sealed class GetPipelineBranchesitemPullRequestBuilder
        {
            private GetPipelineBranchesitemPullRequestLinks _Links;
            private string _Author;
            private string _Id;
            private string _Title;
            private string _Url;
            private string _Class;

            internal GetPipelineBranchesitemPullRequestBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemPullRequest.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public GetPipelineBranchesitemPullRequestBuilder Links(GetPipelineBranchesitemPullRequestLinks value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemPullRequest.Author property.
            /// </summary>
            /// <param name="value">Author</param>
            public GetPipelineBranchesitemPullRequestBuilder Author(string value)
            {
                _Author = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemPullRequest.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public GetPipelineBranchesitemPullRequestBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemPullRequest.Title property.
            /// </summary>
            /// <param name="value">Title</param>
            public GetPipelineBranchesitemPullRequestBuilder Title(string value)
            {
                _Title = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemPullRequest.Url property.
            /// </summary>
            /// <param name="value">Url</param>
            public GetPipelineBranchesitemPullRequestBuilder Url(string value)
            {
                _Url = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemPullRequest.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GetPipelineBranchesitemPullRequestBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GetPipelineBranchesitemPullRequest.
            /// </summary>
            /// <returns>GetPipelineBranchesitemPullRequest</returns>
            public GetPipelineBranchesitemPullRequest Build()
            {
                Validate();
                return new GetPipelineBranchesitemPullRequest(
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
