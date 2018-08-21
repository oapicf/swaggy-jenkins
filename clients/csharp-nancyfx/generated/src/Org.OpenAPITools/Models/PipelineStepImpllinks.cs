using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// PipelineStepImpllinks
    /// </summary>
    public sealed class PipelineStepImpllinks:  IEquatable<PipelineStepImpllinks>
    { 
        /// <summary>
        /// Self
        /// </summary>
        public Link Self { get; private set; }

        /// <summary>
        /// Actions
        /// </summary>
        public Link Actions { get; private set; }

        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use PipelineStepImpllinks.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public PipelineStepImpllinks()
        {
        }

        private PipelineStepImpllinks(Link Self, Link Actions, string Class)
        {
            
            this.Self = Self;
            
            this.Actions = Actions;
            
            this.Class = Class;
            
        }

        /// <summary>
        /// Returns builder of PipelineStepImpllinks.
        /// </summary>
        /// <returns>PipelineStepImpllinksBuilder</returns>
        public static PipelineStepImpllinksBuilder Builder()
        {
            return new PipelineStepImpllinksBuilder();
        }

        /// <summary>
        /// Returns PipelineStepImpllinksBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>PipelineStepImpllinksBuilder</returns>
        public PipelineStepImpllinksBuilder With()
        {
            return Builder()
                .Self(Self)
                .Actions(Actions)
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

        public bool Equals(PipelineStepImpllinks other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (PipelineStepImpllinks.
        /// </summary>
        /// <param name="left">Compared (PipelineStepImpllinks</param>
        /// <param name="right">Compared (PipelineStepImpllinks</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (PipelineStepImpllinks left, PipelineStepImpllinks right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (PipelineStepImpllinks.
        /// </summary>
        /// <param name="left">Compared (PipelineStepImpllinks</param>
        /// <param name="right">Compared (PipelineStepImpllinks</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (PipelineStepImpllinks left, PipelineStepImpllinks right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of PipelineStepImpllinks.
        /// </summary>
        public sealed class PipelineStepImpllinksBuilder
        {
            private Link _Self;
            private Link _Actions;
            private string _Class;

            internal PipelineStepImpllinksBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for PipelineStepImpllinks.Self property.
            /// </summary>
            /// <param name="value">Self</param>
            public PipelineStepImpllinksBuilder Self(Link value)
            {
                _Self = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineStepImpllinks.Actions property.
            /// </summary>
            /// <param name="value">Actions</param>
            public PipelineStepImpllinksBuilder Actions(Link value)
            {
                _Actions = value;
                return this;
            }

            /// <summary>
            /// Sets value for PipelineStepImpllinks.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public PipelineStepImpllinksBuilder Class(string value)
            {
                _Class = value;
                return this;
            }


            /// <summary>
            /// Builds instance of PipelineStepImpllinks.
            /// </summary>
            /// <returns>PipelineStepImpllinks</returns>
            public PipelineStepImpllinks Build()
            {
                Validate();
                return new PipelineStepImpllinks(
                    Self: _Self,
                    Actions: _Actions,
                    Class: _Class
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}