/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.FreeStyleProject;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * ListView
 */
@JsonPropertyOrder({
  ListView.JSON_PROPERTY_PROPERTY_CLASS,
  ListView.JSON_PROPERTY_DESCRIPTION,
  ListView.JSON_PROPERTY_JOBS,
  ListView.JSON_PROPERTY_NAME,
  ListView.JSON_PROPERTY_URL
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2024-03-15T14:14:47.059425590Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class ListView   {
  public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
  @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
  private String propertyClass;

  public static final String JSON_PROPERTY_DESCRIPTION = "description";
  @JsonProperty(JSON_PROPERTY_DESCRIPTION)
  private String description;

  public static final String JSON_PROPERTY_JOBS = "jobs";
  @JsonProperty(JSON_PROPERTY_JOBS)
  private List<@Valid FreeStyleProject> jobs;

  public static final String JSON_PROPERTY_NAME = "name";
  @JsonProperty(JSON_PROPERTY_NAME)
  private String name;

  public static final String JSON_PROPERTY_URL = "url";
  @JsonProperty(JSON_PROPERTY_URL)
  private String url;

  public ListView propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   **/
  @JsonProperty(value = "_class")
  @ApiModelProperty(value = "")
  
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public ListView description(String description) {
    this.description = description;
    return this;
  }

  /**
   * Get description
   * @return description
   **/
  @JsonProperty(value = "description")
  @ApiModelProperty(value = "")
  
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public ListView jobs(List<@Valid FreeStyleProject> jobs) {
    this.jobs = jobs;
    return this;
  }

  public ListView addJobsItem(FreeStyleProject jobsItem) {
    if (this.jobs == null) {
      this.jobs = new ArrayList<>();
    }
    this.jobs.add(jobsItem);
    return this;
  }

  /**
   * Get jobs
   * @return jobs
   **/
  @JsonProperty(value = "jobs")
  @ApiModelProperty(value = "")
  @Valid 
  public List<@Valid FreeStyleProject> getJobs() {
    return jobs;
  }

  public void setJobs(List<@Valid FreeStyleProject> jobs) {
    this.jobs = jobs;
  }

  public ListView name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   **/
  @JsonProperty(value = "name")
  @ApiModelProperty(value = "")
  
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public ListView url(String url) {
    this.url = url;
    return this;
  }

  /**
   * Get url
   * @return url
   **/
  @JsonProperty(value = "url")
  @ApiModelProperty(value = "")
  
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ListView listView = (ListView) o;
    return Objects.equals(this.propertyClass, listView.propertyClass) &&
        Objects.equals(this.description, listView.description) &&
        Objects.equals(this.jobs, listView.jobs) &&
        Objects.equals(this.name, listView.name) &&
        Objects.equals(this.url, listView.url);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

