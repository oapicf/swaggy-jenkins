package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;





@javax.annotation.Generated(value = "io.swagger.codegen.languages.UndertowCodegen", date = "2017-08-03T23:38:41.431Z")
public class PipelineFolderImpl   {
  
  private String propertyClass = null;
  private String displayName = null;
  private String fullName = null;
  private String name = null;
  private String organization = null;
  private Integer numberOfFolders = null;
  private Integer numberOfPipelines = null;

  /**
   **/
  public PipelineFolderImpl propertyClass(String propertyClass) {
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
  public PipelineFolderImpl displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   **/
  public PipelineFolderImpl fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }
  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  /**
   **/
  public PipelineFolderImpl name(String name) {
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
  public PipelineFolderImpl organization(String organization) {
    this.organization = organization;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("organization")
  public String getOrganization() {
    return organization;
  }
  public void setOrganization(String organization) {
    this.organization = organization;
  }

  /**
   **/
  public PipelineFolderImpl numberOfFolders(Integer numberOfFolders) {
    this.numberOfFolders = numberOfFolders;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("numberOfFolders")
  public Integer getNumberOfFolders() {
    return numberOfFolders;
  }
  public void setNumberOfFolders(Integer numberOfFolders) {
    this.numberOfFolders = numberOfFolders;
  }

  /**
   **/
  public PipelineFolderImpl numberOfPipelines(Integer numberOfPipelines) {
    this.numberOfPipelines = numberOfPipelines;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("numberOfPipelines")
  public Integer getNumberOfPipelines() {
    return numberOfPipelines;
  }
  public void setNumberOfPipelines(Integer numberOfPipelines) {
    this.numberOfPipelines = numberOfPipelines;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PipelineFolderImpl pipelineFolderImpl = (PipelineFolderImpl) o;
    return Objects.equals(propertyClass, pipelineFolderImpl.propertyClass) &&
        Objects.equals(displayName, pipelineFolderImpl.displayName) &&
        Objects.equals(fullName, pipelineFolderImpl.fullName) &&
        Objects.equals(name, pipelineFolderImpl.name) &&
        Objects.equals(organization, pipelineFolderImpl.organization) &&
        Objects.equals(numberOfFolders, pipelineFolderImpl.numberOfFolders) &&
        Objects.equals(numberOfPipelines, pipelineFolderImpl.numberOfPipelines);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, displayName, fullName, name, organization, numberOfFolders, numberOfPipelines);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineFolderImpl {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
    sb.append("    numberOfFolders: ").append(toIndentedString(numberOfFolders)).append("\n");
    sb.append("    numberOfPipelines: ").append(toIndentedString(numberOfPipelines)).append("\n");
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

