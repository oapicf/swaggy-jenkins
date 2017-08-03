package io.swagger.model;

import io.swagger.model.GithubOrganizationlinks;
import javax.validation.constraints.*;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class GithubOrganization  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private GithubOrganizationlinks links = null;
  @ApiModelProperty(value = "")
  private Boolean jenkinsOrganizationPipeline = null;
  @ApiModelProperty(value = "")
  private String name = null;

 /**
   * Get propertyClass
   * @return propertyClass
  **/
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public GithubOrganization propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  public GithubOrganizationlinks getLinks() {
    return links;
  }

  public void setLinks(GithubOrganizationlinks links) {
    this.links = links;
  }

  public GithubOrganization links(GithubOrganizationlinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get jenkinsOrganizationPipeline
   * @return jenkinsOrganizationPipeline
  **/
  public Boolean isJenkinsOrganizationPipeline() {
    return jenkinsOrganizationPipeline;
  }

  public void setJenkinsOrganizationPipeline(Boolean jenkinsOrganizationPipeline) {
    this.jenkinsOrganizationPipeline = jenkinsOrganizationPipeline;
  }

  public GithubOrganization jenkinsOrganizationPipeline(Boolean jenkinsOrganizationPipeline) {
    this.jenkinsOrganizationPipeline = jenkinsOrganizationPipeline;
    return this;
  }

 /**
   * Get name
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public GithubOrganization name(String name) {
    this.name = name;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

