using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace IO.Swagger.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class BranchImplpermissions {
    /// <summary>
    /// Gets or Sets Create
    /// </summary>
    [DataMember(Name="create", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "create")]
    public bool? Create { get; set; }

    /// <summary>
    /// Gets or Sets Read
    /// </summary>
    [DataMember(Name="read", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "read")]
    public bool? Read { get; set; }

    /// <summary>
    /// Gets or Sets Start
    /// </summary>
    [DataMember(Name="start", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "start")]
    public bool? Start { get; set; }

    /// <summary>
    /// Gets or Sets Stop
    /// </summary>
    [DataMember(Name="stop", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "stop")]
    public bool? Stop { get; set; }

    /// <summary>
    /// Gets or Sets _Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string _Class { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class BranchImplpermissions {\n");
      sb.Append("  Create: ").Append(Create).Append("\n");
      sb.Append("  Read: ").Append(Read).Append("\n");
      sb.Append("  Start: ").Append(Start).Append("\n");
      sb.Append("  Stop: ").Append(Stop).Append("\n");
      sb.Append("  _Class: ").Append(_Class).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return JsonConvert.SerializeObject(this, Formatting.Indented);
    }

}
}
