package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.GithubOrganizationlinks;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2022-06-04T08:09:08.274195Z[Etc/UTC]")
public class GithubOrganization   {
  
  private String propertyClass;
  private GithubOrganizationlinks links;
  private Boolean jenkinsOrganizationPipeline;
  private String name;

  /**
   **/
  
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
  
  @ApiModelProperty(value = "")
  @JsonProperty("_links")
  public GithubOrganizationlinks getLinks() {
    return links;
  }
  public void setLinks(GithubOrganizationlinks links) {
    this.links = links;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("jenkinsOrganizationPipeline")
  public Boolean getJenkinsOrganizationPipeline() {
    return jenkinsOrganizationPipeline;
  }
  public void setJenkinsOrganizationPipeline(Boolean jenkinsOrganizationPipeline) {
    this.jenkinsOrganizationPipeline = jenkinsOrganizationPipeline;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubOrganization githubOrganization = (GithubOrganization) o;
    return Objects.equals(propertyClass, githubOrganization.propertyClass) &&
        Objects.equals(links, githubOrganization.links) &&
        Objects.equals(jenkinsOrganizationPipeline, githubOrganization.jenkinsOrganizationPipeline) &&
        Objects.equals(name, githubOrganization.name);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, jenkinsOrganizationPipeline, name);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubOrganization {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    jenkinsOrganizationPipeline: ").append(toIndentedString(jenkinsOrganizationPipeline)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
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

