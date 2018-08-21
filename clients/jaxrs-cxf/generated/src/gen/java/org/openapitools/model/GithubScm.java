package org.openapitools.model;

import org.openapitools.model.GithubScmlinks;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class GithubScm  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;

  @ApiModelProperty(value = "")
  @Valid
  private GithubScmlinks links = null;

  @ApiModelProperty(value = "")
  private String credentialId = null;

  @ApiModelProperty(value = "")
  private String id = null;

  @ApiModelProperty(value = "")
  private String uri = null;
 /**
   * Get propertyClass
   * @return propertyClass
  **/
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public GithubScm propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public GithubScmlinks getLinks() {
    return links;
  }

  public void setLinks(GithubScmlinks links) {
    this.links = links;
  }

  public GithubScm links(GithubScmlinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get credentialId
   * @return credentialId
  **/
  @JsonProperty("credentialId")
  public String getCredentialId() {
    return credentialId;
  }

  public void setCredentialId(String credentialId) {
    this.credentialId = credentialId;
  }

  public GithubScm credentialId(String credentialId) {
    this.credentialId = credentialId;
    return this;
  }

 /**
   * Get id
   * @return id
  **/
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public GithubScm id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get uri
   * @return uri
  **/
  @JsonProperty("uri")
  public String getUri() {
    return uri;
  }

  public void setUri(String uri) {
    this.uri = uri;
  }

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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

