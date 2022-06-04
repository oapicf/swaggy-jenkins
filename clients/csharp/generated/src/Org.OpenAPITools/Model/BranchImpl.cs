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
    /// BranchImpl
    /// </summary>
    [DataContract]
    public partial class BranchImpl :  IEquatable<BranchImpl>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="BranchImpl" /> class.
        /// </summary>
        /// <param name="_class">_class.</param>
        /// <param name="displayName">displayName.</param>
        /// <param name="estimatedDurationInMillis">estimatedDurationInMillis.</param>
        /// <param name="fullDisplayName">fullDisplayName.</param>
        /// <param name="fullName">fullName.</param>
        /// <param name="name">name.</param>
        /// <param name="organization">organization.</param>
        /// <param name="parameters">parameters.</param>
        /// <param name="permissions">permissions.</param>
        /// <param name="weatherScore">weatherScore.</param>
        /// <param name="pullRequest">pullRequest.</param>
        /// <param name="links">links.</param>
        /// <param name="latestRun">latestRun.</param>
        public BranchImpl(string _class = default(string), string displayName = default(string), int estimatedDurationInMillis = default(int), string fullDisplayName = default(string), string fullName = default(string), string name = default(string), string organization = default(string), List<StringParameterDefinition> parameters = default(List<StringParameterDefinition>), BranchImplpermissions permissions = default(BranchImplpermissions), int weatherScore = default(int), string pullRequest = default(string), BranchImpllinks links = default(BranchImpllinks), PipelineRunImpl latestRun = default(PipelineRunImpl))
        {
            this.Class = _class;
            this.DisplayName = displayName;
            this.EstimatedDurationInMillis = estimatedDurationInMillis;
            this.FullDisplayName = fullDisplayName;
            this.FullName = fullName;
            this.Name = name;
            this.Organization = organization;
            this.Parameters = parameters;
            this.Permissions = permissions;
            this.WeatherScore = weatherScore;
            this.PullRequest = pullRequest;
            this.Links = links;
            this.LatestRun = latestRun;
        }

        /// <summary>
        /// Gets or Sets Class
        /// </summary>
        [DataMember(Name="_class", EmitDefaultValue=false)]
        public string Class { get; set; }

        /// <summary>
        /// Gets or Sets DisplayName
        /// </summary>
        [DataMember(Name="displayName", EmitDefaultValue=false)]
        public string DisplayName { get; set; }

        /// <summary>
        /// Gets or Sets EstimatedDurationInMillis
        /// </summary>
        [DataMember(Name="estimatedDurationInMillis", EmitDefaultValue=false)]
        public int EstimatedDurationInMillis { get; set; }

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
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name="name", EmitDefaultValue=false)]
        public string Name { get; set; }

        /// <summary>
        /// Gets or Sets Organization
        /// </summary>
        [DataMember(Name="organization", EmitDefaultValue=false)]
        public string Organization { get; set; }

        /// <summary>
        /// Gets or Sets Parameters
        /// </summary>
        [DataMember(Name="parameters", EmitDefaultValue=false)]
        public List<StringParameterDefinition> Parameters { get; set; }

        /// <summary>
        /// Gets or Sets Permissions
        /// </summary>
        [DataMember(Name="permissions", EmitDefaultValue=false)]
        public BranchImplpermissions Permissions { get; set; }

        /// <summary>
        /// Gets or Sets WeatherScore
        /// </summary>
        [DataMember(Name="weatherScore", EmitDefaultValue=false)]
        public int WeatherScore { get; set; }

        /// <summary>
        /// Gets or Sets PullRequest
        /// </summary>
        [DataMember(Name="pullRequest", EmitDefaultValue=false)]
        public string PullRequest { get; set; }

        /// <summary>
        /// Gets or Sets Links
        /// </summary>
        [DataMember(Name="_links", EmitDefaultValue=false)]
        public BranchImpllinks Links { get; set; }

        /// <summary>
        /// Gets or Sets LatestRun
        /// </summary>
        [DataMember(Name="latestRun", EmitDefaultValue=false)]
        public PipelineRunImpl LatestRun { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class BranchImpl {\n");
            sb.Append("  Class: ").Append(Class).Append("\n");
            sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
            sb.Append("  EstimatedDurationInMillis: ").Append(EstimatedDurationInMillis).Append("\n");
            sb.Append("  FullDisplayName: ").Append(FullDisplayName).Append("\n");
            sb.Append("  FullName: ").Append(FullName).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Organization: ").Append(Organization).Append("\n");
            sb.Append("  Parameters: ").Append(Parameters).Append("\n");
            sb.Append("  Permissions: ").Append(Permissions).Append("\n");
            sb.Append("  WeatherScore: ").Append(WeatherScore).Append("\n");
            sb.Append("  PullRequest: ").Append(PullRequest).Append("\n");
            sb.Append("  Links: ").Append(Links).Append("\n");
            sb.Append("  LatestRun: ").Append(LatestRun).Append("\n");
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
            return this.Equals(input as BranchImpl);
        }

        /// <summary>
        /// Returns true if BranchImpl instances are equal
        /// </summary>
        /// <param name="input">Instance of BranchImpl to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(BranchImpl input)
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
                    this.DisplayName == input.DisplayName ||
                    (this.DisplayName != null &&
                    this.DisplayName.Equals(input.DisplayName))
                ) && 
                (
                    this.EstimatedDurationInMillis == input.EstimatedDurationInMillis ||
                    (this.EstimatedDurationInMillis != null &&
                    this.EstimatedDurationInMillis.Equals(input.EstimatedDurationInMillis))
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
                    this.Name == input.Name ||
                    (this.Name != null &&
                    this.Name.Equals(input.Name))
                ) && 
                (
                    this.Organization == input.Organization ||
                    (this.Organization != null &&
                    this.Organization.Equals(input.Organization))
                ) && 
                (
                    this.Parameters == input.Parameters ||
                    this.Parameters != null &&
                    input.Parameters != null &&
                    this.Parameters.SequenceEqual(input.Parameters)
                ) && 
                (
                    this.Permissions == input.Permissions ||
                    (this.Permissions != null &&
                    this.Permissions.Equals(input.Permissions))
                ) && 
                (
                    this.WeatherScore == input.WeatherScore ||
                    (this.WeatherScore != null &&
                    this.WeatherScore.Equals(input.WeatherScore))
                ) && 
                (
                    this.PullRequest == input.PullRequest ||
                    (this.PullRequest != null &&
                    this.PullRequest.Equals(input.PullRequest))
                ) && 
                (
                    this.Links == input.Links ||
                    (this.Links != null &&
                    this.Links.Equals(input.Links))
                ) && 
                (
                    this.LatestRun == input.LatestRun ||
                    (this.LatestRun != null &&
                    this.LatestRun.Equals(input.LatestRun))
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
                if (this.DisplayName != null)
                    hashCode = hashCode * 59 + this.DisplayName.GetHashCode();
                if (this.EstimatedDurationInMillis != null)
                    hashCode = hashCode * 59 + this.EstimatedDurationInMillis.GetHashCode();
                if (this.FullDisplayName != null)
                    hashCode = hashCode * 59 + this.FullDisplayName.GetHashCode();
                if (this.FullName != null)
                    hashCode = hashCode * 59 + this.FullName.GetHashCode();
                if (this.Name != null)
                    hashCode = hashCode * 59 + this.Name.GetHashCode();
                if (this.Organization != null)
                    hashCode = hashCode * 59 + this.Organization.GetHashCode();
                if (this.Parameters != null)
                    hashCode = hashCode * 59 + this.Parameters.GetHashCode();
                if (this.Permissions != null)
                    hashCode = hashCode * 59 + this.Permissions.GetHashCode();
                if (this.WeatherScore != null)
                    hashCode = hashCode * 59 + this.WeatherScore.GetHashCode();
                if (this.PullRequest != null)
                    hashCode = hashCode * 59 + this.PullRequest.GetHashCode();
                if (this.Links != null)
                    hashCode = hashCode * 59 + this.Links.GetHashCode();
                if (this.LatestRun != null)
                    hashCode = hashCode * 59 + this.LatestRun.GetHashCode();
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
