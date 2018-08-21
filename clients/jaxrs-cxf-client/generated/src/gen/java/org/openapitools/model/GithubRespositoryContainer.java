package org.openapitools.model;

import org.openapitools.model.GithubRepositories;
import org.openapitools.model.GithubRespositoryContainerlinks;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class GithubRespositoryContainer  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;

  @ApiModelProperty(value = "")
  private GithubRespositoryContainerlinks links = null;

  @ApiModelProperty(value = "")
  private GithubRepositories repositories = null;
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

  public GithubRespositoryContainer propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public GithubRespositoryContainerlinks getLinks() {
    return links;
  }

  public void setLinks(GithubRespositoryContainerlinks links) {
    this.links = links;
  }

  public GithubRespositoryContainer links(GithubRespositoryContainerlinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get repositories
   * @return repositories
  **/
  @JsonProperty("repositories")
  public GithubRepositories getRepositories() {
    return repositories;
  }

  public void setRepositories(GithubRepositories repositories) {
    this.repositories = repositories;
  }

  public GithubRespositoryContainer repositories(GithubRepositories repositories) {
    this.repositories = repositories;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

