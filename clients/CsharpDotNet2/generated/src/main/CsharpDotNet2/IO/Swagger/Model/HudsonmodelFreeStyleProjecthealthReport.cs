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
  public class HudsonmodelFreeStyleProjecthealthReport {
    /// <summary>
    /// Gets or Sets Description
    /// </summary>
    [DataMember(Name="description", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "description")]
    public string Description { get; set; }

    /// <summary>
    /// Gets or Sets IconClassName
    /// </summary>
    [DataMember(Name="iconClassName", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "iconClassName")]
    public string IconClassName { get; set; }

    /// <summary>
    /// Gets or Sets IconUrl
    /// </summary>
    [DataMember(Name="iconUrl", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "iconUrl")]
    public string IconUrl { get; set; }

    /// <summary>
    /// Gets or Sets Score
    /// </summary>
    [DataMember(Name="score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "score")]
    public int? Score { get; set; }

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
      sb.Append("class HudsonmodelFreeStyleProjecthealthReport {\n");
      sb.Append("  Description: ").Append(Description).Append("\n");
      sb.Append("  IconClassName: ").Append(IconClassName).Append("\n");
      sb.Append("  IconUrl: ").Append(IconUrl).Append("\n");
      sb.Append("  Score: ").Append(Score).Append("\n");
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
