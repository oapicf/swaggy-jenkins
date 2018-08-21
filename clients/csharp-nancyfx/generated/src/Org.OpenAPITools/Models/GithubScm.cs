using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// GithubScm
    /// </summary>
    public sealed class GithubScm:  IEquatable<GithubScm>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Links
        /// </summary>
        public GithubScmlinks Links { get; private set; }

        /// <summary>
        /// CredentialId
        /// </summary>
        public string CredentialId { get; private set; }

        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// Uri
        /// </summary>
        public string Uri { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use GithubScm.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public GithubScm()
        {
        }

        private GithubScm(string Class, GithubScmlinks Links, string CredentialId, string Id, string Uri)
        {
            
            this.Class = Class;
            
            this.Links = Links;
            
            this.CredentialId = CredentialId;
            
            this.Id = Id;
            
            this.Uri = Uri;
            
        }

        /// <summary>
        /// Returns builder of GithubScm.
        /// </summary>
        /// <returns>GithubScmBuilder</returns>
        public static GithubScmBuilder Builder()
        {
            return new GithubScmBuilder();
        }

        /// <summary>
        /// Returns GithubScmBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>GithubScmBuilder</returns>
        public GithubScmBuilder With()
        {
            return Builder()
                .Class(Class)
                .Links(Links)
                .CredentialId(CredentialId)
                .Id(Id)
                .Uri(Uri);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(GithubScm other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (GithubScm.
        /// </summary>
        /// <param name="left">Compared (GithubScm</param>
        /// <param name="right">Compared (GithubScm</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (GithubScm left, GithubScm right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (GithubScm.
        /// </summary>
        /// <param name="left">Compared (GithubScm</param>
        /// <param name="right">Compared (GithubScm</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (GithubScm left, GithubScm right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of GithubScm.
        /// </summary>
        public sealed class GithubScmBuilder
        {
            private string _Class;
            private GithubScmlinks _Links;
            private string _CredentialId;
            private string _Id;
            private string _Uri;

            internal GithubScmBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for GithubScm.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public GithubScmBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubScm.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public GithubScmBuilder Links(GithubScmlinks value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubScm.CredentialId property.
            /// </summary>
            /// <param name="value">CredentialId</param>
            public GithubScmBuilder CredentialId(string value)
            {
                _CredentialId = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubScm.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public GithubScmBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for GithubScm.Uri property.
            /// </summary>
            /// <param name="value">Uri</param>
            public GithubScmBuilder Uri(string value)
            {
                _Uri = value;
                return this;
            }


            /// <summary>
            /// Builds instance of GithubScm.
            /// </summary>
            /// <returns>GithubScm</returns>
            public GithubScm Build()
            {
                Validate();
                return new GithubScm(
                    Class: _Class,
                    Links: _Links,
                    CredentialId: _CredentialId,
                    Id: _Id,
                    Uri: _Uri
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}