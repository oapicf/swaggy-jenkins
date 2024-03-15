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
    /// PipelineActivity
    /// </summary>
    [DataContract(Name = "PipelineActivity")]
    public partial class PipelineActivity : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="PipelineActivity" /> class.
        /// </summary>
        /// <param name="varClass">varClass.</param>
        /// <param name="artifacts">artifacts.</param>
        /// <param name="durationInMillis">durationInMillis.</param>
        /// <param name="estimatedDurationInMillis">estimatedDurationInMillis.</param>
        /// <param name="enQueueTime">enQueueTime.</param>
        /// <param name="endTime">endTime.</param>
        /// <param name="id">id.</param>
        /// <param name="organization">organization.</param>
        /// <param name="pipeline">pipeline.</param>
        /// <param name="result">result.</param>
        /// <param name="runSummary">runSummary.</param>
        /// <param name="startTime">startTime.</param>
        /// <param name="state">state.</param>
        /// <param name="type">type.</param>
        /// <param name="commitId">commitId.</param>
        public PipelineActivity(string varClass = default(string), List<PipelineActivityartifacts> artifacts = default(List<PipelineActivityartifacts>), int durationInMillis = default(int), int estimatedDurationInMillis = default(int), string enQueueTime = default(string), string endTime = default(string), string id = default(string), string organization = default(string), string pipeline = default(string), string result = default(string), string runSummary = default(string), string startTime = default(string), string state = default(string), string type = default(string), string commitId = default(string))
        {
            this.VarClass = varClass;
            this.Artifacts = artifacts;
            this.DurationInMillis = durationInMillis;
            this.EstimatedDurationInMillis = estimatedDurationInMillis;
            this.EnQueueTime = enQueueTime;
            this.EndTime = endTime;
            this.Id = id;
            this.Organization = organization;
            this.Pipeline = pipeline;
            this.Result = result;
            this.RunSummary = runSummary;
            this.StartTime = startTime;
            this.State = state;
            this.Type = type;
            this.CommitId = commitId;
        }

        /// <summary>
        /// Gets or Sets VarClass
        /// </summary>
        [DataMember(Name = "_class", EmitDefaultValue = false)]
        public string VarClass { get; set; }

        /// <summary>
        /// Gets or Sets Artifacts
        /// </summary>
        [DataMember(Name = "artifacts", EmitDefaultValue = false)]
        public List<PipelineActivityartifacts> Artifacts { get; set; }

        /// <summary>
        /// Gets or Sets DurationInMillis
        /// </summary>
        [DataMember(Name = "durationInMillis", EmitDefaultValue = false)]
        public int DurationInMillis { get; set; }

        /// <summary>
        /// Gets or Sets EstimatedDurationInMillis
        /// </summary>
        [DataMember(Name = "estimatedDurationInMillis", EmitDefaultValue = false)]
        public int EstimatedDurationInMillis { get; set; }

        /// <summary>
        /// Gets or Sets EnQueueTime
        /// </summary>
        [DataMember(Name = "enQueueTime", EmitDefaultValue = false)]
        public string EnQueueTime { get; set; }

        /// <summary>
        /// Gets or Sets EndTime
        /// </summary>
        [DataMember(Name = "endTime", EmitDefaultValue = false)]
        public string EndTime { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets Organization
        /// </summary>
        [DataMember(Name = "organization", EmitDefaultValue = false)]
        public string Organization { get; set; }

        /// <summary>
        /// Gets or Sets Pipeline
        /// </summary>
        [DataMember(Name = "pipeline", EmitDefaultValue = false)]
        public string Pipeline { get; set; }

        /// <summary>
        /// Gets or Sets Result
        /// </summary>
        [DataMember(Name = "result", EmitDefaultValue = false)]
        public string Result { get; set; }

        /// <summary>
        /// Gets or Sets RunSummary
        /// </summary>
        [DataMember(Name = "runSummary", EmitDefaultValue = false)]
        public string RunSummary { get; set; }

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
        /// Gets or Sets Type
        /// </summary>
        [DataMember(Name = "type", EmitDefaultValue = false)]
        public string Type { get; set; }

        /// <summary>
        /// Gets or Sets CommitId
        /// </summary>
        [DataMember(Name = "commitId", EmitDefaultValue = false)]
        public string CommitId { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class PipelineActivity {\n");
            sb.Append("  VarClass: ").Append(VarClass).Append("\n");
            sb.Append("  Artifacts: ").Append(Artifacts).Append("\n");
            sb.Append("  DurationInMillis: ").Append(DurationInMillis).Append("\n");
            sb.Append("  EstimatedDurationInMillis: ").Append(EstimatedDurationInMillis).Append("\n");
            sb.Append("  EnQueueTime: ").Append(EnQueueTime).Append("\n");
            sb.Append("  EndTime: ").Append(EndTime).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Organization: ").Append(Organization).Append("\n");
            sb.Append("  Pipeline: ").Append(Pipeline).Append("\n");
            sb.Append("  Result: ").Append(Result).Append("\n");
            sb.Append("  RunSummary: ").Append(RunSummary).Append("\n");
            sb.Append("  StartTime: ").Append(StartTime).Append("\n");
            sb.Append("  State: ").Append(State).Append("\n");
            sb.Append("  Type: ").Append(Type).Append("\n");
            sb.Append("  CommitId: ").Append(CommitId).Append("\n");
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
