/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = Org.OpenAPITools.Client.OpenAPIDateConverter;

namespace Org.OpenAPITools.Model
{
    /// <summary>
    /// PipelineStepImpl
    /// </summary>
    [DataContract(Name = "PipelineStepImpl")]
    public partial class PipelineStepImpl : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="PipelineStepImpl" /> class.
        /// </summary>
        /// <param name="varClass">varClass.</param>
        /// <param name="links">links.</param>
        /// <param name="displayName">displayName.</param>
        /// <param name="durationInMillis">durationInMillis.</param>
        /// <param name="id">id.</param>
        /// <param name="input">input.</param>
        /// <param name="result">result.</param>
        /// <param name="startTime">startTime.</param>
        /// <param name="state">state.</param>
        public PipelineStepImpl(string varClass = default(string), PipelineStepImpllinks links = default(PipelineStepImpllinks), string displayName = default(string), int durationInMillis = default(int), string id = default(string), InputStepImpl input = default(InputStepImpl), string result = default(string), string startTime = default(string), string state = default(string))
        {
            this.VarClass = varClass;
            this.Links = links;
            this.DisplayName = displayName;
            this.DurationInMillis = durationInMillis;
            this.Id = id;
            this.Input = input;
            this.Result = result;
            this.StartTime = startTime;
            this.State = state;
        }

        /// <summary>
        /// Gets or Sets VarClass
        /// </summary>
        [DataMember(Name = "_class", EmitDefaultValue = false)]
        public string VarClass { get; set; }

        /// <summary>
        /// Gets or Sets Links
        /// </summary>
        [DataMember(Name = "_links", EmitDefaultValue = false)]
        public PipelineStepImpllinks Links { get; set; }

        /// <summary>
        /// Gets or Sets DisplayName
        /// </summary>
        [DataMember(Name = "displayName", EmitDefaultValue = false)]
        public string DisplayName { get; set; }

        /// <summary>
        /// Gets or Sets DurationInMillis
        /// </summary>
        [DataMember(Name = "durationInMillis", EmitDefaultValue = false)]
        public int DurationInMillis { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets Input
        /// </summary>
        [DataMember(Name = "input", EmitDefaultValue = false)]
        public InputStepImpl Input { get; set; }

        /// <summary>
        /// Gets or Sets Result
        /// </summary>
        [DataMember(Name = "result", EmitDefaultValue = false)]
        public string Result { get; set; }

        /// <summary>
        /// Gets or Sets StartTime
        /// </summary>
        [DataMember(Name = "startTime", EmitDefaultValue = false)]
        public string StartTime { get; set; }

        /// <summary>
        /// Gets or Sets State
        /// </summary>
        [DataMember(Name = "state", EmitDefaultValue = false)]
        public string State { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class PipelineStepImpl {\n");
            sb.Append("  VarClass: ").Append(VarClass).Append("\n");
            sb.Append("  Links: ").Append(Links).Append("\n");
            sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
            sb.Append("  DurationInMillis: ").Append(DurationInMillis).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Input: ").Append(Input).Append("\n");
            sb.Append("  Result: ").Append(Result).Append("\n");
            sb.Append("  StartTime: ").Append(StartTime).Append("\n");
            sb.Append("  State: ").Append(State).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
