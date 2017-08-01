using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace IO.Swagger..Models
{
    /// <summary>
    /// IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl
    /// </summary>
    public sealed class IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl:  IEquatable<IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// DisplayName
        /// </summary>
        public string DisplayName { get; private set; }

        /// <summary>
        /// FullName
        /// </summary>
        public string FullName { get; private set; }

        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }

        /// <summary>
        /// Organization
        /// </summary>
        public string Organization { get; private set; }

        /// <summary>
        /// NumberOfFolders
        /// </summary>
        public int? NumberOfFolders { get; private set; }

        /// <summary>
        /// NumberOfPipelines
        /// </summary>
        public int? NumberOfPipelines { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl()
        {
        }

        private IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl(string Class, string DisplayName, string FullName, string Name, string Organization, int? NumberOfFolders, int? NumberOfPipelines)
        {
            
            this.Class = Class;
            
            this.DisplayName = DisplayName;
            
            this.FullName = FullName;
            
            this.Name = Name;
            
            this.Organization = Organization;
            
            this.NumberOfFolders = NumberOfFolders;
            
            this.NumberOfPipelines = NumberOfPipelines;
            
        }

        /// <summary>
        /// Returns builder of IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.
        /// </summary>
        /// <returns>IojenkinsblueoceanserviceembeddedrestPipelineFolderImplBuilder</returns>
        public static IojenkinsblueoceanserviceembeddedrestPipelineFolderImplBuilder Builder()
        {
            return new IojenkinsblueoceanserviceembeddedrestPipelineFolderImplBuilder();
        }

        /// <summary>
        /// Returns IojenkinsblueoceanserviceembeddedrestPipelineFolderImplBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>IojenkinsblueoceanserviceembeddedrestPipelineFolderImplBuilder</returns>
        public IojenkinsblueoceanserviceembeddedrestPipelineFolderImplBuilder With()
        {
            return Builder()
                .Class(Class)
                .DisplayName(DisplayName)
                .FullName(FullName)
                .Name(Name)
                .Organization(Organization)
                .NumberOfFolders(NumberOfFolders)
                .NumberOfPipelines(NumberOfPipelines);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl</param>
        /// <param name="right">Compared (IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl left, IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.
        /// </summary>
        /// <param name="left">Compared (IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl</param>
        /// <param name="right">Compared (IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl left, IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.
        /// </summary>
        public sealed class IojenkinsblueoceanserviceembeddedrestPipelineFolderImplBuilder
        {
            private string _Class;
            private string _DisplayName;
            private string _FullName;
            private string _Name;
            private string _Organization;
            private int? _NumberOfFolders;
            private int? _NumberOfPipelines;

            internal IojenkinsblueoceanserviceembeddedrestPipelineFolderImplBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public IojenkinsblueoceanserviceembeddedrestPipelineFolderImplBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public IojenkinsblueoceanserviceembeddedrestPipelineFolderImplBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.FullName property.
            /// </summary>
            /// <param name="value">FullName</param>
            public IojenkinsblueoceanserviceembeddedrestPipelineFolderImplBuilder FullName(string value)
            {
                _FullName = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public IojenkinsblueoceanserviceembeddedrestPipelineFolderImplBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public IojenkinsblueoceanserviceembeddedrestPipelineFolderImplBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.NumberOfFolders property.
            /// </summary>
            /// <param name="value">NumberOfFolders</param>
            public IojenkinsblueoceanserviceembeddedrestPipelineFolderImplBuilder NumberOfFolders(int? value)
            {
                _NumberOfFolders = value;
                return this;
            }

            /// <summary>
            /// Sets value for IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.NumberOfPipelines property.
            /// </summary>
            /// <param name="value">NumberOfPipelines</param>
            public IojenkinsblueoceanserviceembeddedrestPipelineFolderImplBuilder NumberOfPipelines(int? value)
            {
                _NumberOfPipelines = value;
                return this;
            }


            /// <summary>
            /// Builds instance of IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.
            /// </summary>
            /// <returns>IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl</returns>
            public IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl Build()
            {
                Validate();
                return new IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl(
                    Class: _Class,
                    DisplayName: _DisplayName,
                    FullName: _FullName,
                    Name: _Name,
                    Organization: _Organization,
                    NumberOfFolders: _NumberOfFolders,
                    NumberOfPipelines: _NumberOfPipelines
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
