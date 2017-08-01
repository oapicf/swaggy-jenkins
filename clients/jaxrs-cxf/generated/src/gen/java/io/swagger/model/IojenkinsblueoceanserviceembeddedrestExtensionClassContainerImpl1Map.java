package io.swagger.model;

import io.swagger.model.IojenkinsblueoceanserviceembeddedrestExtensionClassImpl;
import javax.validation.constraints.*;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map  {
  
  @ApiModelProperty(value = "")
  private IojenkinsblueoceanserviceembeddedrestExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = null;
  @ApiModelProperty(value = "")
  private IojenkinsblueoceanserviceembeddedrestExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = null;
  @ApiModelProperty(value = "")
  private String propertyClass = null;

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

  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl(IojenkinsblueoceanserviceembeddedrestExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl) {
    this.ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl;
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

  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl(IojenkinsblueoceanserviceembeddedrestExtensionClassImpl ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl) {
    this.ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl = ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl;
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

  public IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

