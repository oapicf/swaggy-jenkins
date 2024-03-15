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
    /// DiskSpaceMonitorDescriptorDiskSpace
    /// </summary>
    [DataContract(Name = "DiskSpaceMonitorDescriptorDiskSpace")]
    public partial class DiskSpaceMonitorDescriptorDiskSpace : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="DiskSpaceMonitorDescriptorDiskSpace" /> class.
        /// </summary>
        /// <param name="varClass">varClass.</param>
        /// <param name="timestamp">timestamp.</param>
        /// <param name="path">path.</param>
        /// <param name="size">size.</param>
        public DiskSpaceMonitorDescriptorDiskSpace(string varClass = default(string), int timestamp = default(int), string path = default(string), int size = default(int))
        {
            this.VarClass = varClass;
            this.Timestamp = timestamp;
            this.Path = path;
            this.Size = size;
        }

        /// <summary>
        /// Gets or Sets VarClass
        /// </summary>
        [DataMember(Name = "_class", EmitDefaultValue = false)]
        public string VarClass { get; set; }

        /// <summary>
        /// Gets or Sets Timestamp
        /// </summary>
        [DataMember(Name = "timestamp", EmitDefaultValue = false)]
        public int Timestamp { get; set; }

        /// <summary>
        /// Gets or Sets Path
        /// </summary>
        [DataMember(Name = "path", EmitDefaultValue = false)]
        public string Path { get; set; }

        /// <summary>
        /// Gets or Sets Size
        /// </summary>
        [DataMember(Name = "size", EmitDefaultValue = false)]
        public int Size { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class DiskSpaceMonitorDescriptorDiskSpace {\n");
            sb.Append("  VarClass: ").Append(VarClass).Append("\n");
            sb.Append("  Timestamp: ").Append(Timestamp).Append("\n");
            sb.Append("  Path: ").Append(Path).Append("\n");
            sb.Append("  Size: ").Append(Size).Append("\n");
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
