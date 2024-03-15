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
    /// PipelineRunNode
    /// </summary>
    [DataContract(Name = "PipelineRunNode")]
    public partial class PipelineRunNode : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="PipelineRunNode" /> class.
        /// </summary>
        /// <param name="varClass">varClass.</param>
        /// <param name="displayName">displayName.</param>
        /// <param name="durationInMillis">durationInMillis.</param>
        /// <param name="edges">edges.</param>
        /// <param name="id">id.</param>
        /// <param name="result">result.</param>
        /// <param name="startTime">startTime.</param>
        /// <param name="state">state.</param>
        public PipelineRunNode(string varClass = default(string), string displayName = default(string), int durationInMillis = default(int), List<PipelineRunNodeedges> edges = default(List<PipelineRunNodeedges>), string id = default(string), string result = default(string), string startTime = default(string), string state = default(string))
        {
            this.VarClass = varClass;
            this.DisplayName = displayName;
            this.DurationInMillis = durationInMillis;
            this.Edges = edges;
            this.Id = id;
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
        /// Gets or Sets Edges
        /// </summary>
        [DataMember(Name = "edges", EmitDefaultValue = false)]
        public List<PipelineRunNodeedges> Edges { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        public string Id { get; set; }

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
            sb.Append("class PipelineRunNode {\n");
            sb.Append("  VarClass: ").Append(VarClass).Append("\n");
            sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
            sb.Append("  DurationInMillis: ").Append(DurationInMillis).Append("\n");
            sb.Append("  Edges: ").Append(Edges).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
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
