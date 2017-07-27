package apimodels;

import java.util.Objects;
import apimodels.IojenkinsblueoceanserviceembeddedrestExtensionClassImpl;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map   {
  @JsonProperty("io.jenkins.blueocean.service.embedded.rest.PipelineImpl")
  private IojenkinsblueoceanserviceembeddedrestExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = null;

  @JsonProperty("io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl")
  private IojenkinsblueoceanserviceembeddedrestExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(IojenkinsblueoceanserviceembeddedrestExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl) {
    this.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
    return this;
  }

   /**
   * Get ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl
   * @return ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl
  **/
    public IojenkinsblueoceanserviceembeddedrestExtensionClassImpl getIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl() {
    return ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
  }

  public void setIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(IojenkinsblueoceanserviceembeddedrestExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl) {
    this.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
  }

  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(IojenkinsblueoceanserviceembeddedrestExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl) {
    this.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
    return this;
  }

   /**
   * Get ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl
   * @return ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl
  **/
    public IojenkinsblueoceanserviceembeddedrestExtensionClassImpl getIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl() {
    return ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
  }

  public void setIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(IojenkinsblueoceanserviceembeddedrestExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl) {
    this.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
  }

  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

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


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map = (IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map) o;
    return Objects.equals(this.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl, iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl) &&
        Objects.equals(this.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl, iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl) &&
        Objects.equals(this.propertyClass, iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl, ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

