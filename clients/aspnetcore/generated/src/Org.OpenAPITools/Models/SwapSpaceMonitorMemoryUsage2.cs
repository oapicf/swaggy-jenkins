/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 * Generated by: https://openapi-generator.tech
 */

using System;
using System.Linq;
using System.Text;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace Org.OpenAPITools.Models
{ 
    /// <summary>
    /// 
    /// </summary>
    [DataContract]
    public partial class SwapSpaceMonitorMemoryUsage2 : IEquatable<SwapSpaceMonitorMemoryUsage2>
    { 
        /// <summary>
        /// Gets or Sets Class
        /// </summary>
        [DataMember(Name="_class")]
        public string Class { get; set; }

        /// <summary>
        /// Gets or Sets AvailablePhysicalMemory
        /// </summary>
        [DataMember(Name="availablePhysicalMemory")]
        public int? AvailablePhysicalMemory { get; set; }

        /// <summary>
        /// Gets or Sets AvailableSwapSpace
        /// </summary>
        [DataMember(Name="availableSwapSpace")]
        public int? AvailableSwapSpace { get; set; }

        /// <summary>
        /// Gets or Sets TotalPhysicalMemory
        /// </summary>
        [DataMember(Name="totalPhysicalMemory")]
        public int? TotalPhysicalMemory { get; set; }

        /// <summary>
        /// Gets or Sets TotalSwapSpace
        /// </summary>
        [DataMember(Name="totalSwapSpace")]
        public int? TotalSwapSpace { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class SwapSpaceMonitorMemoryUsage2 {\n");
            sb.Append("  Class: ").Append(Class).Append("\n");
            sb.Append("  AvailablePhysicalMemory: ").Append(AvailablePhysicalMemory).Append("\n");
            sb.Append("  AvailableSwapSpace: ").Append(AvailableSwapSpace).Append("\n");
            sb.Append("  TotalPhysicalMemory: ").Append(TotalPhysicalMemory).Append("\n");
            sb.Append("  TotalSwapSpace: ").Append(TotalSwapSpace).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
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
            return obj.GetType() == GetType() && Equals((SwapSpaceMonitorMemoryUsage2)obj);
        }

        /// <summary>
        /// Returns true if SwapSpaceMonitorMemoryUsage2 instances are equal
        /// </summary>
        /// <param name="other">Instance of SwapSpaceMonitorMemoryUsage2 to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SwapSpaceMonitorMemoryUsage2 other)
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
                    AvailablePhysicalMemory == other.AvailablePhysicalMemory ||
                    AvailablePhysicalMemory != null &&
                    AvailablePhysicalMemory.Equals(other.AvailablePhysicalMemory)
                ) && 
                (
                    AvailableSwapSpace == other.AvailableSwapSpace ||
                    AvailableSwapSpace != null &&
                    AvailableSwapSpace.Equals(other.AvailableSwapSpace)
                ) && 
                (
                    TotalPhysicalMemory == other.TotalPhysicalMemory ||
                    TotalPhysicalMemory != null &&
                    TotalPhysicalMemory.Equals(other.TotalPhysicalMemory)
                ) && 
                (
                    TotalSwapSpace == other.TotalSwapSpace ||
                    TotalSwapSpace != null &&
                    TotalSwapSpace.Equals(other.TotalSwapSpace)
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
                    if (AvailablePhysicalMemory != null)
                    hashCode = hashCode * 59 + AvailablePhysicalMemory.GetHashCode();
                    if (AvailableSwapSpace != null)
                    hashCode = hashCode * 59 + AvailableSwapSpace.GetHashCode();
                    if (TotalPhysicalMemory != null)
                    hashCode = hashCode * 59 + TotalPhysicalMemory.GetHashCode();
                    if (TotalSwapSpace != null)
                    hashCode = hashCode * 59 + TotalSwapSpace.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(SwapSpaceMonitorMemoryUsage2 left, SwapSpaceMonitorMemoryUsage2 right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(SwapSpaceMonitorMemoryUsage2 left, SwapSpaceMonitorMemoryUsage2 right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
