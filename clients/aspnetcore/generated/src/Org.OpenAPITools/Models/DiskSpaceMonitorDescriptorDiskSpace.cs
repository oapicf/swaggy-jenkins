/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 * Generated by: https://openapi-generator.tech
 */

using System;
using System.Linq;
using System.Text;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Org.OpenAPITools.Converters;

namespace Org.OpenAPITools.Models
{ 
    /// <summary>
    /// 
    /// </summary>
    [DataContract]
    public partial class DiskSpaceMonitorDescriptorDiskSpace : IEquatable<DiskSpaceMonitorDescriptorDiskSpace>
    {
        /// <summary>
        /// Gets or Sets Class
        /// </summary>
        [DataMember(Name="_class", EmitDefaultValue=false)]
        public string Class { get; set; }

        /// <summary>
        /// Gets or Sets Timestamp
        /// </summary>
        [DataMember(Name="timestamp", EmitDefaultValue=false)]
        public int Timestamp { get; set; }

        /// <summary>
        /// Gets or Sets Path
        /// </summary>
        [DataMember(Name="path", EmitDefaultValue=false)]
        public string Path { get; set; }

        /// <summary>
        /// Gets or Sets Size
        /// </summary>
        [DataMember(Name="size", EmitDefaultValue=false)]
        public int Size { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class DiskSpaceMonitorDescriptorDiskSpace {\n");
            sb.Append("  Class: ").Append(Class).Append("\n");
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
        public string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="obj">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object obj)
        {
            if (obj is null) return false;
            if (ReferenceEquals(this, obj)) return true;
            return obj.GetType() == GetType() && Equals((DiskSpaceMonitorDescriptorDiskSpace)obj);
        }

        /// <summary>
        /// Returns true if DiskSpaceMonitorDescriptorDiskSpace instances are equal
        /// </summary>
        /// <param name="other">Instance of DiskSpaceMonitorDescriptorDiskSpace to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(DiskSpaceMonitorDescriptorDiskSpace other)
        {
            if (other is null) return false;
            if (ReferenceEquals(this, other)) return true;

            return 
                (
                    Class == other.Class ||
                    Class != null &&
                    Class.Equals(other.Class)
                ) && 
                (
                    Timestamp == other.Timestamp ||
                    
                    Timestamp.Equals(other.Timestamp)
                ) && 
                (
                    Path == other.Path ||
                    Path != null &&
                    Path.Equals(other.Path)
                ) && 
                (
                    Size == other.Size ||
                    
                    Size.Equals(other.Size)
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
                var hashCode = 41;
                // Suitable nullity checks etc, of course :)
                    if (Class != null)
                    hashCode = hashCode * 59 + Class.GetHashCode();
                    
                    hashCode = hashCode * 59 + Timestamp.GetHashCode();
                    if (Path != null)
                    hashCode = hashCode * 59 + Path.GetHashCode();
                    
                    hashCode = hashCode * 59 + Size.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(DiskSpaceMonitorDescriptorDiskSpace left, DiskSpaceMonitorDescriptorDiskSpace right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(DiskSpaceMonitorDescriptorDiskSpace left, DiskSpaceMonitorDescriptorDiskSpace right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
