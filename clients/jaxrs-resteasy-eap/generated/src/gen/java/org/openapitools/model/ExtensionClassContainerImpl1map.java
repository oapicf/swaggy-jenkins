package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ExtensionClassImpl;
import javax.validation.constraints.*;
import javax.validation.Valid;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2024-03-15T14:15:29.514273296Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class ExtensionClassContainerImpl1map   {
  
  private ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
  private ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
  private String propertyClass;

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("io.jenkins.blueocean.service.embedded.rest.PipelineImpl")
  public ExtensionClassImpl getIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl() {
    return ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
  }
  public void setIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl) {
    this.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl")
  public ExtensionClassImpl getIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl() {
    return ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
  }
  public void setIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(ExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl) {
    this.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
  }

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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtensionClassContainerImpl1map extensionClassContainerImpl1map = (ExtensionClassContainerImpl1map) o;
    return Objects.equals(this.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl, extensionClassContainerImpl1map.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl) &&
        Objects.equals(this.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl, extensionClassContainerImpl1map.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl) &&
        Objects.equals(this.propertyClass, extensionClassContainerImpl1map.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl, ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl, propertyClass);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

