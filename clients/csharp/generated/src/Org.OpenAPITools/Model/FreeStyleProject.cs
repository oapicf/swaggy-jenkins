/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
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
    /// FreeStyleProject
    /// </summary>
    [DataContract]
    public partial class FreeStyleProject :  IEquatable<FreeStyleProject>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="FreeStyleProject" /> class.
        /// </summary>
        /// <param name="_class">_class.</param>
        /// <param name="name">name.</param>
        /// <param name="url">url.</param>
        /// <param name="color">color.</param>
        /// <param name="actions">actions.</param>
        /// <param name="description">description.</param>
        /// <param name="displayName">displayName.</param>
        /// <param name="displayNameOrNull">displayNameOrNull.</param>
        /// <param name="fullDisplayName">fullDisplayName.</param>
        /// <param name="fullName">fullName.</param>
        /// <param name="buildable">buildable.</param>
        /// <param name="builds">builds.</param>
        /// <param name="firstBuild">firstBuild.</param>
        /// <param name="healthReport">healthReport.</param>
        /// <param name="inQueue">inQueue.</param>
        /// <param name="keepDependencies">keepDependencies.</param>
        /// <param name="lastBuild">lastBuild.</param>
        /// <param name="lastCompletedBuild">lastCompletedBuild.</param>
        /// <param name="lastFailedBuild">lastFailedBuild.</param>
        /// <param name="lastStableBuild">lastStableBuild.</param>
        /// <param name="lastSuccessfulBuild">lastSuccessfulBuild.</param>
        /// <param name="lastUnstableBuild">lastUnstableBuild.</param>
        /// <param name="lastUnsuccessfulBuild">lastUnsuccessfulBuild.</param>
        /// <param name="nextBuildNumber">nextBuildNumber.</param>
        /// <param name="queueItem">queueItem.</param>
        /// <param name="concurrentBuild">concurrentBuild.</param>
        /// <param name="scm">scm.</param>
        public FreeStyleProject(string _class = default(string), string name = default(string), string url = default(string), string color = default(string), List<FreeStyleProjectactions> actions = default(List<FreeStyleProjectactions>), string description = default(string), string displayName = default(string), string displayNameOrNull = default(string), string fullDisplayName = default(string), string fullName = default(string), bool buildable = default(bool), List<FreeStyleBuild> builds = default(List<FreeStyleBuild>), FreeStyleBuild firstBuild = default(FreeStyleBuild), List<FreeStyleProjecthealthReport> healthReport = default(List<FreeStyleProjecthealthReport>), bool inQueue = default(bool), bool keepDependencies = default(bool), FreeStyleBuild lastBuild = default(FreeStyleBuild), FreeStyleBuild lastCompletedBuild = default(FreeStyleBuild), string lastFailedBuild = default(string), FreeStyleBuild lastStableBuild = default(FreeStyleBuild), FreeStyleBuild lastSuccessfulBuild = default(FreeStyleBuild), string lastUnstableBuild = default(string), string lastUnsuccessfulBuild = default(string), int nextBuildNumber = default(int), string queueItem = default(string), bool concurrentBuild = default(bool), NullSCM scm = default(NullSCM))
        {
            this.Class = _class;
            this.Name = name;
            this.Url = url;
            this.Color = color;
            this.Actions = actions;
            this.Description = description;
            this.DisplayName = displayName;
            this.DisplayNameOrNull = displayNameOrNull;
            this.FullDisplayName = fullDisplayName;
            this.FullName = fullName;
            this.Buildable = buildable;
            this.Builds = builds;
            this.FirstBuild = firstBuild;
            this.HealthReport = healthReport;
            this.InQueue = inQueue;
            this.KeepDependencies = keepDependencies;
            this.LastBuild = lastBuild;
            this.LastCompletedBuild = lastCompletedBuild;
            this.LastFailedBuild = lastFailedBuild;
            this.LastStableBuild = lastStableBuild;
            this.LastSuccessfulBuild = lastSuccessfulBuild;
            this.LastUnstableBuild = lastUnstableBuild;
            this.LastUnsuccessfulBuild = lastUnsuccessfulBuild;
            this.NextBuildNumber = nextBuildNumber;
            this.QueueItem = queueItem;
            this.ConcurrentBuild = concurrentBuild;
            this.Scm = scm;
        }

        /// <summary>
        /// Gets or Sets Class
        /// </summary>
        [DataMember(Name="_class", EmitDefaultValue=false)]
        public string Class { get; set; }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name="name", EmitDefaultValue=false)]
        public string Name { get; set; }

        /// <summary>
        /// Gets or Sets Url
        /// </summary>
        [DataMember(Name="url", EmitDefaultValue=false)]
        public string Url { get; set; }

        /// <summary>
        /// Gets or Sets Color
        /// </summary>
        [DataMember(Name="color", EmitDefaultValue=false)]
        public string Color { get; set; }

        /// <summary>
        /// Gets or Sets Actions
        /// </summary>
        [DataMember(Name="actions", EmitDefaultValue=false)]
        public List<FreeStyleProjectactions> Actions { get; set; }

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
        /// Gets or Sets DisplayNameOrNull
        /// </summary>
        [DataMember(Name="displayNameOrNull", EmitDefaultValue=false)]
        public string DisplayNameOrNull { get; set; }

        /// <summary>
        /// Gets or Sets FullDisplayName
        /// </summary>
        [DataMember(Name="fullDisplayName", EmitDefaultValue=false)]
        public string FullDisplayName { get; set; }

        /// <summary>
        /// Gets or Sets FullName
        /// </summary>
        [DataMember(Name="fullName", EmitDefaultValue=false)]
        public string FullName { get; set; }

        /// <summary>
        /// Gets or Sets Buildable
        /// </summary>
        [DataMember(Name="buildable", EmitDefaultValue=false)]
        public bool Buildable { get; set; }

        /// <summary>
        /// Gets or Sets Builds
        /// </summary>
        [DataMember(Name="builds", EmitDefaultValue=false)]
        public List<FreeStyleBuild> Builds { get; set; }

        /// <summary>
        /// Gets or Sets FirstBuild
        /// </summary>
        [DataMember(Name="firstBuild", EmitDefaultValue=false)]
        public FreeStyleBuild FirstBuild { get; set; }

        /// <summary>
        /// Gets or Sets HealthReport
        /// </summary>
        [DataMember(Name="healthReport", EmitDefaultValue=false)]
        public List<FreeStyleProjecthealthReport> HealthReport { get; set; }

        /// <summary>
        /// Gets or Sets InQueue
        /// </summary>
        [DataMember(Name="inQueue", EmitDefaultValue=false)]
        public bool InQueue { get; set; }

        /// <summary>
        /// Gets or Sets KeepDependencies
        /// </summary>
        [DataMember(Name="keepDependencies", EmitDefaultValue=false)]
        public bool KeepDependencies { get; set; }

        /// <summary>
        /// Gets or Sets LastBuild
        /// </summary>
        [DataMember(Name="lastBuild", EmitDefaultValue=false)]
        public FreeStyleBuild LastBuild { get; set; }

        /// <summary>
        /// Gets or Sets LastCompletedBuild
        /// </summary>
        [DataMember(Name="lastCompletedBuild", EmitDefaultValue=false)]
        public FreeStyleBuild LastCompletedBuild { get; set; }

        /// <summary>
        /// Gets or Sets LastFailedBuild
        /// </summary>
        [DataMember(Name="lastFailedBuild", EmitDefaultValue=false)]
        public string LastFailedBuild { get; set; }

        /// <summary>
        /// Gets or Sets LastStableBuild
        /// </summary>
        [DataMember(Name="lastStableBuild", EmitDefaultValue=false)]
        public FreeStyleBuild LastStableBuild { get; set; }

        /// <summary>
        /// Gets or Sets LastSuccessfulBuild
        /// </summary>
        [DataMember(Name="lastSuccessfulBuild", EmitDefaultValue=false)]
        public FreeStyleBuild LastSuccessfulBuild { get; set; }

        /// <summary>
        /// Gets or Sets LastUnstableBuild
        /// </summary>
        [DataMember(Name="lastUnstableBuild", EmitDefaultValue=false)]
        public string LastUnstableBuild { get; set; }

        /// <summary>
        /// Gets or Sets LastUnsuccessfulBuild
        /// </summary>
        [DataMember(Name="lastUnsuccessfulBuild", EmitDefaultValue=false)]
        public string LastUnsuccessfulBuild { get; set; }

        /// <summary>
        /// Gets or Sets NextBuildNumber
        /// </summary>
        [DataMember(Name="nextBuildNumber", EmitDefaultValue=false)]
        public int NextBuildNumber { get; set; }

        /// <summary>
        /// Gets or Sets QueueItem
        /// </summary>
        [DataMember(Name="queueItem", EmitDefaultValue=false)]
        public string QueueItem { get; set; }

        /// <summary>
        /// Gets or Sets ConcurrentBuild
        /// </summary>
        [DataMember(Name="concurrentBuild", EmitDefaultValue=false)]
        public bool ConcurrentBuild { get; set; }

        /// <summary>
        /// Gets or Sets Scm
        /// </summary>
        [DataMember(Name="scm", EmitDefaultValue=false)]
        public NullSCM Scm { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class FreeStyleProject {\n");
            sb.Append("  Class: ").Append(Class).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Url: ").Append(Url).Append("\n");
            sb.Append("  Color: ").Append(Color).Append("\n");
            sb.Append("  Actions: ").Append(Actions).Append("\n");
            sb.Append("  Description: ").Append(Description).Append("\n");
            sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
            sb.Append("  DisplayNameOrNull: ").Append(DisplayNameOrNull).Append("\n");
            sb.Append("  FullDisplayName: ").Append(FullDisplayName).Append("\n");
            sb.Append("  FullName: ").Append(FullName).Append("\n");
            sb.Append("  Buildable: ").Append(Buildable).Append("\n");
            sb.Append("  Builds: ").Append(Builds).Append("\n");
            sb.Append("  FirstBuild: ").Append(FirstBuild).Append("\n");
            sb.Append("  HealthReport: ").Append(HealthReport).Append("\n");
            sb.Append("  InQueue: ").Append(InQueue).Append("\n");
            sb.Append("  KeepDependencies: ").Append(KeepDependencies).Append("\n");
            sb.Append("  LastBuild: ").Append(LastBuild).Append("\n");
            sb.Append("  LastCompletedBuild: ").Append(LastCompletedBuild).Append("\n");
            sb.Append("  LastFailedBuild: ").Append(LastFailedBuild).Append("\n");
            sb.Append("  LastStableBuild: ").Append(LastStableBuild).Append("\n");
            sb.Append("  LastSuccessfulBuild: ").Append(LastSuccessfulBuild).Append("\n");
            sb.Append("  LastUnstableBuild: ").Append(LastUnstableBuild).Append("\n");
            sb.Append("  LastUnsuccessfulBuild: ").Append(LastUnsuccessfulBuild).Append("\n");
            sb.Append("  NextBuildNumber: ").Append(NextBuildNumber).Append("\n");
            sb.Append("  QueueItem: ").Append(QueueItem).Append("\n");
            sb.Append("  ConcurrentBuild: ").Append(ConcurrentBuild).Append("\n");
            sb.Append("  Scm: ").Append(Scm).Append("\n");
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
            return this.Equals(input as FreeStyleProject);
        }

        /// <summary>
        /// Returns true if FreeStyleProject instances are equal
        /// </summary>
        /// <param name="input">Instance of FreeStyleProject to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(FreeStyleProject input)
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
                    this.Name == input.Name ||
                    (this.Name != null &&
                    this.Name.Equals(input.Name))
                ) && 
                (
                    this.Url == input.Url ||
                    (this.Url != null &&
                    this.Url.Equals(input.Url))
                ) && 
                (
                    this.Color == input.Color ||
                    (this.Color != null &&
                    this.Color.Equals(input.Color))
                ) && 
                (
                    this.Actions == input.Actions ||
                    this.Actions != null &&
                    input.Actions != null &&
                    this.Actions.SequenceEqual(input.Actions)
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
                    this.DisplayNameOrNull == input.DisplayNameOrNull ||
                    (this.DisplayNameOrNull != null &&
                    this.DisplayNameOrNull.Equals(input.DisplayNameOrNull))
                ) && 
                (
                    this.FullDisplayName == input.FullDisplayName ||
                    (this.FullDisplayName != null &&
                    this.FullDisplayName.Equals(input.FullDisplayName))
                ) && 
                (
                    this.FullName == input.FullName ||
                    (this.FullName != null &&
                    this.FullName.Equals(input.FullName))
                ) && 
                (
                    this.Buildable == input.Buildable ||
                    (this.Buildable != null &&
                    this.Buildable.Equals(input.Buildable))
                ) && 
                (
                    this.Builds == input.Builds ||
                    this.Builds != null &&
                    input.Builds != null &&
                    this.Builds.SequenceEqual(input.Builds)
                ) && 
                (
                    this.FirstBuild == input.FirstBuild ||
                    (this.FirstBuild != null &&
                    this.FirstBuild.Equals(input.FirstBuild))
                ) && 
                (
                    this.HealthReport == input.HealthReport ||
                    this.HealthReport != null &&
                    input.HealthReport != null &&
                    this.HealthReport.SequenceEqual(input.HealthReport)
                ) && 
                (
                    this.InQueue == input.InQueue ||
                    (this.InQueue != null &&
                    this.InQueue.Equals(input.InQueue))
                ) && 
                (
                    this.KeepDependencies == input.KeepDependencies ||
                    (this.KeepDependencies != null &&
                    this.KeepDependencies.Equals(input.KeepDependencies))
                ) && 
                (
                    this.LastBuild == input.LastBuild ||
                    (this.LastBuild != null &&
                    this.LastBuild.Equals(input.LastBuild))
                ) && 
                (
                    this.LastCompletedBuild == input.LastCompletedBuild ||
                    (this.LastCompletedBuild != null &&
                    this.LastCompletedBuild.Equals(input.LastCompletedBuild))
                ) && 
                (
                    this.LastFailedBuild == input.LastFailedBuild ||
                    (this.LastFailedBuild != null &&
                    this.LastFailedBuild.Equals(input.LastFailedBuild))
                ) && 
                (
                    this.LastStableBuild == input.LastStableBuild ||
                    (this.LastStableBuild != null &&
                    this.LastStableBuild.Equals(input.LastStableBuild))
                ) && 
                (
                    this.LastSuccessfulBuild == input.LastSuccessfulBuild ||
                    (this.LastSuccessfulBuild != null &&
                    this.LastSuccessfulBuild.Equals(input.LastSuccessfulBuild))
                ) && 
                (
                    this.LastUnstableBuild == input.LastUnstableBuild ||
                    (this.LastUnstableBuild != null &&
                    this.LastUnstableBuild.Equals(input.LastUnstableBuild))
                ) && 
                (
                    this.LastUnsuccessfulBuild == input.LastUnsuccessfulBuild ||
                    (this.LastUnsuccessfulBuild != null &&
                    this.LastUnsuccessfulBuild.Equals(input.LastUnsuccessfulBuild))
                ) && 
                (
                    this.NextBuildNumber == input.NextBuildNumber ||
                    (this.NextBuildNumber != null &&
                    this.NextBuildNumber.Equals(input.NextBuildNumber))
                ) && 
                (
                    this.QueueItem == input.QueueItem ||
                    (this.QueueItem != null &&
                    this.QueueItem.Equals(input.QueueItem))
                ) && 
                (
                    this.ConcurrentBuild == input.ConcurrentBuild ||
                    (this.ConcurrentBuild != null &&
                    this.ConcurrentBuild.Equals(input.ConcurrentBuild))
                ) && 
                (
                    this.Scm == input.Scm ||
                    (this.Scm != null &&
                    this.Scm.Equals(input.Scm))
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
                if (this.Name != null)
                    hashCode = hashCode * 59 + this.Name.GetHashCode();
                if (this.Url != null)
                    hashCode = hashCode * 59 + this.Url.GetHashCode();
                if (this.Color != null)
                    hashCode = hashCode * 59 + this.Color.GetHashCode();
                if (this.Actions != null)
                    hashCode = hashCode * 59 + this.Actions.GetHashCode();
                if (this.Description != null)
                    hashCode = hashCode * 59 + this.Description.GetHashCode();
                if (this.DisplayName != null)
                    hashCode = hashCode * 59 + this.DisplayName.GetHashCode();
                if (this.DisplayNameOrNull != null)
                    hashCode = hashCode * 59 + this.DisplayNameOrNull.GetHashCode();
                if (this.FullDisplayName != null)
                    hashCode = hashCode * 59 + this.FullDisplayName.GetHashCode();
                if (this.FullName != null)
                    hashCode = hashCode * 59 + this.FullName.GetHashCode();
                if (this.Buildable != null)
                    hashCode = hashCode * 59 + this.Buildable.GetHashCode();
                if (this.Builds != null)
                    hashCode = hashCode * 59 + this.Builds.GetHashCode();
                if (this.FirstBuild != null)
                    hashCode = hashCode * 59 + this.FirstBuild.GetHashCode();
                if (this.HealthReport != null)
                    hashCode = hashCode * 59 + this.HealthReport.GetHashCode();
                if (this.InQueue != null)
                    hashCode = hashCode * 59 + this.InQueue.GetHashCode();
                if (this.KeepDependencies != null)
                    hashCode = hashCode * 59 + this.KeepDependencies.GetHashCode();
                if (this.LastBuild != null)
                    hashCode = hashCode * 59 + this.LastBuild.GetHashCode();
                if (this.LastCompletedBuild != null)
                    hashCode = hashCode * 59 + this.LastCompletedBuild.GetHashCode();
                if (this.LastFailedBuild != null)
                    hashCode = hashCode * 59 + this.LastFailedBuild.GetHashCode();
                if (this.LastStableBuild != null)
                    hashCode = hashCode * 59 + this.LastStableBuild.GetHashCode();
                if (this.LastSuccessfulBuild != null)
                    hashCode = hashCode * 59 + this.LastSuccessfulBuild.GetHashCode();
                if (this.LastUnstableBuild != null)
                    hashCode = hashCode * 59 + this.LastUnstableBuild.GetHashCode();
                if (this.LastUnsuccessfulBuild != null)
                    hashCode = hashCode * 59 + this.LastUnsuccessfulBuild.GetHashCode();
                if (this.NextBuildNumber != null)
                    hashCode = hashCode * 59 + this.NextBuildNumber.GetHashCode();
                if (this.QueueItem != null)
                    hashCode = hashCode * 59 + this.QueueItem.GetHashCode();
                if (this.ConcurrentBuild != null)
                    hashCode = hashCode * 59 + this.ConcurrentBuild.GetHashCode();
                if (this.Scm != null)
                    hashCode = hashCode * 59 + this.Scm.GetHashCode();
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
