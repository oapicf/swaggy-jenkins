package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class PipelineFolderImpl   {
  
  private String propertyClass;
  private String displayName;
  private String fullName;
  private String name;
  private String organization;
  private Integer numberOfFolders;
  private Integer numberOfPipelines;

  public PipelineFolderImpl () {

  }

  public PipelineFolderImpl (String propertyClass, String displayName, String fullName, String name, String organization, Integer numberOfFolders, Integer numberOfPipelines) {
    this.propertyClass = propertyClass;
    this.displayName = displayName;
    this.fullName = fullName;
    this.name = name;
    this.organization = organization;
    this.numberOfFolders = numberOfFolders;
    this.numberOfPipelines = numberOfPipelines;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

    
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }
  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

    
  @JsonProperty("name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

    
  @JsonProperty("organization")
  public String getOrganization() {
    return organization;
  }
  public void setOrganization(String organization) {
    this.organization = organization;
  }

    
  @JsonProperty("numberOfFolders")
  public Integer getNumberOfFolders() {
    return numberOfFolders;
  }
  public void setNumberOfFolders(Integer numberOfFolders) {
    this.numberOfFolders = numberOfFolders;
  }

    
  @JsonProperty("numberOfPipelines")
  public Integer getNumberOfPipelines() {
    return numberOfPipelines;
  }
  public void setNumberOfPipelines(Integer numberOfPipelines) {
    this.numberOfPipelines = numberOfPipelines;
  }


  @Override
  public boolean equals(Object o) {
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
