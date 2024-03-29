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
    /// PipelineImpl
    /// </summary>
    [DataContract(Name = "PipelineImpl")]
    public partial class PipelineImpl : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="PipelineImpl" /> class.
        /// </summary>
        /// <param name="varClass">varClass.</param>
        /// <param name="displayName">displayName.</param>
        /// <param name="estimatedDurationInMillis">estimatedDurationInMillis.</param>
        /// <param name="fullName">fullName.</param>
        /// <param name="latestRun">latestRun.</param>
        /// <param name="name">name.</param>
        /// <param name="organization">organization.</param>
        /// <param name="weatherScore">weatherScore.</param>
        /// <param name="links">links.</param>
        public PipelineImpl(string varClass = default(string), string displayName = default(string), int estimatedDurationInMillis = default(int), string fullName = default(string), string latestRun = default(string), string name = default(string), string organization = default(string), int weatherScore = default(int), PipelineImpllinks links = default(PipelineImpllinks))
        {
            this.VarClass = varClass;
            this.DisplayName = displayName;
            this.EstimatedDurationInMillis = estimatedDurationInMillis;
            this.FullName = fullName;
            this.LatestRun = latestRun;
            this.Name = name;
            this.Organization = organization;
            this.WeatherScore = weatherScore;
            this.Links = links;
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
        /// Gets or Sets EstimatedDurationInMillis
        /// </summary>
        [DataMember(Name = "estimatedDurationInMillis", EmitDefaultValue = false)]
        public int EstimatedDurationInMillis { get; set; }

        /// <summary>
        /// Gets or Sets FullName
        /// </summary>
        [DataMember(Name = "fullName", EmitDefaultValue = false)]
        public string FullName { get; set; }

        /// <summary>
        /// Gets or Sets LatestRun
        /// </summary>
        [DataMember(Name = "latestRun", EmitDefaultValue = false)]
        public string LatestRun { get; set; }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name = "name", EmitDefaultValue = false)]
        public string Name { get; set; }

        /// <summary>
        /// Gets or Sets Organization
        /// </summary>
        [DataMember(Name = "organization", EmitDefaultValue = false)]
        public string Organization { get; set; }

        /// <summary>
        /// Gets or Sets WeatherScore
        /// </summary>
        [DataMember(Name = "weatherScore", EmitDefaultValue = false)]
        public int WeatherScore { get; set; }

        /// <summary>
        /// Gets or Sets Links
        /// </summary>
        [DataMember(Name = "_links", EmitDefaultValue = false)]
        public PipelineImpllinks Links { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class PipelineImpl {\n");
            sb.Append("  VarClass: ").Append(VarClass).Append("\n");
            sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
            sb.Append("  EstimatedDurationInMillis: ").Append(EstimatedDurationInMillis).Append("\n");
            sb.Append("  FullName: ").Append(FullName).Append("\n");
            sb.Append("  LatestRun: ").Append(LatestRun).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Organization: ").Append(Organization).Append("\n");
            sb.Append("  WeatherScore: ").Append(WeatherScore).Append("\n");
            sb.Append("  Links: ").Append(Links).Append("\n");
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
