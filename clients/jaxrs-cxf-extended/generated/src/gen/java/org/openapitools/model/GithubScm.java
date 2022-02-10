package org.openapitools.model;

import org.openapitools.model.GithubScmlinks;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class GithubScm  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  @Valid
  private GithubScmlinks links;

  @ApiModelProperty(value = "")
  private String credentialId;

  @ApiModelProperty(value = "")
  private String id;

  @ApiModelProperty(value = "")
  private String uri;
 /**
  * Get propertyClass
  * @return propertyClass
  */
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
 public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
  public GithubScm propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get links
  * @return links
  */
  @JsonProperty("_links")
  public GithubScmlinks getLinks() {
    return links;
  }

  /**
   * Sets the <code>links</code> property.
   */
 public void setLinks(GithubScmlinks links) {
    this.links = links;
  }

  /**
   * Sets the <code>links</code> property.
   */
  public GithubScm links(GithubScmlinks links) {
    this.links = links;
    return this;
  }

 /**
  * Get credentialId
  * @return credentialId
  */
  @JsonProperty("credentialId")
  public String getCredentialId() {
    return credentialId;
  }

  /**
   * Sets the <code>credentialId</code> property.
   */
 public void setCredentialId(String credentialId) {
    this.credentialId = credentialId;
  }

  /**
   * Sets the <code>credentialId</code> property.
   */
  public GithubScm credentialId(String credentialId) {
    this.credentialId = credentialId;
    return this;
  }

 /**
  * Get id
  * @return id
  */
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  /**
   * Sets the <code>id</code> property.
   */
 public void setId(String id) {
    this.id = id;
  }

  /**
   * Sets the <code>id</code> property.
   */
  public GithubScm id(String id) {
    this.id = id;
    return this;
  }

 /**
  * Get uri
  * @return uri
  */
  @JsonProperty("uri")
  public String getUri() {
    return uri;
  }

  /**
   * Sets the <code>uri</code> property.
   */
 public void setUri(String uri) {
    this.uri = uri;
  }

  /**
   * Sets the <code>uri</code> property.
   */
  public GithubScm uri(String uri) {
    this.uri = uri;
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

