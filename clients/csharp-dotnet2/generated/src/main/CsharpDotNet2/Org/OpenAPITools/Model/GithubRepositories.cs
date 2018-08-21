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
  public class GithubRepositories {
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
    public GithubRepositorieslinks Links { get; set; }

    /// <summary>
    /// Gets or Sets Items
    /// </summary>
    [DataMember(Name="items", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "items")]
    public List<GithubRepository> Items { get; set; }

    /// <summary>
    /// Gets or Sets LastPage
    /// </summary>
    [DataMember(Name="lastPage", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "lastPage")]
    public int? LastPage { get; set; }

    /// <summary>
    /// Gets or Sets NextPage
    /// </summary>
    [DataMember(Name="nextPage", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "nextPage")]
    public int? NextPage { get; set; }

    /// <summary>
    /// Gets or Sets PageSize
    /// </summary>
    [DataMember(Name="pageSize", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "pageSize")]
    public int? PageSize { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class GithubRepositories {\n");
      sb.Append("  Class: ").Append(Class).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("  Items: ").Append(Items).Append("\n");
      sb.Append("  LastPage: ").Append(LastPage).Append("\n");
      sb.Append("  NextPage: ").Append(NextPage).Append("\n");
      sb.Append("  PageSize: ").Append(PageSize).Append("\n");
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
