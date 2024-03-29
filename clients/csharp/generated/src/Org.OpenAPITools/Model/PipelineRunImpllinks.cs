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
    /// PipelineRunImpllinks
    /// </summary>
    [DataContract(Name = "PipelineRunImpllinks")]
    public partial class PipelineRunImpllinks : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="PipelineRunImpllinks" /> class.
        /// </summary>
        /// <param name="nodes">nodes.</param>
        /// <param name="log">log.</param>
        /// <param name="self">self.</param>
        /// <param name="actions">actions.</param>
        /// <param name="steps">steps.</param>
        /// <param name="varClass">varClass.</param>
        public PipelineRunImpllinks(Link nodes = default(Link), Link log = default(Link), Link self = default(Link), Link actions = default(Link), Link steps = default(Link), string varClass = default(string))
        {
            this.Nodes = nodes;
            this.Log = log;
            this.Self = self;
            this.Actions = actions;
            this.Steps = steps;
            this.VarClass = varClass;
        }

        /// <summary>
        /// Gets or Sets Nodes
        /// </summary>
        [DataMember(Name = "nodes", EmitDefaultValue = false)]
        public Link Nodes { get; set; }

        /// <summary>
        /// Gets or Sets Log
        /// </summary>
        [DataMember(Name = "log", EmitDefaultValue = false)]
        public Link Log { get; set; }

        /// <summary>
        /// Gets or Sets Self
        /// </summary>
        [DataMember(Name = "self", EmitDefaultValue = false)]
        public Link Self { get; set; }

        /// <summary>
        /// Gets or Sets Actions
        /// </summary>
        [DataMember(Name = "actions", EmitDefaultValue = false)]
        public Link Actions { get; set; }

        /// <summary>
        /// Gets or Sets Steps
        /// </summary>
        [DataMember(Name = "steps", EmitDefaultValue = false)]
        public Link Steps { get; set; }

        /// <summary>
        /// Gets or Sets VarClass
        /// </summary>
        [DataMember(Name = "_class", EmitDefaultValue = false)]
        public string VarClass { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class PipelineRunImpllinks {\n");
            sb.Append("  Nodes: ").Append(Nodes).Append("\n");
            sb.Append("  Log: ").Append(Log).Append("\n");
            sb.Append("  Self: ").Append(Self).Append("\n");
            sb.Append("  Actions: ").Append(Actions).Append("\n");
            sb.Append("  Steps: ").Append(Steps).Append("\n");
            sb.Append("  VarClass: ").Append(VarClass).Append("\n");
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
