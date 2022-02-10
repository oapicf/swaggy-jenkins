package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * PipelineFolderImpl
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2022-02-10T09:53:34.462656Z[Etc/UTC]")
public class PipelineFolderImpl   {

  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("displayName")
  private String displayName;

  @JsonProperty("fullName")
  private String fullName;

  @JsonProperty("name")
  private String name;

  @JsonProperty("organization")
  private String organization;

  @JsonProperty("numberOfFolders")
  private Integer numberOfFolders;

  @JsonProperty("numberOfPipelines")
  private Integer numberOfPipelines;

  public PipelineFolderImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
  */
  
  @Schema(name = "_class", required = false)
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public PipelineFolderImpl displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

  /**
   * Get displayName
   * @return displayName
  */
  
  @Schema(name = "displayName", required = false)
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public PipelineFolderImpl fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

  /**
   * Get fullName
   * @return fullName
  */
  
  @Schema(name = "fullName", required = false)
  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public PipelineFolderImpl name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
  */
  
  @Schema(name = "name", required = false)
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public PipelineFolderImpl organization(String organization) {
    this.organization = organization;
    return this;
  }

  /**
   * Get organization
   * @return organization
  */
  
  @Schema(name = "organization", required = false)
  public String getOrganization() {
    return organization;
  }

  public void setOrganization(String organization) {
    this.organization = organization;
  }

  public PipelineFolderImpl numberOfFolders(Integer numberOfFolders) {
    this.numberOfFolders = numberOfFolders;
    return this;
  }

  /**
   * Get numberOfFolders
   * @return numberOfFolders
  */
  
  @Schema(name = "numberOfFolders", required = false)
  public Integer getNumberOfFolders() {
    return numberOfFolders;
  }

  public void setNumberOfFolders(Integer numberOfFolders) {
    this.numberOfFolders = numberOfFolders;
  }

  public PipelineFolderImpl numberOfPipelines(Integer numberOfPipelines) {
    this.numberOfPipelines = numberOfPipelines;
    return this;
  }

  /**
   * Get numberOfPipelines
   * @return numberOfPipelines
  */
  
  @Schema(name = "numberOfPipelines", required = false)
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
    return Objects.equals(this.propertyClass, pipelineFolderImpl.propertyClass) &&
        Objects.equals(this.displayName, pipelineFolderImpl.displayName) &&
        Objects.equals(this.fullName, pipelineFolderImpl.fullName) &&
        Objects.equals(this.name, pipelineFolderImpl.name) &&
        Objects.equals(this.organization, pipelineFolderImpl.organization) &&
        Objects.equals(this.numberOfFolders, pipelineFolderImpl.numberOfFolders) &&
        Objects.equals(this.numberOfPipelines, pipelineFolderImpl.numberOfPipelines);
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

