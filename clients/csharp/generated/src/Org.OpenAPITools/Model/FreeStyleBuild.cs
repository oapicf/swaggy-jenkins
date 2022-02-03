/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
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
    /// FreeStyleBuild
    /// </summary>
    [DataContract]
    public partial class FreeStyleBuild :  IEquatable<FreeStyleBuild>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="FreeStyleBuild" /> class.
        /// </summary>
        /// <param name="_class">_class.</param>
        /// <param name="number">number.</param>
        /// <param name="url">url.</param>
        /// <param name="actions">actions.</param>
        /// <param name="building">building.</param>
        /// <param name="description">description.</param>
        /// <param name="displayName">displayName.</param>
        /// <param name="duration">duration.</param>
        /// <param name="estimatedDuration">estimatedDuration.</param>
        /// <param name="executor">executor.</param>
        /// <param name="fullDisplayName">fullDisplayName.</param>
        /// <param name="id">id.</param>
        /// <param name="keepLog">keepLog.</param>
        /// <param name="queueId">queueId.</param>
        /// <param name="result">result.</param>
        /// <param name="timestamp">timestamp.</param>
        /// <param name="builtOn">builtOn.</param>
        /// <param name="changeSet">changeSet.</param>
        public FreeStyleBuild(string _class = default(string), int number = default(int), string url = default(string), List<CauseAction> actions = default(List<CauseAction>), bool building = default(bool), string description = default(string), string displayName = default(string), int duration = default(int), int estimatedDuration = default(int), string executor = default(string), string fullDisplayName = default(string), string id = default(string), bool keepLog = default(bool), int queueId = default(int), string result = default(string), int timestamp = default(int), string builtOn = default(string), EmptyChangeLogSet changeSet = default(EmptyChangeLogSet))
        {
            this.Class = _class;
            this.Number = number;
            this.Url = url;
            this.Actions = actions;
            this.Building = building;
            this.Description = description;
            this.DisplayName = displayName;
            this.Duration = duration;
            this.EstimatedDuration = estimatedDuration;
            this.Executor = executor;
            this.FullDisplayName = fullDisplayName;
            this.Id = id;
            this.KeepLog = keepLog;
            this.QueueId = queueId;
            this.Result = result;
            this.Timestamp = timestamp;
            this.BuiltOn = builtOn;
            this.ChangeSet = changeSet;
        }

        /// <summary>
        /// Gets or Sets Class
        /// </summary>
        [DataMember(Name="_class", EmitDefaultValue=false)]
        public string Class { get; set; }

        /// <summary>
        /// Gets or Sets Number
        /// </summary>
        [DataMember(Name="number", EmitDefaultValue=false)]
        public int Number { get; set; }

        /// <summary>
        /// Gets or Sets Url
        /// </summary>
        [DataMember(Name="url", EmitDefaultValue=false)]
        public string Url { get; set; }

        /// <summary>
        /// Gets or Sets Actions
        /// </summary>
        [DataMember(Name="actions", EmitDefaultValue=false)]
        public List<CauseAction> Actions { get; set; }

        /// <summary>
        /// Gets or Sets Building
        /// </summary>
        [DataMember(Name="building", EmitDefaultValue=false)]
        public bool Building { get; set; }

        /// <summary>
        /// Gets or Sets Description
        /// </summary>
        [DataMember(Name="description", EmitDefaultValue=false)]
        public string Description { get; set; }

        /// <summary>
        /// Gets or Sets DisplayName
        /// </summary>
        [DataMember(Name="displayName", EmitDefaultValue=false)]
        public string DisplayName { get; set; }

        /// <summary>
        /// Gets or Sets Duration
        /// </summary>
        [DataMember(Name="duration", EmitDefaultValue=false)]
        public int Duration { get; set; }

        /// <summary>
        /// Gets or Sets EstimatedDuration
        /// </summary>
        [DataMember(Name="estimatedDuration", EmitDefaultValue=false)]
        public int EstimatedDuration { get; set; }

        /// <summary>
        /// Gets or Sets Executor
        /// </summary>
        [DataMember(Name="executor", EmitDefaultValue=false)]
        public string Executor { get; set; }

        /// <summary>
        /// Gets or Sets FullDisplayName
        /// </summary>
        [DataMember(Name="fullDisplayName", EmitDefaultValue=false)]
        public string FullDisplayName { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name="id", EmitDefaultValue=false)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets KeepLog
        /// </summary>
        [DataMember(Name="keepLog", EmitDefaultValue=false)]
        public bool KeepLog { get; set; }

        /// <summary>
        /// Gets or Sets QueueId
        /// </summary>
        [DataMember(Name="queueId", EmitDefaultValue=false)]
        public int QueueId { get; set; }

        /// <summary>
        /// Gets or Sets Result
        /// </summary>
        [DataMember(Name="result", EmitDefaultValue=false)]
        public string Result { get; set; }

        /// <summary>
        /// Gets or Sets Timestamp
        /// </summary>
        [DataMember(Name="timestamp", EmitDefaultValue=false)]
        public int Timestamp { get; set; }

        /// <summary>
        /// Gets or Sets BuiltOn
        /// </summary>
        [DataMember(Name="builtOn", EmitDefaultValue=false)]
        public string BuiltOn { get; set; }

        /// <summary>
        /// Gets or Sets ChangeSet
        /// </summary>
        [DataMember(Name="changeSet", EmitDefaultValue=false)]
        public EmptyChangeLogSet ChangeSet { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class FreeStyleBuild {\n");
            sb.Append("  Class: ").Append(Class).Append("\n");
            sb.Append("  Number: ").Append(Number).Append("\n");
            sb.Append("  Url: ").Append(Url).Append("\n");
            sb.Append("  Actions: ").Append(Actions).Append("\n");
            sb.Append("  Building: ").Append(Building).Append("\n");
            sb.Append("  Description: ").Append(Description).Append("\n");
            sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
            sb.Append("  Duration: ").Append(Duration).Append("\n");
            sb.Append("  EstimatedDuration: ").Append(EstimatedDuration).Append("\n");
            sb.Append("  Executor: ").Append(Executor).Append("\n");
            sb.Append("  FullDisplayName: ").Append(FullDisplayName).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  KeepLog: ").Append(KeepLog).Append("\n");
            sb.Append("  QueueId: ").Append(QueueId).Append("\n");
            sb.Append("  Result: ").Append(Result).Append("\n");
            sb.Append("  Timestamp: ").Append(Timestamp).Append("\n");
            sb.Append("  BuiltOn: ").Append(BuiltOn).Append("\n");
            sb.Append("  ChangeSet: ").Append(ChangeSet).Append("\n");
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
            return this.Equals(input as FreeStyleBuild);
        }

        /// <summary>
        /// Returns true if FreeStyleBuild instances are equal
        /// </summary>
        /// <param name="input">Instance of FreeStyleBuild to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(FreeStyleBuild input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Class == input.Class ||
                    (this.Class != null &&
                    this.Class.Equals(input.Class))
                ) && 
                (
                    this.Number == input.Number ||
                    (this.Number != null &&
                    this.Number.Equals(input.Number))
                ) && 
                (
                    this.Url == input.Url ||
                    (this.Url != null &&
                    this.Url.Equals(input.Url))
                ) && 
                (
                    this.Actions == input.Actions ||
                    this.Actions != null &&
                    input.Actions != null &&
                    this.Actions.SequenceEqual(input.Actions)
                ) && 
                (
                    this.Building == input.Building ||
                    (this.Building != null &&
                    this.Building.Equals(input.Building))
                ) && 
                (
                    this.Description == input.Description ||
                    (this.Description != null &&
                    this.Description.Equals(input.Description))
                ) && 
                (
                    this.DisplayName == input.DisplayName ||
                    (this.DisplayName != null &&
                    this.DisplayName.Equals(input.DisplayName))
                ) && 
                (
                    this.Duration == input.Duration ||
                    (this.Duration != null &&
                    this.Duration.Equals(input.Duration))
                ) && 
                (
                    this.EstimatedDuration == input.EstimatedDuration ||
                    (this.EstimatedDuration != null &&
                    this.EstimatedDuration.Equals(input.EstimatedDuration))
                ) && 
                (
                    this.Executor == input.Executor ||
                    (this.Executor != null &&
                    this.Executor.Equals(input.Executor))
                ) && 
                (
                    this.FullDisplayName == input.FullDisplayName ||
                    (this.FullDisplayName != null &&
                    this.FullDisplayName.Equals(input.FullDisplayName))
                ) && 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.KeepLog == input.KeepLog ||
                    (this.KeepLog != null &&
                    this.KeepLog.Equals(input.KeepLog))
                ) && 
                (
                    this.QueueId == input.QueueId ||
                    (this.QueueId != null &&
                    this.QueueId.Equals(input.QueueId))
                ) && 
                (
                    this.Result == input.Result ||
                    (this.Result != null &&
                    this.Result.Equals(input.Result))
                ) && 
                (
                    this.Timestamp == input.Timestamp ||
                    (this.Timestamp != null &&
                    this.Timestamp.Equals(input.Timestamp))
                ) && 
                (
                    this.BuiltOn == input.BuiltOn ||
                    (this.BuiltOn != null &&
                    this.BuiltOn.Equals(input.BuiltOn))
                ) && 
                (
                    this.ChangeSet == input.ChangeSet ||
                    (this.ChangeSet != null &&
                    this.ChangeSet.Equals(input.ChangeSet))
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
                if (this.Class != null)
                    hashCode = hashCode * 59 + this.Class.GetHashCode();
                if (this.Number != null)
                    hashCode = hashCode * 59 + this.Number.GetHashCode();
                if (this.Url != null)
                    hashCode = hashCode * 59 + this.Url.GetHashCode();
                if (this.Actions != null)
                    hashCode = hashCode * 59 + this.Actions.GetHashCode();
                if (this.Building != null)
                    hashCode = hashCode * 59 + this.Building.GetHashCode();
                if (this.Description != null)
                    hashCode = hashCode * 59 + this.Description.GetHashCode();
                if (this.DisplayName != null)
                    hashCode = hashCode * 59 + this.DisplayName.GetHashCode();
                if (this.Duration != null)
                    hashCode = hashCode * 59 + this.Duration.GetHashCode();
                if (this.EstimatedDuration != null)
                    hashCode = hashCode * 59 + this.EstimatedDuration.GetHashCode();
                if (this.Executor != null)
                    hashCode = hashCode * 59 + this.Executor.GetHashCode();
                if (this.FullDisplayName != null)
                    hashCode = hashCode * 59 + this.FullDisplayName.GetHashCode();
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.KeepLog != null)
                    hashCode = hashCode * 59 + this.KeepLog.GetHashCode();
                if (this.QueueId != null)
                    hashCode = hashCode * 59 + this.QueueId.GetHashCode();
                if (this.Result != null)
                    hashCode = hashCode * 59 + this.Result.GetHashCode();
                if (this.Timestamp != null)
                    hashCode = hashCode * 59 + this.Timestamp.GetHashCode();
                if (this.BuiltOn != null)
                    hashCode = hashCode * 59 + this.BuiltOn.GetHashCode();
                if (this.ChangeSet != null)
                    hashCode = hashCode * 59 + this.ChangeSet.GetHashCode();
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
