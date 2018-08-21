using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools..Models
{
    /// <summary>
    /// InputStepImpl
    /// </summary>
    public sealed class InputStepImpl:  IEquatable<InputStepImpl>
    { 
        /// <summary>
        /// Class
        /// </summary>
        public string Class { get; private set; }

        /// <summary>
        /// Links
        /// </summary>
        public InputStepImpllinks Links { get; private set; }

        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// Message
        /// </summary>
        public string Message { get; private set; }

        /// <summary>
        /// Ok
        /// </summary>
        public string Ok { get; private set; }

        /// <summary>
        /// Parameters
        /// </summary>
        public List<StringParameterDefinition> Parameters { get; private set; }

        /// <summary>
        /// Submitter
        /// </summary>
        public string Submitter { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use InputStepImpl.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public InputStepImpl()
        {
        }

        private InputStepImpl(string Class, InputStepImpllinks Links, string Id, string Message, string Ok, List<StringParameterDefinition> Parameters, string Submitter)
        {
            
            this.Class = Class;
            
            this.Links = Links;
            
            this.Id = Id;
            
            this.Message = Message;
            
            this.Ok = Ok;
            
            this.Parameters = Parameters;
            
            this.Submitter = Submitter;
            
        }

        /// <summary>
        /// Returns builder of InputStepImpl.
        /// </summary>
        /// <returns>InputStepImplBuilder</returns>
        public static InputStepImplBuilder Builder()
        {
            return new InputStepImplBuilder();
        }

        /// <summary>
        /// Returns InputStepImplBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>InputStepImplBuilder</returns>
        public InputStepImplBuilder With()
        {
            return Builder()
                .Class(Class)
                .Links(Links)
                .Id(Id)
                .Message(Message)
                .Ok(Ok)
                .Parameters(Parameters)
                .Submitter(Submitter);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(InputStepImpl other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (InputStepImpl.
        /// </summary>
        /// <param name="left">Compared (InputStepImpl</param>
        /// <param name="right">Compared (InputStepImpl</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (InputStepImpl left, InputStepImpl right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (InputStepImpl.
        /// </summary>
        /// <param name="left">Compared (InputStepImpl</param>
        /// <param name="right">Compared (InputStepImpl</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (InputStepImpl left, InputStepImpl right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of InputStepImpl.
        /// </summary>
        public sealed class InputStepImplBuilder
        {
            private string _Class;
            private InputStepImpllinks _Links;
            private string _Id;
            private string _Message;
            private string _Ok;
            private List<StringParameterDefinition> _Parameters;
            private string _Submitter;

            internal InputStepImplBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for InputStepImpl.Class property.
            /// </summary>
            /// <param name="value">Class</param>
            public InputStepImplBuilder Class(string value)
            {
                _Class = value;
                return this;
            }

            /// <summary>
            /// Sets value for InputStepImpl.Links property.
            /// </summary>
            /// <param name="value">Links</param>
            public InputStepImplBuilder Links(InputStepImpllinks value)
            {
                _Links = value;
                return this;
            }

            /// <summary>
            /// Sets value for InputStepImpl.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public InputStepImplBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for InputStepImpl.Message property.
            /// </summary>
            /// <param name="value">Message</param>
            public InputStepImplBuilder Message(string value)
            {
                _Message = value;
                return this;
            }

            /// <summary>
            /// Sets value for InputStepImpl.Ok property.
            /// </summary>
            /// <param name="value">Ok</param>
            public InputStepImplBuilder Ok(string value)
            {
                _Ok = value;
                return this;
            }

            /// <summary>
            /// Sets value for InputStepImpl.Parameters property.
            /// </summary>
            /// <param name="value">Parameters</param>
            public InputStepImplBuilder Parameters(List<StringParameterDefinition> value)
            {
                _Parameters = value;
                return this;
            }

            /// <summary>
            /// Sets value for InputStepImpl.Submitter property.
            /// </summary>
            /// <param name="value">Submitter</param>
            public InputStepImplBuilder Submitter(string value)
            {
                _Submitter = value;
                return this;
            }


            /// <summary>
            /// Builds instance of InputStepImpl.
            /// </summary>
            /// <returns>InputStepImpl</returns>
            public InputStepImpl Build()
            {
                Validate();
                return new InputStepImpl(
                    Class: _Class,
                    Links: _Links,
                    Id: _Id,
                    Message: _Message,
                    Ok: _Ok,
                    Parameters: _Parameters,
                    Submitter: _Submitter
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}