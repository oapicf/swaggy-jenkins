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
    /// ExtensionClassContainerImpl1
    /// </summary>
    [DataContract(Name = "ExtensionClassContainerImpl1")]
    public partial class ExtensionClassContainerImpl1 : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ExtensionClassContainerImpl1" /> class.
        /// </summary>
        /// <param name="varClass">varClass.</param>
        /// <param name="links">links.</param>
        /// <param name="map">map.</param>
        public ExtensionClassContainerImpl1(string varClass = default(string), ExtensionClassContainerImpl1links links = default(ExtensionClassContainerImpl1links), ExtensionClassContainerImpl1map map = default(ExtensionClassContainerImpl1map))
        {
            this.VarClass = varClass;
            this.Links = links;
            this.Map = map;
        }

        /// <summary>
        /// Gets or Sets VarClass
        /// </summary>
        [DataMember(Name = "_class", EmitDefaultValue = false)]
        public string VarClass { get; set; }

        /// <summary>
        /// Gets or Sets Links
        /// </summary>
        [DataMember(Name = "_links", EmitDefaultValue = false)]
        public ExtensionClassContainerImpl1links Links { get; set; }

        /// <summary>
        /// Gets or Sets Map
        /// </summary>
        [DataMember(Name = "map", EmitDefaultValue = false)]
        public ExtensionClassContainerImpl1map Map { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ExtensionClassContainerImpl1 {\n");
            sb.Append("  VarClass: ").Append(VarClass).Append("\n");
            sb.Append("  Links: ").Append(Links).Append("\n");
            sb.Append("  Map: ").Append(Map).Append("\n");
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
