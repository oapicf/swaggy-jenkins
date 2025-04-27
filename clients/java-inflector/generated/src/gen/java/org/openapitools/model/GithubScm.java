package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.GithubScmlinks;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2025-04-27T08:09:15.793738019Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class GithubScm   {
  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("_links")
  private GithubScmlinks links;

  @JsonProperty("credentialId")
  private String credentialId;

  @JsonProperty("id")
  private String id;

  @JsonProperty("uri")
  private String uri;

  /**
   **/
  public GithubScm propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public GithubScm links(GithubScmlinks links) {
    this.links = links;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_links")
  public GithubScmlinks getLinks() {
    return links;
  }
  public void setLinks(GithubScmlinks links) {
    this.links = links;
  }

  /**
   **/
  public GithubScm credentialId(String credentialId) {
    this.credentialId = credentialId;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("credentialId")
  public String getCredentialId() {
    return credentialId;
  }
  public void setCredentialId(String credentialId) {
    this.credentialId = credentialId;
  }

  /**
   **/
  public GithubScm id(String id) {
    this.id = id;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  public GithubScm uri(String uri) {
    this.uri = uri;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("uri")
  public String getUri() {
    return uri;
  }
  public void setUri(String uri) {
    this.uri = uri;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubScm githubScm = (GithubScm) o;
    return Objects.equals(propertyClass, githubScm.propertyClass) &&
        Objects.equals(links, githubScm.links) &&
        Objects.equals(credentialId, githubScm.credentialId) &&
        Objects.equals(id, githubScm.id) &&
        Objects.equals(uri, githubScm.uri);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, credentialId, id, uri);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubScm {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    credentialId: ").append(toIndentedString(credentialId)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    uri: ").append(toIndentedString(uri)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

