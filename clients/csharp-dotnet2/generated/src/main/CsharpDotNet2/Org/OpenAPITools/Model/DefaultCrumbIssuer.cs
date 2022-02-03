using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace Org.OpenAPITools.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class DefaultCrumbIssuer {
    /// <summary>
    /// Gets or Sets Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string Class { get; set; }

    /// <summary>
    /// Gets or Sets Crumb
    /// </summary>
    [DataMember(Name="crumb", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "crumb")]
    public string Crumb { get; set; }

    /// <summary>
    /// Gets or Sets CrumbRequestField
    /// </summary>
    [DataMember(Name="crumbRequestField", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "crumbRequestField")]
    public string CrumbRequestField { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class DefaultCrumbIssuer {\n");
      sb.Append("  Class: ").Append(Class).Append("\n");
      sb.Append("  Crumb: ").Append(Crumb).Append("\n");
      sb.Append("  CrumbRequestField: ").Append(CrumbRequestField).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
    }

}
}
