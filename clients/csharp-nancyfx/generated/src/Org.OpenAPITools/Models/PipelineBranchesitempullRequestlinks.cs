using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// PipelineBranchesitempullRequestlinks
    /// </summary>
    public sealed class PipelineBranchesitempullRequestlinks:  IEquatable<PipelineBranchesitempullRequestlinks>
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
        /// Use PipelineBranchesitempullRequestlinks.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineBranchesitempullRequestlinks()
        {
        }

        private PipelineBranchesitempullRequestlinks(string Self, string Class)
        {
            
            this.Self = Self;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of PipelineBranchesitempullRequestlinks.
        /// </summary>
        /// <returns>PipelineBranchesitempullRequestlinksBuilder</returns>
        public static PipelineBranchesitempullRequestlinksBuilder Builder()
        {
            return new PipelineBranchesitempullRequestlinksBuilder();
        }

        /// <summary>
        /// Returns PipelineBranchesitempullRequestlinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineBranchesitempullRequestlinksBuilder</returns>
        public PipelineBranchesitempullRequestlinksBuilder With()
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

        public bool Equals(PipelineBranchesitempullRequestlinks other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineBranchesitempullRequestlinks.
        /// </summary>
        /// <param name="left">Compared (PipelineBranchesitempullRequestlinks</param>
        /// <param name="right">Compared (PipelineBranchesitempullRequestlinks</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineBranchesitempullRequestlinks left, PipelineBranchesitempullRequestlinks right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineBranchesitempullRequestlinks.
        /// </summary>
        /// <param name="left">Compared (PipelineBranchesitempullRequestlinks</param>
        /// <param name="right">Compared (PipelineBranchesitempullRequestlinks</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineBranchesitempullRequestlinks left, PipelineBranchesitempullRequestlinks right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineBranchesitempullRequestlinks.
        /// </summary>
        public sealed class PipelineBranchesitempullRequestlinksBuilder
        {
            private string _Self;
            private string _Class;

            internal PipelineBranchesitempullRequestlinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineBranchesitempullRequestlinks.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public PipelineBranchesitempullRequestlinksBuilder Self(string value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineBranchesitempullRequestlinks.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineBranchesitempullRequestlinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineBranchesitempullRequestlinks.
            /// </summary>
            /// <returns>PipelineBranchesitempullRequestlinks</returns>
            public PipelineBranchesitempullRequestlinks Build()
            {
                Validate();
                return new PipelineBranchesitempullRequestlinks(
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