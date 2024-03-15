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
    /// DefaultCrumbIssuer
    /// </summary>
    [DataContract(Name = "DefaultCrumbIssuer")]
    public partial class DefaultCrumbIssuer : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="DefaultCrumbIssuer" /> class.
        /// </summary>
        /// <param name="varClass">varClass.</param>
        /// <param name="crumb">crumb.</param>
        /// <param name="crumbRequestField">crumbRequestField.</param>
        public DefaultCrumbIssuer(string varClass = default(string), string crumb = default(string), string crumbRequestField = default(string))
        {
            this.VarClass = varClass;
            this.Crumb = crumb;
            this.CrumbRequestField = crumbRequestField;
        }

        /// <summary>
        /// Gets or Sets VarClass
        /// </summary>
        [DataMember(Name = "_class", EmitDefaultValue = false)]
        public string VarClass { get; set; }

        /// <summary>
        /// Gets or Sets Crumb
        /// </summary>
        [DataMember(Name = "crumb", EmitDefaultValue = false)]
        public string Crumb { get; set; }

        /// <summary>
        /// Gets or Sets CrumbRequestField
        /// </summary>
        [DataMember(Name = "crumbRequestField", EmitDefaultValue = false)]
        public string CrumbRequestField { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class DefaultCrumbIssuer {\n");
            sb.Append("  VarClass: ").Append(VarClass).Append("\n");
            sb.Append("  Crumb: ").Append(Crumb).Append("\n");
            sb.Append("  CrumbRequestField: ").Append(CrumbRequestField).Append("\n");
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
