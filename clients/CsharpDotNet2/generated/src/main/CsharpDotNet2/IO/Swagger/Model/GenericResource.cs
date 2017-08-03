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
  public class GenericResource {
    /// <summary>
    /// Gets or Sets _Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string _Class { get; set; }

    /// <summary>
    /// Gets or Sets DisplayName
    /// </summary>
    [DataMember(Name="displayName", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "displayName")]
    public string DisplayName { get; set; }

    /// <summary>
    /// Gets or Sets DurationInMillis
    /// </summary>
    [DataMember(Name="durationInMillis", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "durationInMillis")]
    public int? DurationInMillis { get; set; }

    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public string Id { get; set; }

    /// <summary>
    /// Gets or Sets Result
    /// </summary>
    [DataMember(Name="result", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "result")]
    public string Result { get; set; }

    /// <summary>
    /// Gets or Sets StartTime
    /// </summary>
    [DataMember(Name="startTime", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "startTime")]
    public string StartTime { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class GenericResource {\n");
      sb.Append("  _Class: ").Append(_Class).Append("\n");
      sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
      sb.Append("  DurationInMillis: ").Append(DurationInMillis).Append("\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Result: ").Append(Result).Append("\n");
      sb.Append("  StartTime: ").Append(StartTime).Append("\n");
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
