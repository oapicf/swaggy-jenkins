package org.openapitools.model;

import org.openapitools.model.ExtensionClassImpl;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ExtensionClassContainerImpl1map  {
  
  @ApiModelProperty(value = "")
  @Valid
  private ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;

  @ApiModelProperty(value = "")
  @Valid
  private ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;

  @ApiModelProperty(value = "")
  private String propertyClass;
 /**
   * Get ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl
   * @return ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl
  **/
  @JsonProperty("io.jenkins.blueocean.service.embedded.rest.PipelineImpl")
  public ExtensionClassImpl getIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl() {
    return ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
  }

  public void setIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl) {
    this.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
  }

  public ExtensionClassContainerImpl1map ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl) {
    this.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
    return this;
  }

 /**
   * Get ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl
   * @return ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl
  **/
  @JsonProperty("io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl")
  public ExtensionClassImpl getIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl() {
    return ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
  }

  public void setIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl) {
    this.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
  }

  public ExtensionClassContainerImpl1map ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl) {
    this.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
    return this;
  }

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

  public ExtensionClassContainerImpl1map propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtensionClassContainerImpl1map {\n");
    
    sb.append("    ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: ").append(toIndentedString(ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl)).append("\n");
    sb.append("    ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: ").append(toIndentedString(ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

