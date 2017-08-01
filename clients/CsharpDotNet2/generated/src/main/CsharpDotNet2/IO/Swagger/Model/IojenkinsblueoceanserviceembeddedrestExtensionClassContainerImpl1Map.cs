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
  public class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map {
    /// <summary>
    /// Gets or Sets IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl
    /// </summary>
    [DataMember(Name="io.jenkins.blueocean.service.embedded.rest.PipelineImpl", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "io.jenkins.blueocean.service.embedded.rest.PipelineImpl")]
    public IojenkinsblueoceanserviceembeddedrestExtensionClassImpl IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl { get; set; }

    /// <summary>
    /// Gets or Sets IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl
    /// </summary>
    [DataMember(Name="io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl")]
    public IojenkinsblueoceanserviceembeddedrestExtensionClassImpl IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl { get; set; }

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
      sb.Append("class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map {\n");
      sb.Append("  IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: ").Append(IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl).Append("\n");
      sb.Append("  IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: ").Append(IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl).Append("\n");
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
