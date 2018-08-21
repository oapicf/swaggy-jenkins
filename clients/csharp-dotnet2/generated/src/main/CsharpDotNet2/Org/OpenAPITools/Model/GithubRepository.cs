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
  public class GithubRepository {
    /// <summary>
    /// Gets or Sets Class
    /// </summary>
    [DataMember(Name="_class", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_class")]
    public string Class { get; set; }

    /// <summary>
    /// Gets or Sets Links
    /// </summary>
    [DataMember(Name="_links", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_links")]
    public GithubRepositorylinks Links { get; set; }

    /// <summary>
    /// Gets or Sets DefaultBranch
    /// </summary>
    [DataMember(Name="defaultBranch", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "defaultBranch")]
    public string DefaultBranch { get; set; }

    /// <summary>
    /// Gets or Sets Description
    /// </summary>
    [DataMember(Name="description", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "description")]
    public string Description { get; set; }

    /// <summary>
    /// Gets or Sets Name
    /// </summary>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    /// <summary>
    /// Gets or Sets Permissions
    /// </summary>
    [DataMember(Name="permissions", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "permissions")]
    public GithubRepositorypermissions Permissions { get; set; }

    /// <summary>
    /// Gets or Sets Private
    /// </summary>
    [DataMember(Name="private", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "private")]
    public bool? Private { get; set; }

    /// <summary>
    /// Gets or Sets FullName
    /// </summary>
    [DataMember(Name="fullName", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "fullName")]
    public string FullName { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class GithubRepository {\n");
      sb.Append("  Class: ").Append(Class).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("  DefaultBranch: ").Append(DefaultBranch).Append("\n");
      sb.Append("  Description: ").Append(Description).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Permissions: ").Append(Permissions).Append("\n");
      sb.Append("  Private: ").Append(Private).Append("\n");
      sb.Append("  FullName: ").Append(FullName).Append("\n");
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
