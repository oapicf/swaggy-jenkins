package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.HudsonmodelFreeStyleProject;
import java.util.ArrayList;
import java.util.List;





@javax.annotation.Generated(value = "io.swagger.codegen.languages.UndertowCodegen", date = "2017-07-25T10:46:51.588+10:00")
public class HudsonmodelListView   {
  
  private String propertyClass = null;
  private String description = null;
  private List<HudsonmodelFreeStyleProject> jobs = new ArrayList<HudsonmodelFreeStyleProject>();
  private String name = null;
  private String url = null;

  /**
   **/
  public HudsonmodelListView propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
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
  public HudsonmodelListView description(String description) {
    this.description = description;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  public HudsonmodelListView jobs(List<HudsonmodelFreeStyleProject> jobs) {
    this.jobs = jobs;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("jobs")
  public List<HudsonmodelFreeStyleProject> getJobs() {
    return jobs;
  }
  public void setJobs(List<HudsonmodelFreeStyleProject> jobs) {
    this.jobs = jobs;
  }

  /**
   **/
  public HudsonmodelListView name(String name) {
    this.name = name;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  public HudsonmodelListView url(String url) {
    this.url = url;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("url")
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
    HudsonmodelListView hudsonmodelListView = (HudsonmodelListView) o;
    return Objects.equals(propertyClass, hudsonmodelListView.propertyClass) &&
        Objects.equals(description, hudsonmodelListView.description) &&
        Objects.equals(jobs, hudsonmodelListView.jobs) &&
        Objects.equals(name, hudsonmodelListView.name) &&
        Objects.equals(url, hudsonmodelListView.url);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, description, jobs, name, url);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelListView {\n");
    
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

