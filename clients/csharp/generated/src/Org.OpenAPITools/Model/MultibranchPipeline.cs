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
    /// MultibranchPipeline
    /// </summary>
    [DataContract]
    public partial class MultibranchPipeline :  IEquatable<MultibranchPipeline>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="MultibranchPipeline" /> class.
        /// </summary>
        /// <param name="displayName">displayName.</param>
        /// <param name="estimatedDurationInMillis">estimatedDurationInMillis.</param>
        /// <param name="latestRun">latestRun.</param>
        /// <param name="name">name.</param>
        /// <param name="organization">organization.</param>
        /// <param name="weatherScore">weatherScore.</param>
        /// <param name="branchNames">branchNames.</param>
        /// <param name="numberOfFailingBranches">numberOfFailingBranches.</param>
        /// <param name="numberOfFailingPullRequests">numberOfFailingPullRequests.</param>
        /// <param name="numberOfSuccessfulBranches">numberOfSuccessfulBranches.</param>
        /// <param name="numberOfSuccessfulPullRequests">numberOfSuccessfulPullRequests.</param>
        /// <param name="totalNumberOfBranches">totalNumberOfBranches.</param>
        /// <param name="totalNumberOfPullRequests">totalNumberOfPullRequests.</param>
        /// <param name="_class">_class.</param>
        public MultibranchPipeline(string displayName = default(string), int estimatedDurationInMillis = default(int), string latestRun = default(string), string name = default(string), string organization = default(string), int weatherScore = default(int), List<string> branchNames = default(List<string>), int numberOfFailingBranches = default(int), int numberOfFailingPullRequests = default(int), int numberOfSuccessfulBranches = default(int), int numberOfSuccessfulPullRequests = default(int), int totalNumberOfBranches = default(int), int totalNumberOfPullRequests = default(int), string _class = default(string))
        {
            this.DisplayName = displayName;
            this.EstimatedDurationInMillis = estimatedDurationInMillis;
            this.LatestRun = latestRun;
            this.Name = name;
            this.Organization = organization;
            this.WeatherScore = weatherScore;
            this.BranchNames = branchNames;
            this.NumberOfFailingBranches = numberOfFailingBranches;
            this.NumberOfFailingPullRequests = numberOfFailingPullRequests;
            this.NumberOfSuccessfulBranches = numberOfSuccessfulBranches;
            this.NumberOfSuccessfulPullRequests = numberOfSuccessfulPullRequests;
            this.TotalNumberOfBranches = totalNumberOfBranches;
            this.TotalNumberOfPullRequests = totalNumberOfPullRequests;
            this.Class = _class;
        }

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
        /// Gets or Sets LatestRun
        /// </summary>
        [DataMember(Name="latestRun", EmitDefaultValue=false)]
        public string LatestRun { get; set; }

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
        /// Gets or Sets WeatherScore
        /// </summary>
        [DataMember(Name="weatherScore", EmitDefaultValue=false)]
        public int WeatherScore { get; set; }

        /// <summary>
        /// Gets or Sets BranchNames
        /// </summary>
        [DataMember(Name="branchNames", EmitDefaultValue=false)]
        public List<string> BranchNames { get; set; }

        /// <summary>
        /// Gets or Sets NumberOfFailingBranches
        /// </summary>
        [DataMember(Name="numberOfFailingBranches", EmitDefaultValue=false)]
        public int NumberOfFailingBranches { get; set; }

        /// <summary>
        /// Gets or Sets NumberOfFailingPullRequests
        /// </summary>
        [DataMember(Name="numberOfFailingPullRequests", EmitDefaultValue=false)]
        public int NumberOfFailingPullRequests { get; set; }

        /// <summary>
        /// Gets or Sets NumberOfSuccessfulBranches
        /// </summary>
        [DataMember(Name="numberOfSuccessfulBranches", EmitDefaultValue=false)]
        public int NumberOfSuccessfulBranches { get; set; }

        /// <summary>
        /// Gets or Sets NumberOfSuccessfulPullRequests
        /// </summary>
        [DataMember(Name="numberOfSuccessfulPullRequests", EmitDefaultValue=false)]
        public int NumberOfSuccessfulPullRequests { get; set; }

        /// <summary>
        /// Gets or Sets TotalNumberOfBranches
        /// </summary>
        [DataMember(Name="totalNumberOfBranches", EmitDefaultValue=false)]
        public int TotalNumberOfBranches { get; set; }

        /// <summary>
        /// Gets or Sets TotalNumberOfPullRequests
        /// </summary>
        [DataMember(Name="totalNumberOfPullRequests", EmitDefaultValue=false)]
        public int TotalNumberOfPullRequests { get; set; }

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
            sb.Append("class MultibranchPipeline {\n");
            sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
            sb.Append("  EstimatedDurationInMillis: ").Append(EstimatedDurationInMillis).Append("\n");
            sb.Append("  LatestRun: ").Append(LatestRun).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Organization: ").Append(Organization).Append("\n");
            sb.Append("  WeatherScore: ").Append(WeatherScore).Append("\n");
            sb.Append("  BranchNames: ").Append(BranchNames).Append("\n");
            sb.Append("  NumberOfFailingBranches: ").Append(NumberOfFailingBranches).Append("\n");
            sb.Append("  NumberOfFailingPullRequests: ").Append(NumberOfFailingPullRequests).Append("\n");
            sb.Append("  NumberOfSuccessfulBranches: ").Append(NumberOfSuccessfulBranches).Append("\n");
            sb.Append("  NumberOfSuccessfulPullRequests: ").Append(NumberOfSuccessfulPullRequests).Append("\n");
            sb.Append("  TotalNumberOfBranches: ").Append(TotalNumberOfBranches).Append("\n");
            sb.Append("  TotalNumberOfPullRequests: ").Append(TotalNumberOfPullRequests).Append("\n");
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
            return this.Equals(input as MultibranchPipeline);
        }

        /// <summary>
        /// Returns true if MultibranchPipeline instances are equal
        /// </summary>
        /// <param name="input">Instance of MultibranchPipeline to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(MultibranchPipeline input)
        {
            if (input == null)
                return false;

            return 
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
                    this.LatestRun == input.LatestRun ||
                    (this.LatestRun != null &&
                    this.LatestRun.Equals(input.LatestRun))
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
                    this.WeatherScore == input.WeatherScore ||
                    (this.WeatherScore != null &&
                    this.WeatherScore.Equals(input.WeatherScore))
                ) && 
                (
                    this.BranchNames == input.BranchNames ||
                    this.BranchNames != null &&
                    input.BranchNames != null &&
                    this.BranchNames.SequenceEqual(input.BranchNames)
                ) && 
                (
                    this.NumberOfFailingBranches == input.NumberOfFailingBranches ||
                    (this.NumberOfFailingBranches != null &&
                    this.NumberOfFailingBranches.Equals(input.NumberOfFailingBranches))
                ) && 
                (
                    this.NumberOfFailingPullRequests == input.NumberOfFailingPullRequests ||
                    (this.NumberOfFailingPullRequests != null &&
                    this.NumberOfFailingPullRequests.Equals(input.NumberOfFailingPullRequests))
                ) && 
                (
                    this.NumberOfSuccessfulBranches == input.NumberOfSuccessfulBranches ||
                    (this.NumberOfSuccessfulBranches != null &&
                    this.NumberOfSuccessfulBranches.Equals(input.NumberOfSuccessfulBranches))
                ) && 
                (
                    this.NumberOfSuccessfulPullRequests == input.NumberOfSuccessfulPullRequests ||
                    (this.NumberOfSuccessfulPullRequests != null &&
                    this.NumberOfSuccessfulPullRequests.Equals(input.NumberOfSuccessfulPullRequests))
                ) && 
                (
                    this.TotalNumberOfBranches == input.TotalNumberOfBranches ||
                    (this.TotalNumberOfBranches != null &&
                    this.TotalNumberOfBranches.Equals(input.TotalNumberOfBranches))
                ) && 
                (
                    this.TotalNumberOfPullRequests == input.TotalNumberOfPullRequests ||
                    (this.TotalNumberOfPullRequests != null &&
                    this.TotalNumberOfPullRequests.Equals(input.TotalNumberOfPullRequests))
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
                if (this.DisplayName != null)
                    hashCode = hashCode * 59 + this.DisplayName.GetHashCode();
                if (this.EstimatedDurationInMillis != null)
                    hashCode = hashCode * 59 + this.EstimatedDurationInMillis.GetHashCode();
                if (this.LatestRun != null)
                    hashCode = hashCode * 59 + this.LatestRun.GetHashCode();
                if (this.Name != null)
                    hashCode = hashCode * 59 + this.Name.GetHashCode();
                if (this.Organization != null)
                    hashCode = hashCode * 59 + this.Organization.GetHashCode();
                if (this.WeatherScore != null)
                    hashCode = hashCode * 59 + this.WeatherScore.GetHashCode();
                if (this.BranchNames != null)
                    hashCode = hashCode * 59 + this.BranchNames.GetHashCode();
                if (this.NumberOfFailingBranches != null)
                    hashCode = hashCode * 59 + this.NumberOfFailingBranches.GetHashCode();
                if (this.NumberOfFailingPullRequests != null)
                    hashCode = hashCode * 59 + this.NumberOfFailingPullRequests.GetHashCode();
                if (this.NumberOfSuccessfulBranches != null)
                    hashCode = hashCode * 59 + this.NumberOfSuccessfulBranches.GetHashCode();
                if (this.NumberOfSuccessfulPullRequests != null)
                    hashCode = hashCode * 59 + this.NumberOfSuccessfulPullRequests.GetHashCode();
                if (this.TotalNumberOfBranches != null)
                    hashCode = hashCode * 59 + this.TotalNumberOfBranches.GetHashCode();
                if (this.TotalNumberOfPullRequests != null)
                    hashCode = hashCode * 59 + this.TotalNumberOfPullRequests.GetHashCode();
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
