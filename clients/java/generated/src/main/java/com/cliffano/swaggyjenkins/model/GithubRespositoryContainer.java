/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.cliffano.swaggyjenkins.model;

import java.util.Objects;
import java.util.Arrays;
import com.cliffano.swaggyjenkins.model.GithubRepositories;
import com.cliffano.swaggyjenkins.model.GithubRespositoryContainerlinks;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * GithubRespositoryContainer
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2019-04-10T13:17:56.095Z[GMT]")
public class GithubRespositoryContainer {
  public static final String SERIALIZED_NAME_PROPERTY_CLASS = "_class";
  @SerializedName(SERIALIZED_NAME_PROPERTY_CLASS)
  private String propertyClass = null;

  public static final String SERIALIZED_NAME_LINKS = "_links";
  @SerializedName(SERIALIZED_NAME_LINKS)
  private GithubRespositoryContainerlinks links = null;

  public static final String SERIALIZED_NAME_REPOSITORIES = "repositories";
  @SerializedName(SERIALIZED_NAME_REPOSITORIES)
  private GithubRepositories repositories = null;

  public GithubRespositoryContainer propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
  @ApiModelProperty(value = "")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public GithubRespositoryContainer links(GithubRespositoryContainerlinks links) {
    this.links = links;
    return this;
  }

   /**
   * Get links
   * @return links
  **/
  @ApiModelProperty(value = "")
  public GithubRespositoryContainerlinks getLinks() {
    return links;
  }

  public void setLinks(GithubRespositoryContainerlinks links) {
    this.links = links;
  }

  public GithubRespositoryContainer repositories(GithubRepositories repositories) {
    this.repositories = repositories;
    return this;
  }

   /**
   * Get repositories
   * @return repositories
  **/
  @ApiModelProperty(value = "")
  public GithubRepositories getRepositories() {
    return repositories;
  }

  public void setRepositories(GithubRepositories repositories) {
    this.repositories = repositories;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubRespositoryContainer githubRespositoryContainer = (GithubRespositoryContainer) o;
    return Objects.equals(this.propertyClass, githubRespositoryContainer.propertyClass) &&
        Objects.equals(this.links, githubRespositoryContainer.links) &&
        Objects.equals(this.repositories, githubRespositoryContainer.repositories);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, repositories);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubRespositoryContainer {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    repositories: ").append(toIndentedString(repositories)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

