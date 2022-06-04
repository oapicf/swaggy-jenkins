/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = Org.OpenAPITools.Client.OpenAPIDateConverter;

namespace Org.OpenAPITools.Model
{
    /// <summary>
    /// PipelinelatestRun
    /// </summary>
    [DataContract]
    public partial class PipelinelatestRun :  IEquatable<PipelinelatestRun>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="PipelinelatestRun" /> class.
        /// </summary>
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
        /// <param name="_class">_class.</param>
        public PipelinelatestRun(List<PipelinelatestRunartifacts> artifacts = default(List<PipelinelatestRunartifacts>), int durationInMillis = default(int), int estimatedDurationInMillis = default(int), string enQueueTime = default(string), string endTime = default(string), string id = default(string), string organization = default(string), string pipeline = default(string), string result = default(string), string runSummary = default(string), string startTime = default(string), string state = default(string), string type = default(string), string commitId = default(string), string _class = default(string))
        {
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
            this.Class = _class;
        }

        /// <summary>
        /// Gets or Sets Artifacts
        /// </summary>
        [DataMember(Name="artifacts", EmitDefaultValue=false)]
        public List<PipelinelatestRunartifacts> Artifacts { get; set; }

        /// <summary>
        /// Gets or Sets DurationInMillis
        /// </summary>
        [DataMember(Name="durationInMillis", EmitDefaultValue=false)]
        public int DurationInMillis { get; set; }

        /// <summary>
        /// Gets or Sets EstimatedDurationInMillis
        /// </summary>
        [DataMember(Name="estimatedDurationInMillis", EmitDefaultValue=false)]
        public int EstimatedDurationInMillis { get; set; }

        /// <summary>
        /// Gets or Sets EnQueueTime
        /// </summary>
        [DataMember(Name="enQueueTime", EmitDefaultValue=false)]
        public string EnQueueTime { get; set; }

        /// <summary>
        /// Gets or Sets EndTime
        /// </summary>
        [DataMember(Name="endTime", EmitDefaultValue=false)]
        public string EndTime { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name="id", EmitDefaultValue=false)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets Organization
        /// </summary>
        [DataMember(Name="organization", EmitDefaultValue=false)]
        public string Organization { get; set; }

        /// <summary>
        /// Gets or Sets Pipeline
        /// </summary>
        [DataMember(Name="pipeline", EmitDefaultValue=false)]
        public string Pipeline { get; set; }

        /// <summary>
        /// Gets or Sets Result
        /// </summary>
        [DataMember(Name="result", EmitDefaultValue=false)]
        public string Result { get; set; }

        /// <summary>
        /// Gets or Sets RunSummary
        /// </summary>
        [DataMember(Name="runSummary", EmitDefaultValue=false)]
        public string RunSummary { get; set; }

        /// <summary>
        /// Gets or Sets StartTime
        /// </summary>
        [DataMember(Name="startTime", EmitDefaultValue=false)]
        public string StartTime { get; set; }

        /// <summary>
        /// Gets or Sets State
        /// </summary>
        [DataMember(Name="state", EmitDefaultValue=false)]
        public string State { get; set; }

        /// <summary>
        /// Gets or Sets Type
        /// </summary>
        [DataMember(Name="type", EmitDefaultValue=false)]
        public string Type { get; set; }

        /// <summary>
        /// Gets or Sets CommitId
        /// </summary>
        [DataMember(Name="commitId", EmitDefaultValue=false)]
        public string CommitId { get; set; }

        /// <summary>
        /// Gets or Sets Class
        /// </summary>
        [DataMember(Name="_class", EmitDefaultValue=false)]
        public string Class { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class PipelinelatestRun {\n");
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
            sb.Append("  Class: ").Append(Class).Append("\n");
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
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as PipelinelatestRun);
        }

        /// <summary>
        /// Returns true if PipelinelatestRun instances are equal
        /// </summary>
        /// <param name="input">Instance of PipelinelatestRun to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(PipelinelatestRun input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Artifacts == input.Artifacts ||
                    this.Artifacts != null &&
                    input.Artifacts != null &&
                    this.Artifacts.SequenceEqual(input.Artifacts)
                ) && 
                (
                    this.DurationInMillis == input.DurationInMillis ||
                    (this.DurationInMillis != null &&
                    this.DurationInMillis.Equals(input.DurationInMillis))
                ) && 
                (
                    this.EstimatedDurationInMillis == input.EstimatedDurationInMillis ||
                    (this.EstimatedDurationInMillis != null &&
                    this.EstimatedDurationInMillis.Equals(input.EstimatedDurationInMillis))
                ) && 
                (
                    this.EnQueueTime == input.EnQueueTime ||
                    (this.EnQueueTime != null &&
                    this.EnQueueTime.Equals(input.EnQueueTime))
                ) && 
                (
                    this.EndTime == input.EndTime ||
                    (this.EndTime != null &&
                    this.EndTime.Equals(input.EndTime))
                ) && 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Organization == input.Organization ||
                    (this.Organization != null &&
                    this.Organization.Equals(input.Organization))
                ) && 
                (
                    this.Pipeline == input.Pipeline ||
                    (this.Pipeline != null &&
                    this.Pipeline.Equals(input.Pipeline))
                ) && 
                (
                    this.Result == input.Result ||
                    (this.Result != null &&
                    this.Result.Equals(input.Result))
                ) && 
                (
                    this.RunSummary == input.RunSummary ||
                    (this.RunSummary != null &&
                    this.RunSummary.Equals(input.RunSummary))
                ) && 
                (
                    this.StartTime == input.StartTime ||
                    (this.StartTime != null &&
                    this.StartTime.Equals(input.StartTime))
                ) && 
                (
                    this.State == input.State ||
                    (this.State != null &&
                    this.State.Equals(input.State))
                ) && 
                (
                    this.Type == input.Type ||
                    (this.Type != null &&
                    this.Type.Equals(input.Type))
                ) && 
                (
                    this.CommitId == input.CommitId ||
                    (this.CommitId != null &&
                    this.CommitId.Equals(input.CommitId))
                ) && 
                (
                    this.Class == input.Class ||
                    (this.Class != null &&
                    this.Class.Equals(input.Class))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.Artifacts != null)
                    hashCode = hashCode * 59 + this.Artifacts.GetHashCode();
                if (this.DurationInMillis != null)
                    hashCode = hashCode * 59 + this.DurationInMillis.GetHashCode();
                if (this.EstimatedDurationInMillis != null)
                    hashCode = hashCode * 59 + this.EstimatedDurationInMillis.GetHashCode();
                if (this.EnQueueTime != null)
                    hashCode = hashCode * 59 + this.EnQueueTime.GetHashCode();
                if (this.EndTime != null)
                    hashCode = hashCode * 59 + this.EndTime.GetHashCode();
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.Organization != null)
                    hashCode = hashCode * 59 + this.Organization.GetHashCode();
                if (this.Pipeline != null)
                    hashCode = hashCode * 59 + this.Pipeline.GetHashCode();
                if (this.Result != null)
                    hashCode = hashCode * 59 + this.Result.GetHashCode();
                if (this.RunSummary != null)
                    hashCode = hashCode * 59 + this.RunSummary.GetHashCode();
                if (this.StartTime != null)
                    hashCode = hashCode * 59 + this.StartTime.GetHashCode();
                if (this.State != null)
                    hashCode = hashCode * 59 + this.State.GetHashCode();
                if (this.Type != null)
                    hashCode = hashCode * 59 + this.Type.GetHashCode();
                if (this.CommitId != null)
                    hashCode = hashCode * 59 + this.CommitId.GetHashCode();
                if (this.Class != null)
                    hashCode = hashCode * 59 + this.Class.GetHashCode();
                return hashCode;
            }
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
