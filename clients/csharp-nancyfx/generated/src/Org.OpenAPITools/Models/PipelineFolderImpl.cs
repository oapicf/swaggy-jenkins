using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// PipelineFolderImpl
    /// </summary>
    public sealed class PipelineFolderImpl:  IEquatable<PipelineFolderImpl>
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
        /// Use PipelineFolderImpl.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineFolderImpl()
        {
        }

        private PipelineFolderImpl(string Class, string DisplayName, string FullName, string Name, string Organization, int? NumberOfFolders, int? NumberOfPipelines)
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
        /// Returns builder of PipelineFolderImpl.
        /// </summary>
        /// <returns>PipelineFolderImplBuilder</returns>
        public static PipelineFolderImplBuilder Builder()
        {
            return new PipelineFolderImplBuilder();
        }

        /// <summary>
        /// Returns PipelineFolderImplBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineFolderImplBuilder</returns>
        public PipelineFolderImplBuilder With()
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

        public bool Equals(PipelineFolderImpl other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineFolderImpl.
        /// </summary>
        /// <param name="left">Compared (PipelineFolderImpl</param>
        /// <param name="right">Compared (PipelineFolderImpl</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineFolderImpl left, PipelineFolderImpl right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineFolderImpl.
        /// </summary>
        /// <param name="left">Compared (PipelineFolderImpl</param>
        /// <param name="right">Compared (PipelineFolderImpl</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineFolderImpl left, PipelineFolderImpl right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineFolderImpl.
        /// </summary>
        public sealed class PipelineFolderImplBuilder
        {
            private string _Class;
            private string _DisplayName;
            private string _FullName;
            private string _Name;
            private string _Organization;
            private int? _NumberOfFolders;
            private int? _NumberOfPipelines;

            internal PipelineFolderImplBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineFolderImpl.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineFolderImplBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineFolderImpl.DisplayName property.
            /// </summary>
            /// <param name="value">DisplayName</param>
            public PipelineFolderImplBuilder DisplayName(string value)
            {
                _DisplayName = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineFolderImpl.FullName property.
            /// </summary>
            /// <param name="value">FullName</param>
            public PipelineFolderImplBuilder FullName(string value)
            {
                _FullName = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineFolderImpl.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public PipelineFolderImplBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineFolderImpl.Organization property.
            /// </summary>
            /// <param name="value">Organization</param>
            public PipelineFolderImplBuilder Organization(string value)
            {
                _Organization = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineFolderImpl.NumberOfFolders property.
            /// </summary>
            /// <param name="value">NumberOfFolders</param>
            public PipelineFolderImplBuilder NumberOfFolders(int? value)
            {
                _NumberOfFolders = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineFolderImpl.NumberOfPipelines property.
            /// </summary>
            /// <param name="value">NumberOfPipelines</param>
            public PipelineFolderImplBuilder NumberOfPipelines(int? value)
            {
                _NumberOfPipelines = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineFolderImpl.
            /// </summary>
            /// <returns>PipelineFolderImpl</returns>
            public PipelineFolderImpl Build()
            {
                Validate();
                return new PipelineFolderImpl(
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