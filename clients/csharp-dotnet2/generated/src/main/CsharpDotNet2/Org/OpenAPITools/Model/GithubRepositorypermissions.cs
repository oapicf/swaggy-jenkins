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
  public class GithubRepositorypermissions {
    /// <summary>
    /// Gets or Sets Admin
    /// </summary>
    [DataMember(Name="admin", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "admin")]
    public bool? Admin { get; set; }

    /// <summary>
    /// Gets or Sets Push
    /// </summary>
    [DataMember(Name="push", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "push")]
    public bool? Push { get; set; }

    /// <summary>
    /// Gets or Sets Pull
    /// </summary>
    [DataMember(Name="pull", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "pull")]
    public bool? Pull { get; set; }

    /// <summary>
    /// Gets or Sets Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string Class { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class GithubRepositorypermissions {\n");
      sb.Append("  Admin: ").Append(Admin).Append("\n");
      sb.Append("  Push: ").Append(Push).Append("\n");
      sb.Append("  Pull: ").Append(Pull).Append("\n");
      sb.Append("  Class: ").Append(Class).Append("\n");
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
