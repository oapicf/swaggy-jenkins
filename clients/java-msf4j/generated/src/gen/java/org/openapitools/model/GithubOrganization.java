package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.GithubOrganizationlinks;

/**
 * GithubOrganization
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2018-08-21T02:11:56.740Z[GMT]")
public class GithubOrganization   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("_links")
  private GithubOrganizationlinks links = null;

  @JsonProperty("jenkinsOrganizationPipeline")
  private Boolean jenkinsOrganizationPipeline = null;

  @JsonProperty("name")
  private String name = null;

  public GithubOrganization propertyClass(String propertyClass) {
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

  public GithubOrganization links(GithubOrganizationlinks links) {
    this.links = links;
    return this;
  }

   /**
   * Get links
   * @return links
  **/
  @ApiModelProperty(value = "")
  public GithubOrganizationlinks getLinks() {
    return links;
  }

  public void setLinks(GithubOrganizationlinks links) {
    this.links = links;
  }

  public GithubOrganization jenkinsOrganizationPipeline(Boolean jenkinsOrganizationPipeline) {
    this.jenkinsOrganizationPipeline = jenkinsOrganizationPipeline;
    return this;
  }

   /**
   * Get jenkinsOrganizationPipeline
   * @return jenkinsOrganizationPipeline
  **/
  @ApiModelProperty(value = "")
  public Boolean getJenkinsOrganizationPipeline() {
    return jenkinsOrganizationPipeline;
  }

  public void setJenkinsOrganizationPipeline(Boolean jenkinsOrganizationPipeline) {
    this.jenkinsOrganizationPipeline = jenkinsOrganizationPipeline;
  }

  public GithubOrganization name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubOrganization githubOrganization = (GithubOrganization) o;
    return Objects.equals(this.propertyClass, githubOrganization.propertyClass) &&
        Objects.equals(this.links, githubOrganization.links) &&
        Objects.equals(this.jenkinsOrganizationPipeline, githubOrganization.jenkinsOrganizationPipeline) &&
        Objects.equals(this.name, githubOrganization.name);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

