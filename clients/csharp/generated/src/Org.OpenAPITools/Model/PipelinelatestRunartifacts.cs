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
    /// PipelinelatestRunartifacts
    /// </summary>
    [DataContract]
    public partial class PipelinelatestRunartifacts :  IEquatable<PipelinelatestRunartifacts>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="PipelinelatestRunartifacts" /> class.
        /// </summary>
        /// <param name="name">name.</param>
        /// <param name="size">size.</param>
        /// <param name="url">url.</param>
        /// <param name="_class">_class.</param>
        public PipelinelatestRunartifacts(string name = default(string), int size = default(int), string url = default(string), string _class = default(string))
        {
            this.Name = name;
            this.Size = size;
            this.Url = url;
            this.Class = _class;
        }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name="name", EmitDefaultValue=false)]
        public string Name { get; set; }

        /// <summary>
        /// Gets or Sets Size
        /// </summary>
        [DataMember(Name="size", EmitDefaultValue=false)]
        public int Size { get; set; }

        /// <summary>
        /// Gets or Sets Url
        /// </summary>
        [DataMember(Name="url", EmitDefaultValue=false)]
        public string Url { get; set; }

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
            sb.Append("class PipelinelatestRunartifacts {\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Size: ").Append(Size).Append("\n");
            sb.Append("  Url: ").Append(Url).Append("\n");
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
            return this.Equals(input as PipelinelatestRunartifacts);
        }

        /// <summary>
        /// Returns true if PipelinelatestRunartifacts instances are equal
        /// </summary>
        /// <param name="input">Instance of PipelinelatestRunartifacts to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(PipelinelatestRunartifacts input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Name == input.Name ||
                    (this.Name != null &&
                    this.Name.Equals(input.Name))
                ) && 
                (
                    this.Size == input.Size ||
                    (this.Size != null &&
                    this.Size.Equals(input.Size))
                ) && 
                (
                    this.Url == input.Url ||
                    (this.Url != null &&
                    this.Url.Equals(input.Url))
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
                if (this.Name != null)
                    hashCode = hashCode * 59 + this.Name.GetHashCode();
                if (this.Size != null)
                    hashCode = hashCode * 59 + this.Size.GetHashCode();
                if (this.Url != null)
                    hashCode = hashCode * 59 + this.Url.GetHashCode();
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
