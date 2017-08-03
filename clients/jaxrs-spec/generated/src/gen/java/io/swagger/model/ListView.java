package io.swagger.model;

import io.swagger.model.FreeStyleProject;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;


public class ListView   {
  
  private String propertyClass = null;
  private String description = null;
  private List<FreeStyleProject> jobs = new ArrayList<FreeStyleProject>();
  private String name = null;
  private String url = null;

  /**
   **/
  public ListView propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public ListView description(String description) {
    this.description = description;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  public ListView jobs(List<FreeStyleProject> jobs) {
    this.jobs = jobs;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public List<FreeStyleProject> getJobs() {
    return jobs;
  }
  public void setJobs(List<FreeStyleProject> jobs) {
    this.jobs = jobs;
  }

  /**
   **/
  public ListView name(String name) {
    this.name = name;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  public ListView url(String url) {
    this.url = url;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ListView listView = (ListView) o;
    return Objects.equals(propertyClass, listView.propertyClass) &&
        Objects.equals(description, listView.description) &&
        Objects.equals(jobs, listView.jobs) &&
        Objects.equals(name, listView.name) &&
        Objects.equals(url, listView.url);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, description, jobs, name, url);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ListView {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    jobs: ").append(toIndentedString(jobs)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
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

