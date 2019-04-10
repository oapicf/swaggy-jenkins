/* 
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
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
    /// PipelineStepImpllinks
    /// </summary>
    [DataContract]
    public partial class PipelineStepImpllinks :  IEquatable<PipelineStepImpllinks>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="PipelineStepImpllinks" /> class.
        /// </summary>
        /// <param name="self">self.</param>
        /// <param name="actions">actions.</param>
        /// <param name="_class">_class.</param>
        public PipelineStepImpllinks(Link self = default(Link), Link actions = default(Link), string _class = default(string))
        {
            this.Self = self;
            this.Actions = actions;
            this.Class = _class;
        }
        
        /// <summary>
        /// Gets or Sets Self
        /// </summary>
        [DataMember(Name="self", EmitDefaultValue=false)]
        public Link Self { get; set; }

        /// <summary>
        /// Gets or Sets Actions
        /// </summary>
        [DataMember(Name="actions", EmitDefaultValue=false)]
        public Link Actions { get; set; }

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
            sb.Append("class PipelineStepImpllinks {\n");
            sb.Append("  Self: ").Append(Self).Append("\n");
            sb.Append("  Actions: ").Append(Actions).Append("\n");
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
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as PipelineStepImpllinks);
        }

        /// <summary>
        /// Returns true if PipelineStepImpllinks instances are equal
        /// </summary>
        /// <param name="input">Instance of PipelineStepImpllinks to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(PipelineStepImpllinks input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Self == input.Self ||
                    (this.Self != null &&
                    this.Self.Equals(input.Self))
                ) && 
                (
                    this.Actions == input.Actions ||
                    (this.Actions != null &&
                    this.Actions.Equals(input.Actions))
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
                if (this.Self != null)
                    hashCode = hashCode * 59 + this.Self.GetHashCode();
                if (this.Actions != null)
                    hashCode = hashCode * 59 + this.Actions.GetHashCode();
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
