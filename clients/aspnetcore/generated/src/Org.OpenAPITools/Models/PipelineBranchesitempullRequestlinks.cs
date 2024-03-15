/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
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
    public partial class PipelineBranchesitempullRequestlinks : IEquatable<PipelineBranchesitempullRequestlinks>
    {
        /// <summary>
        /// Gets or Sets Self
        /// </summary>
        [DataMember(Name="self", EmitDefaultValue=false)]
        public string Self { get; set; }

        /// <summary>
        /// Gets or Sets VarClass
        /// </summary>
        [DataMember(Name="_class", EmitDefaultValue=false)]
        public string VarClass { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class PipelineBranchesitempullRequestlinks {\n");
            sb.Append("  Self: ").Append(Self).Append("\n");
            sb.Append("  VarClass: ").Append(VarClass).Append("\n");
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
            return obj.GetType() == GetType() && Equals((PipelineBranchesitempullRequestlinks)obj);
        }

        /// <summary>
        /// Returns true if PipelineBranchesitempullRequestlinks instances are equal
        /// </summary>
        /// <param name="other">Instance of PipelineBranchesitempullRequestlinks to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(PipelineBranchesitempullRequestlinks other)
        {
            if (other is null) return false;
            if (ReferenceEquals(this, other)) return true;

            return 
                (
                    Self == other.Self ||
                    Self != null &&
                    Self.Equals(other.Self)
                ) && 
                (
                    VarClass == other.VarClass ||
                    VarClass != null &&
                    VarClass.Equals(other.VarClass)
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
                    if (Self != null)
                    hashCode = hashCode * 59 + Self.GetHashCode();
                    if (VarClass != null)
                    hashCode = hashCode * 59 + VarClass.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(PipelineBranchesitempullRequestlinks left, PipelineBranchesitempullRequestlinks right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(PipelineBranchesitempullRequestlinks left, PipelineBranchesitempullRequestlinks right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
