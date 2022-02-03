package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.GithubScmlinks;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("GithubScm")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-02T10:45:47.905826Z[Etc/UTC]")public class GithubScm   {
  
  private @Valid String propertyClass;
  private @Valid GithubScmlinks links;
  private @Valid String credentialId;
  private @Valid String id;
  private @Valid String uri;

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

  @JsonProperty("_class")
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

  @JsonProperty("_links")
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

  @JsonProperty("credentialId")
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

  @JsonProperty("id")
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

  @JsonProperty("uri")
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
    return Objects.equals(this.propertyClass, githubScm.propertyClass) &&
        Objects.equals(this.links, githubScm.links) &&
        Objects.equals(this.credentialId, githubScm.credentialId) &&
        Objects.equals(this.id, githubScm.id) &&
        Objects.equals(this.uri, githubScm.uri);
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

