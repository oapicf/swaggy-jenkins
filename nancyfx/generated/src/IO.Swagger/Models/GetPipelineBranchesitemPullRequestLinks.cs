using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// GetPipelineBranchesitemPullRequestLinks
    /// </summary>
    public sealed class GetPipelineBranchesitemPullRequestLinks:  IEquatable<GetPipelineBranchesitemPullRequestLinks>
    { 
        /// <summary>
        /// Self
        /// </summary>
        public string Self { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use GetPipelineBranchesitemPullRequestLinks.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GetPipelineBranchesitemPullRequestLinks()
        {
        }

        private GetPipelineBranchesitemPullRequestLinks(string Self, string Class)
        {
            
            this.Self = Self;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of GetPipelineBranchesitemPullRequestLinks.
        /// </summary>
        /// <returns>GetPipelineBranchesitemPullRequestLinksBuilder</returns>
        public static GetPipelineBranchesitemPullRequestLinksBuilder Builder()
        {
            return new GetPipelineBranchesitemPullRequestLinksBuilder();
        }

        /// <summary>
        /// Returns GetPipelineBranchesitemPullRequestLinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GetPipelineBranchesitemPullRequestLinksBuilder</returns>
        public GetPipelineBranchesitemPullRequestLinksBuilder With()
        {
            return Builder()
                .Self(Self)
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

        public bool Equals(GetPipelineBranchesitemPullRequestLinks other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GetPipelineBranchesitemPullRequestLinks.
        /// </summary>
        /// <param name="left">Compared (GetPipelineBranchesitemPullRequestLinks</param>
        /// <param name="right">Compared (GetPipelineBranchesitemPullRequestLinks</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GetPipelineBranchesitemPullRequestLinks left, GetPipelineBranchesitemPullRequestLinks right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GetPipelineBranchesitemPullRequestLinks.
        /// </summary>
        /// <param name="left">Compared (GetPipelineBranchesitemPullRequestLinks</param>
        /// <param name="right">Compared (GetPipelineBranchesitemPullRequestLinks</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GetPipelineBranchesitemPullRequestLinks left, GetPipelineBranchesitemPullRequestLinks right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GetPipelineBranchesitemPullRequestLinks.
        /// </summary>
        public sealed class GetPipelineBranchesitemPullRequestLinksBuilder
        {
            private string _Self;
            private string _Class;

            internal GetPipelineBranchesitemPullRequestLinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemPullRequestLinks.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public GetPipelineBranchesitemPullRequestLinksBuilder Self(string value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for GetPipelineBranchesitemPullRequestLinks.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GetPipelineBranchesitemPullRequestLinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GetPipelineBranchesitemPullRequestLinks.
            /// </summary>
            /// <returns>GetPipelineBranchesitemPullRequestLinks</returns>
            public GetPipelineBranchesitemPullRequestLinks Build()
            {
                Validate();
                return new GetPipelineBranchesitemPullRequestLinks(
                    Self: _Self,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
